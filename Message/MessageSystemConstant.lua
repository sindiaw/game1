--[[
	消息系统分两级消息句柄，方便区分
	一级消息两位，因此最多有90个
	二级消息前两位为一级消息
--]]


--[[
	一级消息
--]]
MsgID_Device		= 10 		-- 设备消息
MsgID_Factory		= 11 		-- 物体工厂消息，主要是创建对象，删除对象
MsgID_WarScene		= 20 		-- 战斗场景消息

MsgID_MapLoading	= 30 		-- 加载地图
MsgID_MapScene		= 31 		-- 地图场景

-- 网络相关
MsgID_Connect		= 50 		-- 登录消息
MsgID_PlayerInfo 	= 51		-- 玩家信息更新
MsgID_FubenInfo		= 52 		-- 副本信息更新
MsgID_ItemInfo		= 53 		-- 物品信息
MsgID_Mission		= 54 		-- 任务消息
MsgID_Scene 		= 55 		-- 场景或者界面切换
MsgID_Team 			= 56 		-- 组队相关
MsgID_Friends 		= 57 		-- 好友相关
MsgID_Gift			= 58 		-- 礼包
MsgID_Message		= 59 		-- 聊天相关
MsgID_Mail 			= 60 		-- 信件
MsgID_ZhuaGui 		= 61 		-- 猎魔
MsgID_Keju 			= 62 		-- 科举
MsgID_OtherPlayer	= 63 		-- 其他玩家(消息可能比较多,所以单独做一个消息)
MsgID_Pvp			= 64 		-- 竞技场
MsgID_Activity		= 65 		-- 活动
MsgID_WarSetting 	= 66		-- 战斗布阵
MsgID_DaYanTa 	 	= 67		-- 九层妖塔
MsgID_ReConnect		= 68 		-- 重连消息
MsgID_MoveScene		= 69		-- 更换场景，移动场景的相关刷新
MsgID_Market		= 70		-- 市场
MsgID_BP 			= 71 		-- 公会
MsgID_BPWar			= 72 		-- 会战
MsgID_PHB 			= 73 		-- 排行榜
MsgID_KeyBoard		= 74 		-- 键盘
MsgID_ChongZhi		= 75		-- 充值
MsgID_Voice 		= 76 		-- 语音
MsgID_Stall         = 77        -- 摆摊
MsgID_Relation 		= 78 		-- 关系
MsgID_StallNew 		= 79 		-- 新市场

MsgID_Zuoqi 		= 80 		-- 御剑
MsgId_TeamHuoBanRefr= 81        -- 组队队长伙伴
MsgId_PK 			= 82 		-- 野外PK
MsgId_Achievement 	= 83 		-- 成就
MsgId_Bible 		= 84 		-- 宝典
MsgId_Func 			= 85 		-- 功能提示
--充值活动
MsgID_RechargeActivity = 86

MsgId_Mine 			= 90 		-- 矿工

MsgId_Laba 			= 93 		-- 喇叭

MsgId_display = 94 --分辨率改变

MsgId_TianTi = 95 --天梯


MsgID_KaPai 	= 96		-- 卡牌
MsgID_Skin	= 97		-- 皮肤
MsgID_JiTan	= 98		-- 皮肤


--[[
	二级消息
--]]

---------------------------------------------------------------↓↓↓↓↓↓↓↓参数↓↓↓↓↓↓↓
--MsgId_display

MsgId_display_change		= 94001
-->MsgID_Device
MsgID_EnterBackground 		= 10001 	-- 退回到后台
MsgID_EnterForeground 		= 10002 	-- 切换到前台
MsgID_MemoryWarning	 		= 10010 	-- 内存警告
MsgID_Key_Back		 		= 10020 	-- 返回键

MsgID_Factory_NewObje 		= 11001     -- 创建了对象           obj
MsgID_Factory_DelObje 		= 11002 	-- 删除了对象           obj

MsgID_WarScene_HpChanged			= 20001		-- 角色hp变化
MsgID_WarScene_MpChanged			= 20002		-- 角色mp变化
MsgID_WarScene_ViewHpMpChanged		= 20003		-- 角色hp mp变化的时候，给界面使用

-- 加载地图
MsgID_MapLoading_Progress 			= 30001 	-- 进度
MsgID_MapLoading_Finished			= 30002		-- 加载完成
MsgID_MapLoading_WillLoad			= 30003		-- 准备加载地图

MsgID_MapScene_ChangedMap			= 31001		-- 玩家切换地图场景  playerId, mapId
MsgID_MapScene_ChangedHide			= 31002		-- 玩家改变隐藏状态  playerId, isHide
MsgID_MapScene_TouchRole			= 31003     -- 点击到玩家		   playerId(nil为取消选中)
-- MsgID_MapScene_CaptainLeave			= 31004		-- 队长离开场景      playerId, teamId
MsgID_MapScene_TouchMapBegan		= 31005     -- 手指触摸地图
MsgID_MapScene_MapZoneChanged		= 31006     -- 地图区域改变，一般用于判断是否在 竞技场   worldId
MsgID_MapScene_AutoRoute			= 31007		-- 触发了自动寻路
MsgID_MapScene_CreateNewPlayer 		= 31008 	-- 创建了新玩家      playerId
MsgID_MapScene_SyncPlayerTypeChaned	= 31009		-- 同屏同步类型改变   type

-- 登录消息
MsgID_LoginResult 			= 50001  	-- 登录结果
MsgID_RegResult 			= 50002  	-- 注册结果
MsgID_ServerTime			= 50003		-- 服务器时间
MsgID_TCP_Event				= 50004		-- tcp连接状态   NMGNET_STATUS_FAILED / NMGNET_STATUS_LOST / NMGNET_STATUS_SUCCEED
MsgID_LoginOut				= 50005		-- DataMgr登出
MsgID_Connect_SendFinished	= 50006 	-- 服务器发包结束
MsgID_LoginWithTokenResult 	= 50007  	-- 用token登录服务器结果  isSucceed
MsgID_HadGetServerList	 	= 50008  	-- 获取到服务器列表
MsgID_HadGetRoleInfoFromSvr	= 50009  	-- 获取到角色列表 {num}
MsgID_HadGetStone	= 50010  	-- 获取灵魂石 {num}


