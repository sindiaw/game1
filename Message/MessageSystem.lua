--[[
	消息系统
--]]


local MsgSystem = class("MsgSystem", function(  )
	return CCNode:create()
end)


--[[
	为了使用 CCNotificationCenter
--]]
function MsgSystem:ctor( oldIns )
	self:retain()  -- 加1保持句柄
	self.m_Listeners = {}  --{eventtype:{handle}}

	if oldIns ~= nil then
		-- 合并
		self.m_Listeners = clone(oldIns.m_Listeners)
		-- 释放
		oldIns:Release()
	end

	-- 切换前后台消息
	local sharedNotifacation = CCNotificationCenter:sharedNotificationCenter()
	sharedNotifacation:registerScriptObserver(self, handler(self, self.Nodification), "APP_ENTER_BACKGROUND")
	sharedNotifacation:registerScriptObserver(self, handler(self, self.Nodification), "APP_ENTER_FOREGROUND")
	sharedNotifacation:registerScriptObserver(self, handler(self, self.Nodification), "APP_MEMORY_WARNING")

	-- 网络改变
	sharedNotifacation:registerScriptObserver(self, handler(self, self.Nodification), "kReachabilityChangedNotification")

	-- 内存不足了
	SyNative.startListenMemoryWarning(function(  )
		SendMessage( MsgID_MemoryWarning )
		g_MemoryDetect:MemoryShortage()
	end)
end

--[[
	@brief 注册消息句柄
	@param msgFID, 一级消息ID 
	@param listener，消息 func(msgFID, msgSID, params)
	@return handle,用于取消注册的句柄
--]]
function MsgSystem:RegisterMessageEvent( msgFID, listener )
	if msgFID ==  nil then
		print("RegisterMessageEvent msgFID 为空")
		return
	end
	local msgIDKey = tostring(msgFID)
    if self.m_Listeners[msgIDKey] == nil then
        self.m_Listeners[msgIDKey] = {}
    end
    local handle = "_LISTENER_HANDLE_" .. tostring(listener)
    self.m_Listeners[msgIDKey][handle] = listener
    return handle
end

--[[
	@brief 取消注册消息句柄
	@param msgFID, 一级消息ID 
	@param key RegisterMessageEvent 返回值
--]]
function MsgSystem:UnRegisterMessageEvent( msgFID, key )
	if msgFID ==  nil then
		print("UnRegisterMessageEvent msgFID 为空")
		return
	end
	local msgIDKey = tostring(msgFID)
    if self.m_Listeners[msgIDKey] ~= nil then
	    self.m_Listeners[msgIDKey][key] = nil
    end
end

--[[
	@brief 获取一级消息ID
	@param msgSID，二级消息ID
	@param 以及消息ID
--]]
function MsgSystem:GetFID( msgSID )
	local fid = msgSID 

	--print("////fid ===== " ,msgSID)
	while fid >= 100 do
		fid = fid * 0.1
	end
	return math.floor(fid)
end

--[[
	@brief 发送消息
	@param msgFID, 一级消息ID
	@param msgSID, 二级消息ID
--]]
function MsgSystem:SendMessage( msgSID, ... )

	local msgFID = self:GetFID(msgSID)
	local msgIDKey = tostring(msgFID)
	local listenerTable = self.m_Listeners[msgIDKey]
	if listenerTable == nil then
		return
	end
	local listeners = {}
	for _, listener in pairs(listenerTable) do
		listeners[#listeners + 1] = listener
	end
	for i, listener in ipairs(listeners) do
		listener(msgSID, ...)
	end
end

--[[
	切换前后台消息
--]]
function MsgSystem:Nodification( name )
	print("MsgSystem.Nodification = ", name, tostring(self))
	if name == "APP_ENTER_BACKGROUND" then
		self:SendMessage(MsgID_EnterBackground)
		
	elseif name == "APP_ENTER_FOREGROUND" then
		self:SendMessage(MsgID_EnterForeground)
		
		-- 服务器处理，不需要检测 
		-- if (device.platform == "ios" or device.platform == "android" ) and channel.needUpdate then
		-- 	-- 更新
		-- 	g_gameUpdate:CheckUpdate( true )
		-- end

    elseif name == "APP_MEMORY_WARNING" then --收到内存警告

    elseif name == "kReachabilityChangedNotification" then -- 网络改变

	end
end

--[[
	@brief 释放
--]]
function MsgSystem:Release(  )
	CCNotificationCenter:sharedNotificationCenter():removeAllObservers(self)
	self:release()
end


local oldIns = g_MsgSystem 
g_MsgSystem = MsgSystem.new( oldIns )


---------------------------> 外部

--[[
	@brief 发送消息
	@param msgFID, 一级消息ID  delete
	@param msgSID, 二级消息ID
	@param ... 参数,自定义
--]]
function SendMessage( msgSID, ... )
	g_MsgSystem:SendMessage(msgSID, ...)
end


--[[
	消息监听扩展

	使用
	1、MessageEventExtend.extend 扩展对象
	2、self:ListenMessage(msgFID), 监听一个类型的消息
	3、实现 OnMessage(msgSID, ...)  处理消息
	4、self:RemoveMessageListener(msgFID)  取消监听某一类消息
--]]

MessageEventExtend = {}
function MessageEventExtend.extend( object )

	object.msgevent_msgid_hanlder_table = {}
	
	--[[
		@brief 根据 sid 获取 fid
	--]]
	function object:GetFIDWithSID( msgSID )
		return g_MsgSystem:GetFID(msgSID)
	end

	--[[
		@brief 注册消息监听
	--]]
	function object:ListenMessage( msgFID )
		if msgFID == nil then
			print("ListenMessage msgFID 信息为空")
			return
		end
		local handler = g_MsgSystem:RegisterMessageEvent(msgFID, function( msgSID, ... )
			if object.OnMessage then
				object:OnMessage(msgSID, ...)
			end
		end)
		if object.msgevent_msgid_hanlder_table[msgFID] ~= nil then
			return
		end
		object.msgevent_msgid_hanlder_table[msgFID] = handler
	end

	--[[
		@取消注册
	--]]
	function object:RemoveMessageListener( msgFID )
		if msgFID == nil then
			print("RemoveMessageListener msgFID 信息为空")
			return
		end
		g_MsgSystem:UnRegisterMessageEvent(msgFID, object.msgevent_msgid_hanlder_table[msgFID])
	end

	--[[
		@取消所有注册
	--]]
	function object:RemoveAllMessageListener( )
		for k,v in pairs(object.msgevent_msgid_hanlder_table) do
			g_MsgSystem:UnRegisterMessageEvent(k, v)
		end
	end

end