MsgID_Momo_LoginSucceed  	= 50101 	-- 猫玩 登录成功
MsgID_Momo_LoginFailed  	= 50102 	-- 猫玩 登录失败  errorCode, errorMsg
MsgID_Momo_BindPhone 		= 50103 	-- 猫玩 绑定了手机，用户类型改变了
MsgID_Momo_TokenInvalid 	= 50104 	-- 猫玩 token失效，需要注销并重新登录
MsgID_Momo_LogoutSucceed 	= 50105 	-- 猫玩 注销成功，需要退出游戏
MsgID_Momo_LoginViewClosed 	= 50106 	-- 猫玩 登录窗口关闭
-- 渠道相关
MSGID_Channel_LoginSucceed 		= 50121 	-- 渠道 登录成功
MSGID_Channel_LoginFailed 		= 50122 	-- 渠道 登录失败
MSGID_Channel_LoginCannel 		= 50123 	-- 渠道 登录取消
MSGID_Channel_LogoutSucceed 	= 50124 	-- 渠道 登出 成功
MSGID_Channel_LogoutFailed 		= 50125 	-- 渠道 登出 失败
MSGID_Channel_GuestRegistered	= 50126 	-- 渠道 游客注册为正式帐号

MSGID_Channel_PaySucceed 		= 50131 	-- 渠道 充值 成功
MSGID_Channel_PayFailed 		= 50132 	-- 渠道 充值 失败
MSGID_Channel_PayViewClosed		= 50133 	-- 渠道 充值 关闭界面

MSGID_Channel_LogoutNOTUPDATA 	= 50134 	-- 不需要更新


-- 数据中心链接
MsgID_DataServer_ConnSucceed 	= 50201 	-- 链接数据中心成功
MsgID_DataServer_ConnFailed 	= 50202 	-- 链接数据中心 失败
MsgID_DataServer_ConnLost 		= 50203 	-- 链接数据中心 丢失链接
MsgID_DataServer_SendServerList = 50301 	-- 数据中心发送服务器列表
-- 服务器链接 消息
MsgID_GameServer_ConnSucceed 	= 50401 	-- 链接数据中心成功
MsgID_GameServer_ConnFailed 	= 50402 	-- 链接数据中心 失败
MsgID_GameServer_ConnLost 		= 50403 	-- 链接数据中心 丢失链接

-- 玩家信息相关
MsgID_AddHero 						= 51001 	-- 增加英雄           {pid=10001, heroId=1}
MsgID_HeroUpdate					= 51002 	-- 英雄属性刷新        {pid=10001, heroId=1, pro = {property=value}}
MsgID_PetUpdate						= 51003		-- 宠物属性更新        {pid=10001, petId=1, pro = {property=value}}
MsgID_MoneyUpdate					= 51004		-- Fα或者钱币更新	{pid=10001, oldGold = oldGold, newGold = goldNum, oldCoin = oldCoin, newCoin = coinNum}
MsgID_LianYaoSuccess				= 51005		-- 炼妖成功			{pid=10001}
MsgID_ZuoqiUpdate					= 51006		-- 御剑属性更新		{pid=10001, zuoqiId=1, pro = {property=value}}			
MsgID_BoxDataUpdate					= 51007		-- 宝箱数据更新		{pid=10001, pro = {i_nlnum=value,i_nlt=value,i_slnum=value,i_slt=value,}}--pro参数，依次是--普通宝箱剩余免费次数--普通宝箱免费剩余时间--卓越宝箱剩余免费次数--卓越宝箱免费剩余时间
MsgID_WarSettingSuccess				= 51008 	-- 战斗设置成功
MsgID_ArchUpdate					= 51009 	-- 公会成就
MsgID_NewZuoqi						= 51010		-- 新增御剑
MsgID_TiliUpdate					= 51011 	-- 体力更新			{pid=10001, oldTili, newTili, oldBuyTiliNum = oldBuyTiliNum, newBuyTiliNum = num}
MsgID_VIPUpdate						= 51012 	-- vip等级更新		{pid=10001, oldVIP, newVIP,}
MsgID_DeleteHero					= 51013		-- 删除英雄
MsgID_DeletePet						= 51014		-- 删除宠物
MsgID_JiuguanDataUpdate				= 51015		-- 酒馆数据更新		{pid=10001, pro = {}}
MsgID_JiuguanHeroDataUpdate			= 51016		-- 酒馆英雄数据更新	{pid=10001, pro = heroDataList}
MsgID_WarDrugSettingSuccess			= 51017 	-- 战斗吃药设置成功
MsgID_AddPet						= 51018 	-- 增加宠物			{pid=10001, petId=2}
MsgID_HeroSkillExpChange			= 51019 	-- 英雄技能熟练度修改	{pid=10001, newSkillExp，oldSkillExp,skillNo=2}
MsgID_HonourUpdate					= 51020 	-- 荣誉点数
MsgID_RoleAutoAddPointInfo			= 51021		-- 角色自动加点信息 {roleId=1,pointInfo={gg,lx,ll,mj}}
MsgID_DoubleExpUpdate				= 51022 	-- 双倍经验点的修改     {pid,deP,deRestP}
MsgID_SvrOpenLevelInfo				= 51023		-- 服务器等级开放信息  level,time
MsgID_JiuguanOpenListUpdate	 		= 51024		-- 服务器更新酒馆英雄开启的index列表{pid,openList}
MsgID_PetRandomKangUpdate			= 51025 	-- 宠物随机抗性的刷新
MsgID_LocalBpAndJob 				= 51026 	-- 公会职位信息
MsgID_ServerDailyClean 				= 51027 	-- 服务器每日更新时间
MsgID_VIPUpdateAddGold				= 51028  	-- vip等级更新		{pid=10001, oldVIPAddGold, newVIPAddGold,}
MsgID_BpOfferUpdate					= 51029 	-- 剩余公会贡献
MsgID_GuajiUpdate					= 51030 	-- 挂机状态更新		{pid=10001, oldGuajiState = oldGuajiState, newGuajiState = state}
MsgID_Team_LocalIsTeamer			= 51031 	-- 本地玩家是否是队员		是队员true，是队长或没有队伍就false
MsgID_HouliUpdate					= 51032 	-- 活力值更新		{pid=10001, oldVIP, newVIP,}
MsgID_LifeSkillUpdate				= 51033		-- 生活技能等级更新
MsgID_LifeSkillBSDUpdate			= 51034		-- 生活技能饱食度更新
MsgID_LifeSkillWineUpdate			= 51035		-- 生活技能酒类更新
MsgID_LifeSkillFuUpdate 			= 51036 	-- 生活技能符文更新
MsgID_ChengWeiChanged				= 51037		-- 称谓改变了 {pid, }
MsgID_ServerSendAllChengWei			= 51038		-- 服务器返回来所有称谓
MsgID_DeleteOneChengWei				= 51039		-- 删除一个称谓 {cwId}
MsgID_GuajiUpdateAutoAddBsd			= 51040 	-- 挂机自动加饱食度
MsgID_ChengWeiTimeChanged			= 51041 	-- 称谓时间改变。
MsgID_ExtraPetLimitNum				= 51042 	-- 额外的宠物上限
MsgID_ExtraExpFlag 					= 51043 	-- 额外的经验加成标识
MsgID_ChangeWuxingNum				= 51044 	-- 五行转换刷新
MsgID_ExtraExpItemChange			= 51045 	-- 额外的加经验物品列表改变
MsgID_ShopXianGouListChange			= 51046 	-- 限购列表变化
MsgID_HeroMarrySkillExpChange		= 51047 	-- 英雄结婚技能熟练度修改 {skillId = skillId, exp = exp}
MsgID_DeleteZuoqi					= 51048		-- 删除御剑（更换六坐使用）
MsgID_SafetylockDataUpdate			= 51050		-- 安全锁数据更新
MsgID_SafetySetPwdViewCancel		= 51051		-- 安全锁设置密码界面取消
MsgID_RoleInfo 						= 51052 	-- 查看角色信息
MsgID_PetInfo 						= 51053 	-- 查看宠物信息
MsgID_MountInfo 					= 51054 	-- 查看御剑信息
MsgID_RoleInfoRefresh               = 51055     -- 刷新玩家状态 （法宝 或者御剑 ）
MsgID_JifenView						= 51056 	-- 积分按钮的场景
MsgID_JifenViewColse				= 51057     -- 跳转到积分消费时关闭界面
MsgID_FabaoViewColse				= 51058     -- 法宝属性和激活界面的关闭
MsgID_UpdateWupinInformation		= 51059		-- 用于在不关闭界面的情况下更新物品信息
MsgID_CaptainChangeViewColse		= 51060		-- 久未动更换队长的界面关闭
MsgID_RaceWorldDati   				= 51061		-- 世界抢答按钮的显示或隐藏
MsgID_DelZuoqi						= 51062		-- 移除御剑
MsgID_showVipRenzheng				= 51063		-- vip认证图标显示
MsgID_showVipZunXiang				= 51064		-- vip尊享图标显示

MsgID_HeroHead					= 51065 	-- 头像刷新       {pid=10001, heroId=1, pro = {property=value}}


-- 副本信息相关
MsgID_FubenInfo_CatchInfo		= 52001		-- 副本关卡信息
MsgID_FubenInfo_SuperCatchTimes	= 52002		-- 副本精英关卡次数
MsgID_FubenInfo_BaseInfo		= 52003		-- 副本基本信息
MsgID_FubenInfo_UpdateAward		= 52004		-- 副本奖励信息更新
MsgID_FubenInfo_AddOneFubenNPC		= 52005		-- 副本增加副本NPC
MsgID_FubenInfo_DelOneFubenNPC		= 52006		-- 副本删除副本NPC

-- 物品信息相关
MsgID_ItemInfo_AddItem				= 53010		-- 增加背包物品		 itemObjId,itemNum,lType
MsgID_ItemInfo_DelItem				= 53011		-- 删除背包物品		 itemObjId,lType
MsgID_ItemInfo_ChangeItemNum		= 53012		-- 修改背包物品数量	 itemObjId,itemNum,lType
MsgID_ItemInfo_TakeEquip			= 53013		-- 穿上装备			 roleId,itemObjId
MsgID_ItemInfo_TakeDownEquip		= 53014		-- 卸下装备			 roleId,itemObjId
MsgID_ItemInfo_ItemUpdate			= 53015		-- 物品数据修改		 {itemType = itemIns:getTypeId(),itemId = itemIns:getObjId(), pro = proTable, oldPro = oldProTable})
MsgID_ItemInfo_PosClear				= 53016 	-- 清理背包位置		 pos
MsgID_ItemInfo_ItemPackagePosUpdate	= 53017		-- 物品位置修改		 {itemId = itemIns:getObjId(), pos = pos}
MsgID_ItemInfo_FinishedZhenli 		= 53018		-- 整理背包完毕
MsgID_ItemInfo_CangBaoTuFinished	= 53019		-- 藏宝图使用结束
MsgID_ItemInfo_CangBaoTuClose       = 53020     -- 关闭藏宝图奖励界面
MsgID_ItemInfo_ExpandPackageGird	= 53021     -- 购买背包格子
MsgID_ItemInfo_UseChengZhangDan		= 53022     -- 使用成长丹
MsgID_ItemInfo_JiaYiWanDataUpdate 	= 53023		-- 传功丹数据变化
MsgID_ItemInfo_ShowSafeLock 		= 53024		-- 弹出安全锁的框
MsgID_ItemInfo_LIANHUAYULANG        = 53025     -- 	炼化预览 
MsgID_ItemInfo_AffrimPreview		= 53026     --确认属性替换    
MsgID_ItemInfo_DelItemZQYaoping     = 53027     --删除一个御剑物品   
MsgID_ItemInfo_AddDepItem 			= 53028 	-- 添加仓库物品
MsgID_ItemInfo_ChangeDepItemNum 	= 53029		-- 改变仓库物品数量
MsgID_ItemInfo_DepItemUpdate		= 53030		-- 仓库物品数据修改		 {itemType = itemIns:getTypeId(),itemId = itemIns:getObjId(), pro = proTable, oldPro = oldProTable})
MsgID_ItemInfo_DepPosClear			= 53031 	-- 清理仓库位置		 pos
MsgID_ItemInfo_ItemDepPosUpdate		= 53032		-- 仓库位置修改		 {itemId = itemIns:getObjId(), pos = pos}
MsgID_ItemInfo_DelDepItem 			= 53033 	-- 仓库物品删除
MsgID_ItemInfo_ExpandDepGird 		= 53034 	-- 购买仓库格子

-- 任务消息
MsgID_Mission_NewMission			= 54001		-- 新任务增加          {missionId}  --弃用，使用 MsgID_Mission_Common
MsgID_Mission_MissionUpdate			= 54002		-- 任务有更新          {missionId}
MsgID_Mission_MissionCmp			= 54003		-- 任务已完成          {missionId}
MsgID_Mission_MissionDel			= 54004		-- 任务已删除          {missionId}
MsgID_Mission_Common				= 54010		-- 通用，有变更        {newMissionId}
MsgID_Mission_NpcStatusChanged 		= 54011 	-- 任务的NPC状态改变    {self.m_AcceptedMissionId}
MsgID_Mission_NpcView				= 54012     -- npc 任务选择框不关闭改变任务选项
MsgID_Mission_renwuzhuizong         = 54013     -- 任务追踪
MsgID_Mission_xuanshang				= 54014 	-- 任务悬赏
MsgID_Mission_MissionAccept			= 54015     -- 悬赏界面的任务已接受
MsgID_Mission_YabiaoData			= 54016		-- 押镖任务面板数据
MsgID_Mission_ShimenCommon			= 54017		-- 大师任务完成
MsgID_Mission_BangPaiDayCommon		= 54018		-- 公会日常任务完成
	

-- 场景或者界面切换
MsgID_Scene_Fuben_Enter				= 55001 	-- 进入副本
MsgID_Scene_Fuben_Exit				= 55002		-- 离开副本
MsgID_Scene_War_Enter				= 55003 	-- 进入战斗
MsgID_Scene_War_Exit				= 55004		-- 离开战斗(只是“关闭战场”，未必是“战斗结束”) 				warId,warType,isWatch,isReview,warResult
MsgID_Scene_Open_PrivateChat		= 55005		-- 打开私聊界面
MsgID_Scene_NewFriendTip			= 55006		-- 好友界面新提示
MsgID_Scene_SaoDang_Enter			= 55007 	-- 进入扫荡
MsgID_Scene_SaoDang_Exit			= 55008		-- 离开扫荡
MsgID_Scene_WarResult_Enter 		= 55009		-- 战斗总结框打开
MsgID_Scene_WarResult_Exit 			= 55010		-- 战斗总结框关闭
MsgID_Scene_CanGotoGuajiMap			= 55011		-- 请求进入挂机图
MsgID_Scene_MsgBoxSmallMode 		= 55012 	-- 主界面聊天框精简模式
MsgID_Scene_SelChannel 				= 55013 	-- 选择频道消息过滤
MsgID_Scene_UpdateTime 				= 55014 	--更新杀人倒计时
MsgID_Scene_PlotView_Exit 			= 55015 	-- 剧情动画表现完成
MsgID_Scene_Message_close 				= 55016 	-- 选择频道消息过滤
MsgID_Scene_Message_open 				= 55017 	-- 选择频道消息过滤


-- 组队相关
MsgID_Team_NewTeam					= 56001		-- 新增队伍 				teamId, captainId
MsgID_Team_DismissTeam				= 56002		-- 解散队伍				teamId
MsgID_Team_PlayerJoinTeam			= 56003		-- 玩家入队				teamId, pid
MsgID_Team_PlayerLeaveTeam			= 56004		-- 玩家离队				teamId, pid
MsgID_Team_SetCaptain				= 56005 	-- 设置队伍队长			teamId, pid, isCaptain(TEAMCAPTAIN_YES/TEAMCAPTAIN_NO)
MsgID_Team_CaptainChanged			= 56006 	-- 队伍队长变更			teamId, captainId
MsgID_Team_TeamState				= 56007 	-- 队伍组队状态			teamId, pid, state(TEAMSTATE_FOLLOW/TEAMSTATE_LEAVE)
MsgID_Team_AddJoinRequest			= 56009		-- 增加入队申请			
MsgID_Team_DelJoinRequest			= 56010		-- 删除入队申请
MsgID_Team_ClearJoinRequest			= 56011 	-- 清空入队申请
MsgID_Team_HasCheckJoinRequest		= 56012 	-- 查看过所有入队申请
MsgID_Team_NewPromulgateTeam		= 56013 	-- 新发布的组队			teamId,info
MsgID_Team_DelPromulgateTeam		= 56014 	-- 删除发布组队			teamId(队伍解散，立刻删除)
MsgID_Team_UpdatePromulgateTeam		= 56015 	-- 更新发布组队			teamId,info
MsgID_Team_ClearPromulgateTeam		= 56016 	-- 清空发布组队			
MsgID_Team_DelayDelPromulgateTeam	= 56017 	-- 延迟删除发布组队		teamId(队伍满员并且过了发布有效期，延迟删除)
MsgID_Team_PromulgateEffectTeam		= 56018		-- 有效队伍				teamId,info
MsgID_Team_TeamIsFull				= 56019 	-- 组队人数是否已满		true/false
MsgID_Team_IsAutoMatching			= 56020 	-- 自动匹配状态
MsgID_Team_AcceptAutoMatch			= 56021 	-- 发布组队时允许接受自动匹配
MsgID_Team_PlayerOnline				= 56022 	-- 队伍成员的在线离线状态
MsgID_Team_AutoAgreeCaptainRequest 	= 56023 	-- 是否自动接受队长申请的设置
MsgID_Team_FubenAffirm				= 56024		-- 用于是否接受进入副本的确认/取消


-- 好友相关
MsgID_Friends_InitFirendsListByType = 57001 	-- 初始好友列表
MsgID_Friends_AddNewFirend			= 57002 	-- 新增好友 				pid,info
MsgID_Friends_UpdateFirend			= 57003 	-- 更新好友 				pid,info
MsgID_Friends_DeleteFirend			= 57004 	-- 删除好友 				pid
MsgID_Friends_FindPlayerInfo		= 57005 	-- 查找到玩家 			pid,info
MsgID_Friends_QueryPlayerInfo		= 57006 	-- 查寻到玩家 			pid,info
MsgID_Friends_NewFriendRequest		= 57007 	-- 添加好友请求			pid,info
MsgID_Friends_DelFriendRequest 		= 57008 	-- 删除好友请求			pid
MsgID_Friends_PlayerStatus 			= 57009 	-- 好友在线状态
MsgID_Friends_ClearRequest 			= 57010		-- 清空好友请求
MsgID_Friends_FlushBanLv			= 57011		-- 刷新伴侣
MsgID_Friends_FlushUseDaoJuTimes    = 57012     -- 使用道具次数
MsgID_Friends_RecommendFriend    	= 57013     -- 推荐好友       
MsgID_Friends_ReadFriendPrivateMessage   	= 57014     -- 阅读好友私聊信息  

-- 礼包
MsgID_Gift_OnlineRewardUpdate		= 58001		-- 在线奖励刷新了
MsgID_Gift_LevelupRewardUpdate		= 58002		-- 冲级奖励刷新了
MsgID_Gift_CheckinRewardUpdate		= 58003		-- 签到奖励刷新了
MsgID_Gift_AcceptRewardResult		= 58004 	-- 礼包领取结果，目前失败没有回调        giftId, isSucceed(目前固定为true)
MsgID_Gift_OnlineRewardTimesUp		= 58005		-- 在线奖励可以领取
MsgID_Gift_GetGiftOfIdentify		= 58006		-- 领取了验证码奖励
MsgID_Gift_AddExGiftOfIdentify		= 58007		-- 额外的验证码奖励
MsgID_Gift_ShowGiftOfIdentify		= 58008		-- 需要显示的验证码奖励
MsgID_Gift_FestivalRewardUpdate		= 58009		-- 节日礼包奖励刷新了
MsgID_Gift_EventRemindUpdate		= 58010 	-- 提醒标志修改了
MsgID_Gift_FreshGiftUpdate			= 58011 	-- 新手礼包时间点修改
MsgID_Gift_NewTermCheckInUpdate		= 58012		-- 新学期签到数据修改
MsgID_Gift_GuoQingCheckInUpdate		= 58013		-- 国庆签到数据修改
MsgID_Gift_ShouChongUpdate			= 58014		-- 首冲礼包信息
MsgID_Gift_XianQiRentUpdate			= 58015		-- 仙器租赁领取信息
MsgID_Gift_MainUIXianQiGetBtn		= 58016		-- 仙器租赁领取信息
-- 聊天相关
MsgID_Message_PrivateMsg			= 59001		-- 玩家私信				pid,chatpid,msg,msgTime
MsgID_Message_OtherItemInfo			= 59002 	-- 其他玩家的物品		 	playerId,itemId,itemTypeId,itemInfo
MsgID_Message_OtherPetInfo			= 59003 	-- 其他玩家的宠物		 	playerId,petId,petTypeId,petInfo
MsgID_Message_TeamMsg				= 59004		-- 队伍消息				chatpid,msg,msgTime
MsgID_Message_WorldMsg				= 59005 	-- 世界频道消息			chatpid,pInfo,msg,msgTime
MsgID_Message_SysMsg				= 59006 	-- 系统消息				msg,msgTime
MsgID_Message_HelpTip				= 59007 	-- 系统帮助提示			msg
MsgID_Message_NewPromulgateTeam		= 59008		-- 发布新的队伍			msg
MsgID_Message_CommonTip				= 59009		-- 公共提示				msg
MsgID_Message_BangPaiMsg			= 59010 	-- 公会频道消息			chatpid,pInfo,msg,msgTime
MsgID_Message_BangPaiTip 			= 59011 	-- 公会频道提示
MsgID_Message_UpdatePromulgateTeam 	= 59012 	-- 更新聊天窗口的发布组队
MsgID_Message_CD_WorldChannel 		= 59013		-- 世界频道发消息的cd
MsgID_Message_CD_BpChannel 			= 59014		-- 公会频道发消息的cd
MsgID_Message_NewSendMsg			= 59015 	-- 最新发送的消息
MsgID_Message_KuaiXunTip			= 59016 	-- 快讯提示			msg
MsgID_Message_XinXiTip				= 59017 	-- 信息提示			msg
MsgID_Message_LocalLeaveWord		= 59018 	-- 本地玩家留言
MsgID_Message_RandomLeaveWord		= 59019 	-- 随机玩家留言
MsgID_Message_XingYunDaTi			= 59020     -- 幸运答题
MsgID_Message_JuBaoWanJia			= 59021     -- 举报玩家
MsgID_Message_LocalMsg				= 59022		-- 当前频道
MsgID_Message_CD_LocalChannel		= 59023		-- 当前频道发送消息cd
MsgID_Message_LocalChannelSysMsg	= 59024		-- 当前频道系统消息
MsgID_Message_LeftZoom 				= 59026 	-- 左边的缩放
MsgID_Message_Sociality_Send		= 59027     -- 聊天频道发送信息
MsgID_Message_XiyouJingling			= 59028		-- 西游精灵的信息

MsgID_Message_XiaoLaBa				= 93010     -- 小喇叭



-- 信件
MsgID_Mail_AllMailLoaded 			= 60001 	-- 新建全部加载了     nil
MsgID_Mail_MailUpdated 				= 60002 	-- 有邮件更新了     mailId
MsgID_Mail_MailDeleteed 			= 60003 	-- 有邮件被删除了   mailId
MsgID_Mail_MailHasNewMail 			= 60004 	-- 有未读邮件

-- 猎魔
MsgID_ZhuaGui_CountUpdate			= 61001 	-- 天数更新   cnt
MsgID_ZhuaGui_DataUpdate			= 61002 	-- 数据更新   pid(如果为nil，表示可能有多个更新)

-- 其他玩家
MsgID_OtherPlayer_AddNewPlayer		= 63001		-- 新增玩家
MsgID_OtherPlayer_UpdatePlayer		= 63002 	-- 更新其他玩家

--科举
MsgID_Keju_StatusChanged 			= 62001 	-- 科举状态改变了
MsgID_Keju_HadGetRank 				= 62002 	-- 科举排名到了 rank
MsgID_Keju_EachQuetionAnswer		= 62003     -- 科举每次答题返回结果

--比武
MsgID_Pvp_BaseInfo					= 64001		-- 竞技场基本信息
MsgID_Pvp_NewRankInfo				= 64002		-- 新的排行榜数据
MsgID_Pvp_ClearRankList				= 64003		-- 清空排行榜
MsgID_Pvp_WarCompleted				= 64004 	-- 完成竞技场比武
MsgID_Pvp_BWCFightNum				= 64005 	-- 竞技场比武次数修改
MsgID_Pvp_RankInfoFinish 			= 64006 	-- 排行榜分段数据发送完毕
MsgID_Pvp_RankIsOk 					= 64007		-- 排行榜数据有效

-- 活动
MsgID_Activity_Updated				= 65001     -- 活动更新了
MsgID_Activity_TiantingExpUpdate	= 65002     -- 天庭经验值更新了
MsgID_Activity_ExitTianting 		= 65003 	-- 天庭任务退出副本
MsgID_Activity_LeiTaiStatus			= 65004 	-- 擂台比武的活动状态
MsgID_Activity_LeiTaiUpdateReward	= 65005		-- 擂台比武的奖励领取信息
MsgID_Activity_LeiTaiMatching		= 65006		-- 擂台比武的匹配状态
MsgID_Activity_LeiTaiEnemyInfo		= 65007		-- 擂台比武的匹配对手信息
MsgID_Activity_LeiTaiUpdateRankInfo	= 65008 	-- 擂台比武的更新排行
MsgID_Activity_ScheduleData			= 65009 	-- 活动周历
MsgID_Activity_YZDDStatus			= 65010 	-- 紫禁之巅的活动状态
MsgID_Activity_YZDDUpdateInfo		= 65011		-- 紫禁之巅的更新信息
MsgID_Activity_YZDDMatching			= 65012		-- 紫禁之巅的匹配状态
MsgID_Activity_YZDDEnemyInfo		= 65013		-- 紫禁之巅的匹配对手信息
MsgID_Activity_YZDDUpdateRankInfo	= 65014 	-- 紫禁之巅的更新排行
MsgID_Activity_XZSCStatus			= 65015 	--紫禁之巅的活动状态
MsgID_Activity_XZSCMatching			= 65016		--紫禁之巅的匹配状态
MsgID_Activity_XZSCEnemyInfo		= 65017		--紫禁之巅的匹配对手信息
MsgID_Activity_XZSCUpdateInfo 		= 65018 	--紫禁之巅的更新信息
MsgID_Activity_DuelQueryInfo		= 65019		--决斗查询玩家信息
MsgID_Activity_DuelStatus			= 65020		--决斗活动状态
MsgID_Activity_DuelReady			= 65021 	--决斗准备状态
MsgID_Activity_DuelNewPlayer 		= 65022 	--决斗新加入的玩家
MsgID_Activity_DuelPlayerQuit 		= 65023 	--决斗退出的玩家
MsgID_Activity_ZhaoQinLeaveWords 	= 65024 	--七夕征婚留言       
MsgID_Activity_ZhaoQinDelLeaveWords = 65025 	--七夕征婚留言    
MsgID_Activity_FinishCountUpdate  	= 65026 	-- 活动完成次数刷新
MsgID_Activity_GuoQingStatus	  	= 65027 	-- 国庆活动状态更新
MsgID_Activity_MEIRIPK	  	= 65028 	-- 更新每日pk次数

-- 战斗布阵
MsgID_WarSetting_Change			 	= 66001		-- 战斗布阵设置成功

-- 九层妖塔
MsgID_DaYanTa_ExChangeTime			= 67001	 	-- 九层妖塔的兑换次数改变  exchangeTimes,maxExchangeTimes

-- 重连
MsgID_ReConnect_Ready_ReLogin		= 68001		-- 准备重新自动登录
MsgID_ReConnect_ReLogin				= 68002		-- 重连检测进行了重新自动登录，重新获取全部初始数据
MsgID_ReConnect_PingSuccess			= 68003		-- 重连检测时ping通了服务器，不用重新登录

-- 更换场景，移动场景的相关刷新
MsgID_Richtext_GotoNPC				= 69001		--跑到npc(richtext) 参数：npcId
MsgID_Richtext_GotoTelP				= 69002 	--更换地图(richtext) 参数：teleporterId传送点
MsgID_ItemSource_Jump				= 69004		--从物品来源跳转到其他界面 参数：para,其中para[1] = Item_Source_JumpTo_XXX

MsgID_Market_PriceUpdate			= 70001 	-- 价格信息更改 itemTypeId,price,markup

-- 公会
MsgID_BP_LocalInfo 					= 71001 	-- 更新本地玩家公会信息
MsgID_BP_BpList						= 71002		-- 公会列表
MsgID_BP_Tenet						= 71003 	-- 公会宗旨
MsgID_BP_Num						= 71004 	-- 服务器公会数量
MsgID_BP_Detail						= 71005 	-- 公会详情
MsgID_BP_MemberList					= 71006		-- 公会成员列表
MsgID_BP_RequestList				= 71007		-- 公会申请列表
MsgID_BP_DeleteRequest				= 71008 	-- 删除请求
MsgID_BP_RquestNum					= 71009 	-- 总的公会申请数量
MsgID_BP_BanWordTime 				= 71010 	-- 剩余禁言时间
MsgID_BP_UpdateMemberInfo 			= 71011 	-- 更新公会成员信息
MsgID_BP_PlaceNumInfo 				= 71012 	-- 公会各职位人数
MsgID_BP_OldInfoIsInvalid 			= 71013 	-- 旧数据错误
MsgID_BP_BpDlgIsInvalid				= 71014 	-- 公会界面关闭
MsgID_BP_Notice 					= 71015 	-- 公会公告
MsgID_BP_DeleteNotice 				= 71016 	-- 删除公告
MsgID_BP_DeleteBpMember 			= 71017 	-- 删除公会成员
MsgID_BP_AgreeAnyMember				= 71018 	-- 同意了任何玩家的请求
MsgID_BP_TotemInfo	 				= 71019 	-- 设置守护信息
MsgID_BP_UnlockTotemTimes 			= 71020 	-- 今日解锁守护次数
MsgID_BP_PaoShang 					= 71021 	-- 今日八方来财次数
MsgID_BP_AddNewMemberInfo 			= 71022 	-- 新增公会成员信息
MsgID_BP_ChangeMemberPos 			= 71023 	-- 变换成员的位置
MsgID_BP_ClearMemberList 			= 71024 	-- 清空成员列表
MsgID_BP_NewBpJoinRequest			= 71025 	-- 新增入帮申请
MsgID_BP_PaoShang_DelItem			= 71026     -- 删除公会商人对应的Item
MsgID_BP_OtherPlayerBPInfo			= 71027 	-- 其他玩家的公会信息
MsgID_BP_BpWarJoinTip				= 71028 	-- 会战报名提示
MsgID_BP_RedEnvelopeList 			= 71029 	-- 红包列表
MsgID_BP_UpdateRedEnvelopeList  	= 71030		-- 更新红包列表
MsgID_BP_NewRedEnvelope 			= 71031 	-- 新红包
MsgID_BP_DelRedEnvelope 			= 71032 	-- 标识已领取红包
MsgID_BP_ExpTime 					= 71033 	-- 公会经验丹时间

MsgID_BP_MyWarInfo					= 71034     --我的公会战绩列表
MsgID_BP_WarInfo                    = 71035     --公会战绩

MsgID_BP_GetMine                    = 71036     --公会矿钻
MsgID_BP_GetWanMine                    = 71037     --玩家获取会费
MsgID_BP_TenetMine						= 71038 	-- 公会宗旨下矿钻


-- 会战
MsgID_BPWar_State 					= 72001 	-- 服务器会战状态
MsgID_BPWar_LeftTime 				= 72002 	-- 剩余时间(如果是在准备状态，则为开始倒计时；如果是在开始状态，则为会战剩余时间)
MsgID_BPWar_AttackName 				= 72003 	-- 攻方公会名称
MsgID_BPWar_AttackTili 				= 72004 	-- 攻方体力
MsgID_BPWar_DefendName 				= 72005 	-- 守方公会名称
MsgID_BPWar_DefendTili 				= 72006 	-- 守方体力
MsgID_BPWar_ItemNum 				= 72007 	-- 地图宝物
MsgID_BPWar_CountDown				= 72008		-- 会战倒计时
MsgID_BPWar_ProtectCountDown		= 72009		-- 会战保护倒计时
MsgID_BPWar_YZStatusChange 			= 72010 	-- 约战状态改变
MsgID_BPWar_YZResult 				= 72011 	-- 返回约战结果

-- 排行榜
MsgID_PHB_ClearRankList				= 73001		-- 清空排行榜
MsgID_PHB_NewRankInfo				= 73002		-- 新的排行榜数据
MsgID_PHB_RankIsOk					= 73003		-- 排行榜数据有效
MsgID_PHB_RankIsFinished			= 73004		-- 排行榜数据发送完了
MsgID_PHB_UpdateSelfData			= 73005		-- 排行榜自己的数据修改 -- {bType=bType,num=num,index=index}

-- 键盘
MsgID_KeyBoard_SysShow 				= 74001 	-- 系统键盘展示
MsgID_KeyBoard_EmotionShow 			= 74002 	-- 表情键盘展示

-- 充值
MsgID_ChongZhi_Open					= 75001		-- 是否能充值修改
MsgID_ChongZhi_ItemListUpdate		= 75002		-- 充值列表修改
MsgID_ChongZhiFanli_Update			= 75003 	-- 充值奖励返利列表修改
MsgID_MAIL_ChongZhiFanli_Update		= 75004 	-- 充值返利（邮件多加10%那种）
MsgID_PaiMaiShenShouUpdate			= 75005 	-- 拍卖神兽数据修改
MsgID_MAIL_XiaoFeiFanli_Update		= 75006 	-- 消费返利（邮件加消费额的10%那种）
MsgID_XianQiSuiPian_Update			= 75007 	-- 赠送仙器碎片

-- 语音
MsgID_Voice_Play 					= 76001 	-- 开始播放语音
MsgID_Voice_Stop 					= 76002		-- 结束播放语音

-- 摆摊
MsgID_Stall_UpdateBaseData			= 77001		-- 摆摊基础数据刷新
MsgID_Stall_GetOneDirData			= 77002		-- 获取完一个分类的数据  -- {dirKey = dirKey}
MsgID_Stall_UpdateOneGood			= 77003		-- 更新一个货物的数据  -- {goodId = goodId,dirKey = dirKey}
MsgID_Stall_DelOneGood				= 77004		-- 删除一个货物的数据
MsgID_Stall_StallOneGood			= 77005		-- 上架一个货物的数据
MsgID_Stall_UpdateBaitanTimeData	= 77006		-- 刷新时间变化
MsgID_Stall_GoodsChange				= 77007		-- 摆摊物品有改变
MsgID_Stall_UpdateOneKindGoods		= 77008 	-- 角色的物品变化，刷新摆摊中该类物品的状态
MsgID_Stall_UpdateIsSellingFlag		= 77009 	-- 一键收取开始或结束
MsgID_Stall_UpdateSearchResult		= 77010	    -- 搜索商品结果更新



-- 新摆摊
MsgID_StallNew_UpdateBaseData			= 79001		-- 摆摊基础数据刷新
MsgID_StallNew_GetOneDirData			= 79002		-- 获取完一个分类的数据  -- {dirKey = dirKey}
MsgID_StallNew_UpdateOneGood			= 79003		-- 更新一个货物的数据  -- {goodId = goodId,dirKey = dirKey}
MsgID_StallNew_DelOneGood				= 79004		-- 删除一个货物的数据
MsgID_StallNew_StallOneGood			= 79005		-- 上架一个货物的数据
MsgID_StallNew_UpdateBaitanTimeData	= 79006		-- 刷新时间变化
MsgID_StallNew_GoodsChange				= 79007		-- 摆摊物品有改变
MsgID_StallNew_UpdateOneKindGoods		= 79008 	-- 角色的物品变化，刷新摆摊中该类物品的状态
MsgID_StallNew_UpdateIsSellingFlag		= 79009 	-- 一键收取开始或结束
MsgID_StallNew_UpdateSearchResult		= 79010	    -- 搜索商品结果更新


---天梯
MsgID_TianTi_GetConfig		= 95001	    -- 天梯数据
 
MsgID_TianTi_JoinMatch		= 95002	    -- 加入到匹配队列
MsgID_TianTi_MatchResults		= 95003	    -- 战斗前
MsgID_TianTi_MatchShiFou		= 95004	    -- 是否进入战斗
MsgID_TianTi_QUXIAOMatch		= 95005	    -- 取消战斗
MsgID_TianTi_Rank		= 95006	    -- 排行榜
MsgID_TianTi_OKBattle		= 95007	    -- 收到对方确认战斗
MsgID_TianTi_Record		= 95008	    -- 战斗记录数据
MsgID_TianTi_Result		= 95009	    -- 战斗结算
MsgID_TianTi_MatchNum		= 95010	    -- 匹配次数
MsgID_TianTi_Stone		= 95011	    -- 灵魂石

MsgID_TianTi_PETLIST		= 95012    -- 获取宠物
MsgID_TianTi_HUOLIST		= 95013	    -- 获取伙伴
MsgID_TianTi_HONER		= 95014	    -- 荣誉值

MsgID_TianTi_HONERBILI		= 95015	    -- 荣誉值

MsgID_TianTi_HONERWIN		= 95016	    -- 荣誉值


MsgID_KaPai_INIT=96001 --初始状态
MsgID_KaPai_REFRESH=96002 --刷新状态
MsgID_KaPai_Confirmation=96005 --确认状态

MsgID_KaPai_FLOP=96003 --翻牌状态
MsgID_KaPai_AWARD=96004 --奖励状态
MsgID_KaPai_EQUIP=96006 --装备随机数据


MsgID_Skin_Open=97001--获得皮肤配置
MsgID_Skin_EXD=97002--兑换
MsgID_Skin_HE=97003--合成
MsgID_Skin_HZ=97004--换装



MsgID_JiTan_DATA=98001--数据
MsgID_JiTan_jilu=98002--数据
MsgID_JiTan_jilushu=98003--数据


MsgID_Mine_config	= 90001 	-- 获取矿工配置
MsgID_Mine_go		= 90002	    -- 挖矿
MsgID_Mine_SHUXIN		= 90003	    -- 挖矿





--交互关系
MsgID_Relation_HuaCheDataUpdate		= 78001		--花车巡游数据变化，开始或者结束，或者上线发
MsgID_Relation_All_Sure				= 78002		--全员确认

MsgID_Zuoqi_Info 					= 80001 	--御剑信息
MsgID_Zuoqi_stateChange             = 80002     --上下御剑 ，只针对主角
MsgID_Zuoqi_stateChange_zuoqiShow   = 80003     --上下御剑 ，只针对御剑界面切换
MsgID_Zuoqi_stateChange_reName      = 80004     --御剑改名
MsgID_Zuoqi_map_upAndDown           = 80005     --地图御剑上下
MsgID_Zuoqi_canzhan					= 80006     --御剑参战
MsgID_Zuoqi_BaseViewClose			= 80007		--用于关闭

MsgID_Kill_UpdateTime 				= 82001 	--更新杀人倒计时
MsgID_Wanted_UpdateTime 			= 82002 	--更新杀人倒计时

MsgId_Achievement_Info 				= 83001 	--成就信息

MsgId_Bible_Info 					= 84001 	--宝典
MsgId_All_Bible_Info 				= 84002 	--可领取奖励数据

MsgId_Func_Info 					= 85001 	-- 功能提示

--充值活动
MsgID_RechargeActivity_Updata_Choujiang	= 86001 -- 抽奖信息更新
MsgID_RechargeActivity_Updata_Bank = 86002 --大唐钱庄
MsgID_RechargeActivity_Updata_bankInvest = 86003 --钱庄投资状态
MsgID_RechargeActivity_Updata_bankReward = 86004 --钱庄奖励状态




MsgID_RechargeActivity_init_bankFuli = 86005 --福利初始信息
MsgID_RechargeActivity_Updata_bankFuli = 86006 --福利更新

MsgID_RechargeActivity_init_hd = 86007 --hd初始信息
MsgID_RechargeActivity_Updata_hd = 86008 --hd更新

MsgID_RechargeActivity_Updata_moneyTree = 86009 --摇钱树更新
MsgID_RechargeActivity_Updata_moneyTreeReward = 86010 --摇钱树奖励更新

MsgID_RechargeActivity_Choujiang_one	= 86011 -- 抽奖一次
MsgID_RechargeActivity_Choujiang_five	= 86012 -- 抽奖五次
MsgID_RechargeActivity_Choujiang_NEW	= 86013 -- 新抽奖信息

MsgID_RechargeActivity_Updata_RedPointTip_fuli	= 86098 -- fuli红点提示
MsgID_RechargeActivity_Updata_RedPointTip	= 86099 -- 红点提示