repeat task.wait() until game:IsLoaded()

local LoadDelay = math.max(tonumber(_G.HSKaitunLoadDelaySeconds) or 10, 0)

if not _G.HSKaitunGameLoadDelayDone then
	_G.HSKaitunGameLoadDelayDone = true
	task.wait(LoadDelay)
end

local Array = {
	Config = {
		AllowedPlaceIds = {
			[106600795455627] = true,
			[6918802270] = true,
			[14979402479] = true,
			[99664616626491] = true,
		},
		PlaceId = {
			Source = 106600795455627,
			Target = 6918802270,
			World1 = 6918802270,
			World2 = 14979402479,
			World3 = 99664616626491,
		},
		ClickPlay = true,
		AutoRedeemCode = true,
		AutoPlaytimeRewards = true,
		PlaytimeRewardsCheckDelay = 5,
		PlaytimeRewardsClickDelay = 0.2,
		PlaytimeRewardsOpenPanel = true,
		PlaytimeRewardsRemoteFirst = true,
		PlaytimeRewardMaxIndex = 10,
		AutoQuestRewards = true,
		QuestRewardsCheckDelay = 5,
		QuestRewardsClickDelay = 0.2,
		QuestRewardsOpenPanel = false,
		AutoStats = {
			Enabled = true,
			StatDelay = 0.25,
			StatLoopDelay = 1,
			StatChunk = 50,
			StatMax = 4500,
			Ratio = {
				Combat = 80,
				Defense = 20,
			},
		},
		AutoBlackLeg = {
			Enabled = true,
			StyleName = "Black Leg",
			FallbackStyleName = "Combat",
			RequiredLevel = 250,
			RequiredBeli = 50000,
			CheckDelay = 5,
			BuyRetryDelay = 3,
			BuyTimeout = 20,
			EquipDelay = 0.35,
			NpcLoadTimeout = 10,
			NpcLoadDelay = 0.5,
			NpcCFrame = CFrame.new(-5291.95166015625, 54.457332611083984, 1936.6304931640625),
			NpcOffset = CFrame.new(0, 4, -6),
		},
		AutoHaki = {
			Enabled = true,
			RequiredLevel = 350,
			RequiredBeli = 100000,
			BuyRetryDelay = 3,
			CheckDelay = 3,
			BuyTimeout = 26,
			BuyDelay = 0.75,
			LoadHoldTime = 1.2,
			UseBeforeAttack = true,
			UseCooldown = 0.8,
			UseDelay = 0.12,
			BusoLevelName = "1",
			BusoNpcCFrame = CFrame.new(-2745.901123046875, 101.63304901123047, 2251.0966796875),
			BusoLoadCFrames = {
				CFrame.new(-2472.894775390625, 55, 2253.22705078125),
				CFrame.new(-2722.894775390625, 55, 2253.22705078125),
				CFrame.new(-2972.894775390625, 55, 2253.22705078125),
				CFrame.new(-2679.924560546875, 45, 2042.1256103515625),
			},
		},
		Sea2Quest = {
			Enabled = true,
			RequiredLevel = 2200,
			RequiredSwordName = "Shusui",
			CheckDelay = 3,
			RetryDelay = 4,
			WaitInstanceTimeout = 12,
			WaitUnlockTimeout = 8,
			MoveOffset = Vector3.new(0, 3, 0),
			ScrollModelName = "Poneglyph Scroll",
			ScrollRemoteName = "Pick",
			TeleporterFolderName = "Sea Teleporter",
			TeleporterModelName = "Sea 2",
			UnlockRemoteName = "UnlockSea",
			TeleportRemoteName = "Teleport",
		},
		World2AutoFarm = {
			Enabled = true,
			ScriptUrls = {
				"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/Haze%20Sea2.lua",
				"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/Haze%20Sea2.lua",
			},
			ScriptPaths = {
				"Haze Seas/Haze Sea2.lua",
				"Haze Seas\\Haze Sea2.lua",
			},
			DirectLoadstring = true,
			PreferTool = "Shusui",
			RequirePreferTool = true,
			AutoRefundStats = true,
			RefundStatsCode = "STATREFUND",
			StatOrder = {
				"Sword",
				"Defense",
				"Fruit",
			},
			ForceFarmLevelEnabled = false,
		},
		QueueUrls = {
			"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/HS%20Kaitun.lua",
			"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/HS%20Kaitun.lua",
			"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/Haze%20Seas/HS%20Kaitun.lua",
			"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/Haze%20Seas/HS%20Kaitun.lua",
		},
		World3Shrine = {
			Enabled = true,
			PromptObjectText = "Shrine of Three Swords",
			PromptActionText = "Interact",
			RequiredMastery = 300,
			CheckDelay = 3,
			RetryDelay = 4,
			SearchDepth = 12,
			MoveHeight = 3,
			MoveDistance = 4,
			AcceptTimeout = 4,
			RequiredSwords = {
				"Shusui",
				"Enma",
				"Zenith",
			},
			RewardNames = {
				"Three Swords",
				"Three Sword",
				"3 Swords",
				"3 Sword",
				"Three Sword Style",
				"Santoryu",
			},
		},
		SwordName = "Combat",
		SearchPlayDelay = 0.5,
		SearchPlayTimeout = 60,
		RedeemDelay = 0.35,
		RedeemTimeout = 30,
		FirstBuySwordTimeout = 6,
		BuySwordDelay = 0.75,
		BuySwordTimeout = 20,
		WaitToolTimeout = 10,
		WorldReadyTimeout = 15,
		BypassTeleport = true,
		BypassTeleportMode = "Velocity",
		BypassTeleportNoClip = true,
		BypassTeleportRestoreCollision = true,
		BypassTeleportSpeed = 1200,
		BypassTeleportMaxStep = 80,
		BypassTeleportStepDelay = 0.02,
		BypassTeleportSettleDelay = 0.12,
		BypassTeleportMotorHeight = 8,
		BypassTeleportMotorWait = 0.2,
		BypassTeleportMotorAnchored = true,
		BypassTeleportFinalSnap = true,
		BypassTeleportFinalSnapDistance = 12,
		BypassTeleportFallback = false,
		BypassTeleportVelocitySpeed = 2200,
		BypassTeleportVelocityReachDistance = 8,
		BypassTeleportVelocityTimeout = 8,
		BypassTeleportVelocityTimeoutBuffer = 1,
		BypassTeleportVelocityStepDelay = 0.03,
		BypassTeleportVelocityMaxForce = 100000000,
		BypassTeleportVelocityPower = 12500,
		SwordSellerOffset = CFrame.new(0, 4, -6),
		AutoFarm = {
			Enabled = true,
			StartDelay = 1,
			LoopDelay = 0.08,
			SearchMobDelay = 0.45,
			TargetRefreshDelay = 0.75,
			QuestRetryDelay = 2,
			LevelReadyTimeout = 30,
			LevelReadyPollDelay = 0.25,
			LevelOneSettleDelay = 8,
			StartupWaitTimeout = 15,
			ContainerRefreshDelay = 10,
			TeleportDistance = 55,
			DirectLockDistance = 140,
			SmoothTravel = true,
			FastTravel = true,
			TravelSpeed = 650,
			TravelStepDelay = 0.015,
			TravelMaxStep = 22,
			SafePositionFloor = -10000,
			PreferTool = "Combat",
			PreferMelee = true,
			MobSpawnProbeRandomScan = true,
			MobSpawnProbeTeleportScan = true,
			MobSpawnProbeMoveDelay = 0.75,
			MobSpawnProbeBurstCount = 8,
			MobSpawnProbeSettleDelay = 0.22,
			MobSpawnProbeIdleDelay = 1.5,
			MobSpawnProbeRetryDelay = 0.45,
			EquipRetryCount = 6,
			EquipRetryDelay = 0.12,
			BackpackWait = 1,
			NoClip = true,
			QuestAcceptDelay = 0.25,
			QuestAcceptAttempts = 16,
			QuestAcceptRetryDelay = 0.15,
			QuestCacheRefresh = 30,
			MobSearchDepth = 7,
			BossFallback = true,
			BossFallbackDelay = 2,
			BossFallbackSameGiver = true,
			BossFallbackSwitchToBoss = true,
			BossFallbackAfterKill = true,
			BossFallbackCheckDelay = 1,
			BossMissingCancelDelay = 4,
			BossFallbackRequireSpawnedMob = true,
			BossFallbackFarmWithoutCancel = false,
			CurrentQuestLock = true,
			BossQuestKillThreshold = 1,
			RyummyShusui = {
				Enabled = true,
				RequiredLevel = 2150,
				BossName = "Ryummy",
				SwordName = "Shusui",
			},
			QuestCancelRetryDelay = 3,
			QuestCancelWait = 1.5,
			HoverHeight = 8,
			HoverBackDistance = 5,
			HoverAimHeight = 3.2,
			BlackLegHoverHeight = 4,
			BlackLegBackDistance = 3.5,
			BlackLegAimHeight = 1.2,
			HoverRepositionDistance = 70,
			HoverVelocityMaxSpeed = 180,
			HoverVelocityGain = 16,
			HoverVelocityMaxForce = 100000000,
			HoverGyroMaxTorque = 100000000,
			HoverLerpAlpha = 0.35,
			HoverStepDelay = 0.035,
			AttackBurst = 2,
			AttackBurstDelay = 0.02,
			AttackDelay = 0.06,
			FireActivatedSignal = true,
			UpdateMousePosition = true,
			BlackLegAutoSkills = true,
			BlackLegSkillInputMode = "Remote",
			BlackLegSkillAimMouse = false,
			BlackLegSkillAimDelay = 0.03,
			BlackLegSkillAimOffset = Vector3.new(0, 1.5, 0),
			BlackLegSkillHoldTime = 0.18,
			BlackLegSkillGlobalDelay = 0.35,
			BlackLegSkillKeys = {
				{ Key = "V", AttackName = "DiabloMode", Cooldown = 9 },
				{ Key = "C", AttackName = "AirBarrage", Cooldown = 8, UseMousePosition = true },
				{ Key = "X", AttackName = "PartyTable", Cooldown = 7 },
				{ Key = "Z", AttackName = "GroundSmash", Cooldown = 6 },
			},
			HitOffset = Vector3.new(0, 1.5, 0),
			BossQuestNames = {
				banditboss = true,
				clownboss = true,
				sharkboss = true,
				bombboss = true,
				kriegboss = true,
				tashii = true,
				kinggorilla = true,
				iceadmiral = true,
				thundergod = true,
				revolutionaryboss = true,
				warden = true,
				vergo = true,
				neptune = true,
				shiryu = true,
				g4boss = true,
				ryummy = true,
			},
		},
		StatusPrint = true,
		PlayBlockWords = {
			"playtime",
			"afk reward",
			"teleport to afk",
		},
		PlaySignals = {
			"Activated",
			"MouseButton1Click",
			"MouseButton1Down",
			"MouseButton1Up",
		},
		Codes = {
			"DRAGONUPD",
			"OKUCHI",
			"Sub2XenoTy",
			"Sub2CaptainMaui",
			"PATCH",
			"FREECASH",
			"RELEASE",
			"FREEGEMS",
			"SUBSCRIBETOHAZEYT",
			"Sub2Nikkolapz",
			"Sub2BrosSiam",
			"Sub2BadiTubes",
			"Sub2BuilderboyTV",
			"HAZESEAS2026",
			"GROUPONLY",
		},
		RefundCodeNames = {
			statrefund = true,
		},
		Debug = true,
	},
	Service = {},
	State = {
		Queued = false,
		PreviousConfig = type(_G.HSKaitun) == "table" and _G.HSKaitun or nil,
		PreviousCleanup = type(_G.HSKaitunCleanup) == "function" and _G.HSKaitunCleanup or nil,
		StartupCodesDone = false,
		CodeResults = {},
		DoingSea2Quest = false,
		Sea2QuestStatus = {},
		Status = {},
	},
	Function = {},
	QueueCode = [=[
_G.HSKaitunReloaded = false

repeat task.wait() until game:IsLoaded()

_G.HSKaitunLoadDelaySeconds = math.max(tonumber(_G.HSKaitunLoadDelaySeconds) or 10, 0)

if not _G.HSKaitunGameLoadDelayDone then
	_G.HSKaitunGameLoadDelayDone = true
	task.wait(_G.HSKaitunLoadDelaySeconds)
end

pcall(function()
	if type(loadstring) ~= "function" then
		return
	end

	_G.HSKaitunQueuePaths = {
		"Haze Seas/HS Kaitun.lua",
		"Haze Seas\\HS Kaitun.lua",
		"HS Kaitun.lua",
	}
	_G.HSKaitunQueueUrls = type(_G.HSKaitunQueueUrls) == "table" and _G.HSKaitunQueueUrls or {
		"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/HS%20Kaitun.lua",
		"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/HS%20Kaitun.lua",
		"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/Haze%20Seas/HS%20Kaitun.lua",
		"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/Haze%20Seas/HS%20Kaitun.lua",
	}
	_G.HSKaitunWorld2QueueUrls = type(_G.HSKaitunWorld2QueueUrls) == "table" and _G.HSKaitunWorld2QueueUrls or {
		"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/Haze%20Sea2.lua",
		"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/Haze%20Sea2.lua",
		"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/Haze%20Seas/Haze%20Sea2.lua",
		"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/Haze%20Seas/Haze%20Sea2.lua",
	}

	local function IsWorld2Source(Source)
		return type(Source) == "string"
			and #Source > 0
			and string.find(Source, "HazeSeasAutoFarm", 1, true) ~= nil
			and string.find(Source, "14979402479", 1, true) ~= nil
	end

	local function FetchUrl(Url)
		local Success, Source = pcall(function()
			return game:HttpGet(Url)
		end)

		if Success and type(Source) == "string" and #Source > 0 then
			return Source
		end

		if type(request) == "function" then
			Success, _G.HSKaitunQueueResponse = pcall(function()
				return request({
					Url = Url,
					Method = "GET",
				})
			end)

			return _G.HSKaitunQueueResponse and _G.HSKaitunQueueResponse.Body or nil
		end

		if type(syn) == "table" and type(syn.request) == "function" then
			Success, _G.HSKaitunQueueResponse = pcall(function()
				return syn.request({
					Url = Url,
					Method = "GET",
				})
			end)

			return _G.HSKaitunQueueResponse and _G.HSKaitunQueueResponse.Body or nil
		end

		return nil
	end

	if type(readfile) == "function" then
		for _, Path in next, _G.HSKaitunQueuePaths do
			if _G.HSKaitunReloaded then
				break
			end

			_G.HSKaitunQueueSuccess, _G.HSKaitunQueueSource = pcall(function()
				return readfile(Path)
			end)

			if _G.HSKaitunQueueSuccess
				and type(_G.HSKaitunQueueSource) == "string"
				and #_G.HSKaitunQueueSource > 0
				and string.find(_G.HSKaitunQueueSource, "HSKaitun", 1, true)
			then
				_G.HSKaitunQueueChunk = loadstring(_G.HSKaitunQueueSource)

				if type(_G.HSKaitunQueueChunk) == "function" then
					_G.HSKaitunReloaded = true
					_G.HSKaitunQueueChunk()
				end
			end
		end
	end

	for _, Url in next, _G.HSKaitunQueueUrls do
		if _G.HSKaitunReloaded then
			break
		end

		_G.HSKaitunQueueSource = FetchUrl(Url)

		if type(_G.HSKaitunQueueSource) == "string"
			and #_G.HSKaitunQueueSource > 0
			and string.find(_G.HSKaitunQueueSource, "HSKaitun", 1, true)
		then
			_G.HSKaitunQueueChunk = loadstring(_G.HSKaitunQueueSource)

			if type(_G.HSKaitunQueueChunk) == "function" then
				_G.HSKaitunReloaded = true
				_G.HSKaitunQueueChunk()
			end
		end
	end

	if not _G.HSKaitunReloaded and game.PlaceId == 14979402479 then
		for _, Url in next, _G.HSKaitunWorld2QueueUrls do
			if _G.HSKaitunReloaded then
				break
			end

			_G.HSKaitunWorld2QueueSource = FetchUrl(Url)

			if IsWorld2Source(_G.HSKaitunWorld2QueueSource) then
				_G.HSKaitunWorld2QueueChunk = loadstring(_G.HSKaitunWorld2QueueSource)

				if type(_G.HSKaitunWorld2QueueChunk) == "function" then
					_G.HSKaitunReloaded = true
					_G.HSKaitunWorld2DirectLoaded = true
					_G.HSKaitunWorld2QueueChunk()
				end
			end
		end
	end
end)
]=],
	World2AutoFarmCode = [=[
repeat task.wait() until game:IsLoaded()

local LoadDelay = math.max(tonumber(_G.HSKaitunLoadDelaySeconds) or 10, 0)

if not _G.HSKaitunGameLoadDelayDone then
	_G.HSKaitunGameLoadDelayDone = true
	task.wait(LoadDelay)
end

if game.PlaceId ~= 14979402479 then
	return
end

local PreviousConfig = type(_G.HazeSeasAutoFarm) == "table" and _G.HazeSeasAutoFarm or nil
local PreviousCleanup = type(_G.HazeSeasAutoFarmCleanup) == "function" and _G.HazeSeasAutoFarmCleanup or nil

_G.HazeSeasAutoFarmRunId = (_G.HazeSeasAutoFarmRunId or 0) + 1
local RunId = _G.HazeSeasAutoFarmRunId

_G.AutoFarmLevel = false

if PreviousConfig then
	PreviousConfig.Enabled = false
end

if PreviousCleanup then
	task.spawn(function()
		pcall(PreviousCleanup)
	end)
end

task.wait(0.75)

if _G.HazeSeasAutoFarmRunId == RunId then
	_G.AutoFarmLevel = true
end

_G.HazeSeasAutoFarm = {}

local Config = _G.HazeSeasAutoFarm

if PreviousConfig then
	for key, value in next, PreviousConfig do
		if key ~= "Enabled" and key ~= "Status" then
			Config[key] = value
		end
	end
end

Config.Enabled = true
Config.RunId = RunId
Config.QueueSea3Source = type(Config.QueueSea3Source) == "string" and Config.QueueSea3Source or ""
Config.HoverHeight = Config.HoverHeight or 8
Config.SwordTopDownHover = Config.SwordTopDownHover ~= false
Config.SwordHoverHeight = math.max(tonumber(Config.SwordHoverHeight) or 5.5, 2)
Config.SwordHoverPitch = math.clamp(tonumber(Config.SwordHoverPitch) or -90, -90, 0)
Config.SwordHoverGyroMaxTorque = math.max(tonumber(Config.SwordHoverGyroMaxTorque) or 100000000, 10000)
Config.SwordHoverGyroPower = math.max(tonumber(Config.SwordHoverGyroPower) or 1000000, 1000)
Config.AttackDelay = math.min(Config.AttackDelay or 0.06, 0.06)
Config.AttackBurst = math.max(2, math.floor(Config.AttackBurst or 2))
Config.AttackBurstDelay = math.min(Config.AttackBurstDelay or 0.02, 0.02)
Config.LoopDelay = math.min(Config.LoopDelay or 0.08, 0.08)
Config.TargetRefreshDelay = Config.TargetRefreshDelay or 0.75
Config.QuestRetryDelay = Config.QuestRetryDelay or 2
Config.ContainerRefreshDelay = Config.ContainerRefreshDelay or 10
Config.MobSearchDepth = Config.MobSearchDepth or 4
Config.MobSpawnProbeMinLevel = Config.MobSpawnProbeMinLevel or 3450
Config.MobSpawnProbeRandomScan = Config.MobSpawnProbeRandomScan ~= false
Config.MobSpawnProbeMoveDelay = math.max(0.35, tonumber(Config.MobSpawnProbeMoveDelay) or 0.75)
Config.MobSpawnProbeTeleportScan = Config.MobSpawnProbeTeleportScan ~= false
Config.MobSpawnProbeBurstCount = math.max(1, math.floor(tonumber(Config.MobSpawnProbeBurstCount) or 8))
Config.MobSpawnProbeSettleDelay = math.max(0.08, tonumber(Config.MobSpawnProbeSettleDelay) or 0.22)
Config.MobSpawnProbeIdleDelay = math.max(0.75, tonumber(Config.MobSpawnProbeIdleDelay) or 1.5)
Config.MobSpawnProbeRetryDelay = math.max(0.2, tonumber(Config.MobSpawnProbeRetryDelay) or 0.45)
Config.TeleportDistance = math.max(Config.TeleportDistance or 55, 55)
Config.DirectLockDistance = math.max(Config.DirectLockDistance or 140, 140)
Config.HoverLockDelay = math.max(tonumber(Config.HoverLockDelay) or 0.12, 0.03)
Config.HoverMoveThreshold = math.max(tonumber(Config.HoverMoveThreshold) or 1.25, 0)
Config.SmoothTravel = Config.SmoothTravel ~= false
Config.FastTravel = Config.FastTravel ~= false
Config.TravelSpeed = math.max(Config.TravelSpeed or 650, 650)
Config.TravelStepDelay = math.min(Config.TravelStepDelay or 0.015, 0.015)
Config.TravelMaxStep = math.max(Config.TravelMaxStep or 22, 22)
Config.SafePositionFloor = Config.SafePositionFloor or -10000
Config.PreferTool = "Shusui"
Config.RequirePreferTool = Config.RequirePreferTool ~= false
Config.PreferMelee = Config.PreferMelee ~= false
Config.SwordMasterySwitch = type(Config.SwordMasterySwitch) == "table" and Config.SwordMasterySwitch or {}
Config.SwordMasterySwitch.Enabled = Config.SwordMasterySwitch.Enabled ~= false
Config.SwordMasterySwitch.TargetMastery = 310
Config.SwordMasterySwitch.BaseSword = "Shusui"
Config.SwordMasterySwitch.SecondarySword = "Enma"
Config.SwordMasterySwitch.FinalSword = "Zenith"
Config.SwordSelector = type(Config.SwordSelector) == "table" and Config.SwordSelector or {}
Config.EnmaBossPriority = type(Config.EnmaBossPriority) == "table" and Config.EnmaBossPriority or {}
Config.EnmaBossPriority.Enabled = Config.EnmaBossPriority.Enabled ~= false
Config.EnmaBossPriority.BossName = tostring(Config.EnmaBossPriority.BossName or "Enma Boss")
Config.EnmaBossPriority.SwordName = tostring(Config.EnmaBossPriority.SwordName or "Enma")
Config.EnmaBossPriority.CheckDelay = math.max(tonumber(Config.EnmaBossPriority.CheckDelay) or 5, 1)
Config.EnmaBossPriority.WorkspaceSearchDepth = math.max(1, math.floor(tonumber(Config.EnmaBossPriority.WorkspaceSearchDepth) or 8))
Config.EnmaBossPriority.StatusPrefix = tostring(Config.EnmaBossPriority.StatusPrefix or "Enma")
Config.EnmaBossPriority.StateName = tostring(Config.EnmaBossPriority.StateName or "farming_enma_boss")
Config.EnmaBossPriority.Reason = tostring(Config.EnmaBossPriority.Reason or "priority_enma_boss")
Config.ZenithBossPriority = type(Config.ZenithBossPriority) == "table" and Config.ZenithBossPriority or {}
Config.ZenithBossPriority.Enabled = Config.ZenithBossPriority.Enabled ~= false
Config.ZenithBossPriority.BossName = tostring(Config.ZenithBossPriority.BossName or "Zenith Boss")
Config.ZenithBossPriority.SwordName = tostring(Config.ZenithBossPriority.SwordName or "Zenith")
Config.ZenithBossPriority.CheckDelay = math.max(tonumber(Config.ZenithBossPriority.CheckDelay) or 5, 1)
Config.ZenithBossPriority.WorkspaceSearchDepth = math.max(1, math.floor(tonumber(Config.ZenithBossPriority.WorkspaceSearchDepth) or 8))
Config.ZenithBossPriority.StatusPrefix = tostring(Config.ZenithBossPriority.StatusPrefix or "Zenith")
Config.ZenithBossPriority.StateName = tostring(Config.ZenithBossPriority.StateName or "farming_zenith_boss")
Config.ZenithBossPriority.Reason = tostring(Config.ZenithBossPriority.Reason or "priority_zenith_boss")
Config.PriorityBosses = type(Config.PriorityBosses) == "table" and Config.PriorityBosses or {}
Config.PriorityBosses[1] = Config.EnmaBossPriority
Config.PriorityBosses[2] = Config.ZenithBossPriority
Config.EquipRetryCount = math.max(1, math.floor(tonumber(Config.EquipRetryCount) or 6))
Config.EquipRetryDelay = math.max(0.03, tonumber(Config.EquipRetryDelay) or 0.12)
Config.BackpackWait = math.max(0, tonumber(Config.BackpackWait) or 1)
Config.NoClip = Config.NoClip ~= false
Config.AntiAfk = Config.AntiAfk ~= false
Config.AntiAfkInterval = Config.AntiAfkInterval or 60
Config.AutoHaki = Config.AutoHaki ~= false
Config.AutoBuso = Config.AutoBuso ~= false
Config.AutoObservationHaki = Config.AutoObservationHaki == true
Config.AutoConquerorHaki = Config.AutoConquerorHaki == true
Config.HakiCheckDelay = Config.HakiCheckDelay or 1
Config.HakiRetryDelay = Config.HakiRetryDelay or 3
Config.BossFallback = Config.BossFallback ~= false
Config.BossFallbackSameGiver = Config.BossFallbackSameGiver ~= false
Config.BossFallbackSwitchToBoss = Config.BossFallbackSwitchToBoss ~= false
Config.BossFallbackCheckDelay = Config.BossFallbackCheckDelay or 1
Config.BossMissingCancelDelay = Config.BossMissingCancelDelay or 4
Config.BossFallbackRequireSpawnedMob = Config.BossFallbackRequireSpawnedMob ~= false
Config.BossFallbackFarmWithoutCancel = Config.BossFallbackFarmWithoutCancel ~= false
Config.BossQuestKillThreshold = Config.BossQuestKillThreshold or 1
Config.QuestCancelRetryDelay = Config.QuestCancelRetryDelay or 3
Config.QuestCancelWait = Config.QuestCancelWait or 1.5
Config.ClickPlay = Config.ClickPlay ~= false
Config.SearchPlayDelay = Config.SearchPlayDelay or 0.5
Config.SearchPlayTimeout = Config.SearchPlayTimeout or 60
Config.PlayBlockWords = Config.PlayBlockWords or {
	"playtime",
	"afk reward",
	"teleport to afk",
}
Config.PlaySignals = Config.PlaySignals or {
	"Activated",
	"MouseButton1Click",
	"MouseButton1Down",
	"MouseButton1Up",
}
Config.AutoStats = Config.AutoStats ~= false
Config.AutoRefundStats = true
Config.RefundStatsCode = tostring(Config.RefundStatsCode or "STATREFUND")
Config.RefundStatsRetryDelay = math.max(tonumber(Config.RefundStatsRetryDelay) or 3, 0.5)
Config.RefundStatsOnceKey = tostring(Config.RefundStatsOnceKey or "__HazeSea2StatsRefundDone")
Config.RefundStatsGuiTimeout = math.max(tonumber(Config.RefundStatsGuiTimeout) or 12, 1)
Config.RefundStatsVerifyDelay = math.max(tonumber(Config.RefundStatsVerifyDelay) or 1.25, 0.25)
Config.StatMax = Config.StatMax or 4500
Config.StatChunk = Config.StatChunk or 50
Config.StatDelay = Config.StatDelay or 0.25
Config.StatLoopDelay = Config.StatLoopDelay or 1
Config.StatOrder = type(Config.StatOrder) == "table" and Config.StatOrder or {
	"Sword",
	"Defense",
	"Fruit",
}
Config.StatOrder[1] = "Sword"
Config.StatOrder[2] = "Defense"
Config.StatOrder[3] = "Fruit"
Config.MobNameAliases = Config.MobNameAliases or {}
Config.MobNameAliases["Enma Boss"] = Config.MobNameAliases["Enma Boss"] or {
	"Enma Boss",
	"EnmaBoss",
}
Config.MobNameAliases["Zenith Boss"] = Config.MobNameAliases["Zenith Boss"] or {
	"Zenith Boss",
	"ZenithBoss",
}
Config.MobNameAliases["Elite Beast"] = Config.MobNameAliases["Elite Beast"] or {
	"Elite Beast",
	"Elite Beasts",
}
Config.MobNameAliases["Beast Pirate"] = Config.MobNameAliases["Beast Pirate"] or {
	"Beast Pirate",
	"Beast Pirates",
}
Config.MobNameAliases["Dragon Boss"] = Config.MobNameAliases["Dragon Boss"] or {
	"Dragon Boss",
	"DragonBoss",
}
Config.PeanutPirateSkipUntilLevel = tonumber(Config.PeanutPirateSkipUntilLevel) or 3200
Config.ForceFarmLevelEnabled = Config.ForceFarmLevelEnabled == true
Config.ForceFarmLevel = tonumber(Config.ForceFarmLevel) or 2850
Config.ForceFarmStartTravel = Config.ForceFarmStartTravel ~= false
Config.ForceFarmStartDelay = math.max(tonumber(Config.ForceFarmStartDelay) or 0.5, 0)
Config.DragonIslandLock = type(Config.DragonIslandLock) == "table" and Config.DragonIslandLock or {}
Config.DragonIslandLock.Enabled = Config.DragonIslandLock.Enabled ~= false
Config.DragonIslandLock.StartLevel = tonumber(Config.DragonIslandLock.StartLevel) or 3050
Config.DragonIslandLock.EndLevel = tonumber(Config.DragonIslandLock.EndLevel) or 4500
Config.DragonIslandLock.SplitStartLevel = tonumber(Config.DragonIslandLock.SplitStartLevel) or 3200
Config.DragonIslandLock.IslandName = tostring(Config.DragonIslandLock.IslandName or "Dragon Island")
Config.DragonIslandLock.AwakenBossName = tostring(Config.DragonIslandLock.AwakenBossName or "Dragon Boss")
Config.DragonIslandLock.AwakenSoulTarget = math.max(1, math.floor(tonumber(Config.DragonIslandLock.AwakenSoulTarget) or 999))
Config.DragonIslandLock.QuestNames = type(Config.DragonIslandLock.QuestNames) == "table" and Config.DragonIslandLock.QuestNames or {
	"Elite Beast",
	"Beast Pirate",
}
Config.DragonIslandLock.QuestNames[1] = "Elite Beast"
Config.DragonIslandLock.QuestNames[2] = "Beast Pirate"
Config.DragonIslandLock.BotCount = math.max(1, math.floor(tonumber(Config.DragonIslandLock.BotCount) or 5))
Config.DragonIslandLock.BotSlot = tonumber(Config.DragonIslandLock.BotSlot)
Config.DragonIslandLock.AutoBotSlotFromServer = Config.DragonIslandLock.AutoBotSlotFromServer ~= false
Config.DragonIslandLock.AutoBotCountFromServer = Config.DragonIslandLock.AutoBotCountFromServer ~= false
Config.DragonIslandLock.SplitFarmTargets = Config.DragonIslandLock.SplitFarmTargets ~= false
Config.DragonIslandLock.SplitQuestTargets = Config.DragonIslandLock.SplitQuestTargets ~= false
Config.DragonIslandLock.AvoidCrowdedTargets = Config.DragonIslandLock.AvoidCrowdedTargets ~= false
Config.DragonIslandLock.TargetClaimDistance = math.max(tonumber(Config.DragonIslandLock.TargetClaimDistance) or 35, 0)
Config.DragonIslandLock.RosterRefreshDelay = math.max(tonumber(Config.DragonIslandLock.RosterRefreshDelay) or 2, 0.25)
Config.DragonIslandLock.QuestRotateDelay = math.max(tonumber(Config.DragonIslandLock.QuestRotateDelay) or 2, 0.25)
Config.DragonIslandLock.WorkspaceSearchDepth = math.max(1, math.floor(tonumber(Config.DragonIslandLock.WorkspaceSearchDepth) or 8))
Config.DragonIslandLock.SuperBossPriority = Config.DragonIslandLock.SuperBossPriority ~= false
Config.DragonIslandLock.SuperBossCheckDelay = math.max(tonumber(Config.DragonIslandLock.SuperBossCheckDelay) or 1, 0.25)
Config.DragonIslandLock.SuperBossSearchDepth = math.max(1, math.floor(tonumber(Config.DragonIslandLock.SuperBossSearchDepth) or 10))
Config.DragonIslandLock.SuperBossWaterProbeSize = math.max(4, tonumber(Config.DragonIslandLock.SuperBossWaterProbeSize) or 12)
Config.DragonIslandLock.SuperBossNames = type(Config.DragonIslandLock.SuperBossNames) == "table" and Config.DragonIslandLock.SuperBossNames or {}
Config.DragonIslandLock.SuperBossNames[1] = "Enma Boss"
Config.DragonIslandLock.SuperBossNames[2] = "Zenith Boss"
Config.DragonIslandLock.SuperBossNames[3] = "Sea Beast"
Config.DragonIslandLock.SuperBossNames[4] = "Seabeast"
Config.DragonIslandLock.SuperBossNames[5] = "Ghost Ship"
Config.DragonIslandLock.SuperBossNames[6] = "Cthulhu"
Config.DragonIslandLock.SuperBossNames[7] = "Kraken"
Config.DragonIslandLock.SuperBossNames[8] = "Leviathan"
Config.DragonIslandLock.SuperBossNames[9] = "Sea King"
Config.DragonIslandLock.SuperBossNames[10] = "Sea Monster"
Config.Sea3Unlock = Config.Sea3Unlock ~= false
Config.Sea3RequiredLevel = 4500
Config.Sea3RequiredGems = 1000
Config.Sea3RequiredSwordMastery = 310
Config.Sea3RequiredSwords = type(Config.Sea3RequiredSwords) == "table" and Config.Sea3RequiredSwords or {}
Config.Sea3RequiredSwords[1] = "Shusui"
Config.Sea3RequiredSwords[2] = "Enma"
Config.Sea3RequiredSwords[3] = "Zenith"
Config.Sea3Gate = type(Config.Sea3Gate) == "table" and Config.Sea3Gate or {}
Config.Sea3InteractDelay = math.max(1, tonumber(Config.Sea3InteractDelay) or 3)
Config.Sea3AcceptTimeout = math.max(1, tonumber(Config.Sea3AcceptTimeout) or 8)
Config.Sea3SpawnRetryDelay = math.max(1, tonumber(Config.Sea3SpawnRetryDelay) or 4)
Config.Sea3TeleportRetryDelay = math.max(1, tonumber(Config.Sea3TeleportRetryDelay) or 4)
Config.Sea3MoveToBattleDelay = math.max(0.25, tonumber(Config.Sea3MoveToBattleDelay) or 0.75)
Config.Sea3PostUnlockTeleport = Config.Sea3PostUnlockTeleport ~= false
Config.Sea3TeleporterNames = Config.Sea3TeleporterNames or {
	"Sea 3",
	"Sea3",
	"Dimensional Sailor",
	"DimensionalSailor",
}
Config.QuestIslandNames = Config.QuestIslandNames or {
	["Samurai"] = "Flower Capital",
	["Strong Samurai"] = "Flower Capital",
	["Shinobi"] = "Flower Capital",
	["Shinobi Elite"] = "Flower Capital",
	["Officer Guard"] = "Udon Prison",
	["Sergeant Guard"] = "Udon Prison",
	["Mammoth Boss"] = "Udon Prison",
	["Graverobber"] = "Snowy Graveyard",
	["Elite Graverobber"] = "Snowy Graveyard",
	["3SS Boss"] = "Snowy Graveyard",
	["Desert Pirate"] = "Desert City",
	["Desert Captain"] = "Desert City",
	["Desert Boss"] = "Desert City",
	["Beast Pirate"] = "Dragon Island",
	["Elite Beast"] = "Dragon Island",
	["MaceV2 Boss"] = "Dragon Island",
	["Shadow Pirate"] = "Shadow Island",
	["Shadow Commander"] = "Shadow Island",
	["Shadow Boss"] = "Shadow Island",
	["Peanut Pirate"] = "Peanut Island",
	["Peanut Captain"] = "Peanut Island",
	["Peanut Boss"] = "Peanut Island",
	["Dough Pirate"] = "Dough Island",
	["Dough Captain"] = "Dough Island",
	["Tree Boss"] = "Dough Island",
	["Chocolate Pirate"] = "Cake Island",
	["Candy Guard"] = "Cake Island",
	["Soul Boss"] = "Cake Island",
	["Baboon"] = "Foggy Castle",
	["Strong Baboon"] = "Foggy Castle",
	["Baboon Boss"] = "Foggy Castle",
	["Snowman"] = "Winter Island",
	["Snow Elite"] = "Winter Island",
	["Snow Boss"] = "Winter Island",
	["Love Warrior"] = "Snake Amazon",
	["Snake Man"] = "Snake Amazon",
	["Love Boss"] = "Snake Amazon",
	["Venom Monster"] = "Venom Island",
	["Venom Poacher"] = "Venom Island",
	["Venom Boss"] = "Venom Island",
}
Config.QuestIslandLevelRanges = Config.QuestIslandLevelRanges or {
	{ Min = 2200, Max = 2350, Island = "Flower Capital" },
	{ Min = 2400, Max = 2500, Island = "Udon Prison" },
	{ Min = 2550, Max = 2650, Island = "Snowy Graveyard" },
	{ Min = 2700, Max = 2800, Island = "Desert City" },
	{ Min = 2850, Max = 2950, Island = "Dragon Island" },
	{ Min = 3000, Max = 3100, Island = "Shadow Island" },
	{ Min = 3150, Max = 3250, Island = "Peanut Island" },
	{ Min = 3300, Max = 3400, Island = "Dough Island" },
	{ Min = 3450, Max = 3550, Island = "Cake Island" },
	{ Min = 3600, Max = 3700, Island = "Foggy Castle" },
	{ Min = 3750, Max = 3850, Island = "Winter Island" },
	{ Min = 3900, Max = 4000, Island = "Snake Amazon" },
	{ Min = 4050, Max = 4150, Island = "Venom Island" },
}
Config.QuestTravelPositions = Config.QuestTravelPositions or {
	[2850] = Vector3.new(7278.083984375, 1120.350830078125, 7403.4150390625),
	["Beast Pirate"] = Vector3.new(7278.083984375, 1120.350830078125, 7403.4150390625),
	["Elite Beast"] = Vector3.new(7278.083984375, 1120.350830078125, 7403.4150390625),
	["Dragon Boss"] = Vector3.new(7278.083984375, 1120.350830078125, 7403.4150390625),
}

local function removeMobAlias(targetName, aliasName)
	local aliases = Config.MobNameAliases[targetName]

	if type(aliases) ~= "table" then
		return
	end

	for index = #aliases, 1, -1 do
		if aliases[index] == aliasName then
			table.remove(aliases, index)
		end
	end

	if #aliases == 0 then
		Config.MobNameAliases[targetName] = nil
	end
end

removeMobAlias("Peanut Pirate", "Peanut Captain")

Config.StrictMobMatching = Config.StrictMobMatching ~= false

Config.Debug = Config.Debug == true
Config.Status = {}

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = nil

pcall(function()
	VirtualInputManager = game:GetService("VirtualInputManager")
end)

local function debugPrint(...)
	if Config.Debug then
		print("[HazeSeas AutoFarm]", ...)
	end
end

local function setStatus(key, value)
	Config.Status[key] = value
	Config.Status.UpdatedAt = tick()
end

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local function isPlayGuiVisible(button, playerGui)
	local current = button

	while current and current ~= playerGui do
		if current:IsA("GuiObject") then
			if not current.Visible or current.AbsoluteSize.X <= 0 or current.AbsoluteSize.Y <= 0 then
				return false
			end
		elseif current:IsA("ScreenGui") and not current.Enabled then
			return false
		end

		current = current.Parent
	end

	return true
end

local function insertGuiText(array, instance)
	local success, text = pcall(function()
		return instance.Text
	end)

	if success and text and text ~= "" then
		table.insert(array, tostring(text))
	end
end

local function addChildText(array, root, depth)
	if depth > 3 then
		return
	end

	insertGuiText(array, root)

	for _, child in next, root:GetChildren() do
		addChildText(array, child, depth + 1)
	end
end

local function getButtonContext(button, playerGui)
	local array = { button.Name }
	local current = button.Parent

	for _ = 1, 5 do
		if not current or current == playerGui then
			break
		end

		table.insert(array, current.Name)
		current = current.Parent
	end

	addChildText(array, button, 0)

	return string.lower(table.concat(array, " "))
end

local function getButtonText(button)
	local success, text = pcall(function()
		return button.Text
	end)

	if success and text then
		return string.lower(tostring(text))
	end

	return ""
end

local function hasPlayBlockedWord(context)
	for _, word in next, Config.PlayBlockWords do
		if string.find(context, string.lower(tostring(word)), 1, true) then
			return true
		end
	end

	return false
end

local function getPlayScore(button, playerGui)
	if not isPlayGuiVisible(button, playerGui) then
		return 0
	end

	local context = getButtonContext(button, playerGui)

	if hasPlayBlockedWord(context) then
		return 0
	end

	local name = string.lower(button.Name)
	local text = getButtonText(button)

	if name == "play" or text == "play" then
		return 100
	end

	if string.find(name, "playbutton", 1, true)
		or string.find(name, "play_button", 1, true)
		or string.find(context, "play button", 1, true)
	then
		return 90
	end

	if (string.find(context, "main menu", 1, true) or string.find(context, "mainmenu", 1, true))
		and string.find(context, "play", 1, true)
	then
		return 75
	end

	if string.match(context, "%f[%a]play%f[%A]") then
		return 60
	end

	return 0
end

local function walkGui(root, callback)
	for _, child in next, root:GetChildren() do
		callback(child)
		walkGui(child, callback)
	end
end

local function findPlayButton(playerGui)
	local bestButton = nil
	local bestScore = 0

	walkGui(playerGui, function(instance)
		if instance:IsA("TextButton") or instance:IsA("ImageButton") then
			local score = getPlayScore(instance, playerGui)

			if score > bestScore then
				bestButton = instance
				bestScore = score
			end
		end
	end)

	return bestButton
end

local function clickPlayButton(button)
	local clicked = false

	if type(firesignal) == "function" then
		for _, signalName in next, Config.PlaySignals do
			pcall(function()
				firesignal(button[signalName])
				clicked = true
			end)
		end
	end

	pcall(function()
		button:Activate()
		clicked = true
	end)

	pcall(function()
		if not VirtualInputManager then
			return
		end

		local position = button.AbsolutePosition
		local size = button.AbsoluteSize
		local x = position.X + (size.X / 2)
		local y = position.Y + (size.Y / 2)

		VirtualInputManager:SendMouseMoveEvent(x, y, game)
		VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, game, 0)
		task.wait(0.05)
		VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, game, 0)
		clicked = true
	end)

	return clicked
end

local function clickPlayWhenReady()
	if not Config.ClickPlay then
		return false
	end

	local startedAt = os.clock()

	setStatus("ClickPlay", "searching")

	repeat
		local playButton = findPlayButton(PlayerGui)

		if playButton then
			local clicked = clickPlayButton(playButton)

			setStatus("ClickPlay", clicked and "clicked" or "failed")
			setStatus("ClickPlayButton", playButton.Name)

			return clicked
		end

		task.wait(math.max(Config.SearchPlayDelay, 0.05))
	until Config.Enabled == false
		or _G.AutoFarmLevel == false
		or _G.HazeSeasAutoFarmRunId ~= RunId
		or os.clock() - startedAt >= Config.SearchPlayTimeout

	setStatus("ClickPlay", "timeout")

	return false
end

task.spawn(clickPlayWhenReady)

local QuestGui = PlayerGui:WaitForChild("QuestGui")
local QuestFunction = QuestGui:WaitForChild("QuestFunction")
local QuestGivers = workspace:WaitForChild("Npc_Workspace"):WaitForChild("QuestGivers")
local NpcZones = workspace:WaitForChild("NPC Zones")

local Connections = {}
local QuestCache = {}
local NpcContainers = {}
local LastQuestCacheBuild = 0
local LastContainerScan = 0
local LastAttack = 0
local LastQuestAttempt = 0
local LastTargetSearch = 0
local LastHoverLock = 0
local LastHoverPosition = nil
local HoverGyro = nil
local LastAntiAfkPulse = 0
local LastHakiCheck = 0
local LastHakiAttempt = {}
local LastBossFallbackCheck = 0
local LastQuestCancelAttempt = 0
local BossMissingSince = 0
local LastSpawnProbeKey = ""
local LastSpawnProbeIndex = 0
local LastSpawnProbeMove = 0
local LastQuestObjectiveStart = 0
local LastQuestProbeAt = 0
local LastQuestAttackObjective = ""
local LastSea3InteractAt = 0
local LastSea3SpawnAt = 0
local LastSea3TeleportAt = 0
local LastStatsRefundAt = 0
local LastPriorityBossCheck = {}
local StatsRefundAttempted = _G[Config.RefundStatsOnceKey] == true
local CurrentQuest = nil
local CurrentTarget = nil
local CurrentTraveling = false
local PreviousObjective = ""
local findMob
local ActiveBossFallbackQuest = nil
local PriorityBoss = {}
Config.DragonIsland = type(Config.DragonIsland) == "table" and Config.DragonIsland or {}
Config.DragonIsland.CachedServerRoster = type(Config.DragonIsland.CachedServerRoster) == "table" and Config.DragonIsland.CachedServerRoster or {}
Config.DragonIsland.LastServerRosterRefresh = tonumber(Config.DragonIsland.LastServerRosterRefresh) or 0
Config.DragonIsland.LastQuestSelectAt = tonumber(Config.DragonIsland.LastQuestSelectAt) or 0
Config.DragonIsland.QuestIndex = math.floor(tonumber(Config.DragonIsland.QuestIndex) or 0)
Config.DragonIsland.LastSuperBossCheck = tonumber(Config.DragonIsland.LastSuperBossCheck) or 0
Config.DragonIsland.SuperBossTarget = nil

local BossQuestNames = {
	["bandit boss"] = true,
	["clown boss"] = true,
	["shark boss"] = true,
	["bomb boss"] = true,
	["krieg boss"] = true,
	["king gorilla"] = true,
	["marine captain"] = true,
	["minotaur"] = true,
	["vice admiral"] = true,
	["ice admiral"] = true,
	["thunder god"] = true,
	["revolutionary boss"] = true,
	["warden"] = true,
	["vergo"] = true,
	["snow harpy"] = true,
	["neptune"] = true,
	["shiryu"] = true,
	["g4 boss"] = true,
	["ryummy"] = true,
	["enma boss"] = true,
	["dragon boss"] = true,
}

local function isRunning()
	return Config.Enabled ~= false and _G.AutoFarmLevel ~= false and _G.HazeSeasAutoFarmRunId == RunId
end

local function getCharacter()
	local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local humanoid = character:FindFirstChildOfClass("Humanoid") or character:WaitForChild("Humanoid")
	local root = character:FindFirstChild("HumanoidRootPart") or character:WaitForChild("HumanoidRootPart")

	return character, humanoid, root
end

local function getValue(parent, name, fallback)
	local value = parent and parent:FindFirstChild(name)

	if value and value:IsA("ValueBase") then
		return value.Value
	end

	return fallback
end

local function getPlayerData()
	return LocalPlayer:FindFirstChild("PlayerData")
end

local function getExperienceFolder()
	local playerData = getPlayerData()

	return playerData and playerData:FindFirstChild("Experience")
end

local function getLevel()
	local experience = getExperienceFolder()

	return getValue(experience, "Level", 1)
end

local function getFarmLevel(level)
	if Config.ForceFarmLevelEnabled and Config.ForceFarmLevel then
		return Config.ForceFarmLevel
	end

	return level
end

local function getPlayerDataValue(name, fallback)
	local playerData = getPlayerData()

	return getValue(playerData, name, fallback)
end

local function isSea3Unlocked()
	return getPlayerDataValue("Sea3Unlocked", false) == true
end

local function getSeaIndex()
	return tonumber(getPlayerDataValue("SeaIndex", workspace:GetAttribute("Sea") or 0)) or 0
end

local function getClientEvent(name)
	local replication = ReplicatedStorage:FindFirstChild("Replication")
	local clientEvents = replication and replication:FindFirstChild("ClientEvents")

	return clientEvents and clientEvents:FindFirstChild(name)
end

local function getStatValue(name)
	local experience = getExperienceFolder()

	return tonumber(getValue(experience, name, 0)) or 0
end

local function getPointValue()
	local experience = getExperienceFolder()

	return math.floor(tonumber(getValue(experience, "Points", 0)) or 0)
end

local RefundStats = {}

function RefundStats.GetPoints()
	local playerData = getPlayerData()

	return math.floor(tonumber(getValue(playerData, "RefundPoints", 0)) or 0)
end

function RefundStats.NeedsReset()
	return getStatValue("Combat") > 0
end

function RefundStats.GetEvent()
	local playerGui = LocalPlayer:FindFirstChild("PlayerGui")
	local statsGui = playerGui and playerGui:FindFirstChild("StatsGui")
	local statFrame = statsGui and statsGui:FindFirstChild("StatFrame")
	local frame = statFrame and statFrame:FindFirstChild("Frame")
	local main = frame and frame:FindFirstChild("Main")
	local refundEvent = main and main:FindFirstChild("RefundEvent")

	return refundEvent and refundEvent:IsA("RemoteEvent") and refundEvent or nil
end

function RefundStats.WaitEvent()
	local startedAt = tick()

	repeat
		local refundEvent = RefundStats.GetEvent()

		if refundEvent then
			return refundEvent
		end

		task.wait(0.25)
	until not isRunning() or tick() - startedAt >= Config.RefundStatsGuiTimeout

	return nil
end

function RefundStats.FireEvent()
	local refundEvent = RefundStats.WaitEvent()

	if not refundEvent then
		setStatus("AutoRefundStats", "missing_refund_event")

		return false
	end

	setStatus("AutoRefundStats", "resetting_stats")
	setStatus("RefundPointsBeforeReset", RefundStats.GetPoints())

	local success, result = pcall(function()
		refundEvent:FireServer()
	end)

	setStatus("AutoRefundStatsResetSuccess", success)
	setStatus("AutoRefundStatsResetResult", tostring(result))
	task.wait(Config.RefundStatsVerifyDelay)
	setStatus("RefundPointsAfterReset", RefundStats.GetPoints())
	setStatus("RefundCombatStat", getStatValue("Combat"))
	setStatus("RefundSwordStat", getStatValue("Sword"))
	setStatus("RefundDefenseStat", getStatValue("Defense"))
	setStatus("RefundFruitStat", getStatValue("Fruit"))

	return success and not RefundStats.NeedsReset()
end

local function refundStatsBeforeUpgrade()
	if not Config.AutoRefundStats then
		return true
	end

	if StatsRefundAttempted and not RefundStats.NeedsReset() then
		setStatus("AutoRefundStats", "already_done")

		return true
	end

	if StatsRefundAttempted and RefundStats.NeedsReset() then
		StatsRefundAttempted = false
		_G[Config.RefundStatsOnceKey] = false
		setStatus("AutoRefundStats", "retry_wrong_stats")
	end

	if tick() - LastStatsRefundAt < Config.RefundStatsRetryDelay then
		return false
	end

	LastStatsRefundAt = tick()
	setStatus("RefundPoints", RefundStats.GetPoints())
	setStatus("RefundCombatStat", getStatValue("Combat"))
	setStatus("RefundSwordStat", getStatValue("Sword"))
	setStatus("RefundDefenseStat", getStatValue("Defense"))
	setStatus("RefundFruitStat", getStatValue("Fruit"))

	if not RefundStats.NeedsReset() then
		StatsRefundAttempted = true
		_G[Config.RefundStatsOnceKey] = true
		setStatus("AutoRefundStats", "not_needed")

		return true
	end

	setStatus("AutoRefundStats", "waiting_remote")

	if RefundStats.GetPoints() <= 0 then
		local claimCode = getClientEvent("ClaimCode")

		if not claimCode then
			setStatus("AutoRefundStats", "missing_remote")

			return false
		end

		setStatus("AutoRefundStats", "claiming_code")
		setStatus("AutoRefundStatsCode", Config.RefundStatsCode)

		local success, responseText, rewards = pcall(function()
			return claimCode:InvokeServer(Config.RefundStatsCode)
		end)

		setStatus("AutoRefundStatsSuccess", success)
		setStatus("AutoRefundStatsResult", tostring(responseText))
		setStatus("AutoRefundStatsRewards", rewards ~= nil)
		task.wait(Config.RefundStatsVerifyDelay)
		setStatus("RefundPointsAfterCode", RefundStats.GetPoints())

		if not success then
			setStatus("AutoRefundStats", "failed")

			return false
		end
	end

	if RefundStats.GetPoints() <= 0 then
		setStatus("AutoRefundStats", "no_refund_points")

		return false
	end

	if not RefundStats.FireEvent() then
		setStatus("AutoRefundStats", "reset_failed")

		return false
	end

	StatsRefundAttempted = true
	_G[Config.RefundStatsOnceKey] = true
	setStatus("AutoRefundStats", "done")

	return true
end

local function buildStatSpendPlan()
	local array = {}
	local pointsLeft = getPointValue()
	local statMax = tonumber(Config.StatMax) or 4500

	if pointsLeft <= 0 then
		return array
	end

	for _, statName in next, Config.StatOrder do
		if pointsLeft <= 0 then
			break
		end

		local current = getStatValue(statName)
		local remainingToMax = math.max(statMax - current, 0)
		local spend = math.min(pointsLeft, remainingToMax)

		if spend > 0 then
			table.insert(array, {
				Name = statName,
				Amount = spend,
			})

			pointsLeft = pointsLeft - spend
		end
	end

	return array
end

local function spendStatPoints()
	local statsEvent = getClientEvent("Stats_Event")
	local plan = buildStatSpendPlan()

	setStatus("StatPoints", getPointValue())
	setStatus("SwordStat", getStatValue("Sword"))
	setStatus("DefenseStat", getStatValue("Defense"))
	setStatus("FruitStat", getStatValue("Fruit"))

	if not statsEvent then
		setStatus("AutoStats", "missing_remote")

		return false
	end

	if #plan == 0 then
		setStatus("AutoStats", getPointValue() > 0 and "maxed" or "waiting_points")

		return false
	end

	setStatus("AutoStats", "spending")

	for _, entry in next, plan do
		local remaining = entry.Amount

		while remaining > 0 and isRunning() and Config.AutoStats do
			local chunk = math.min(remaining, Config.StatChunk, getPointValue())

			if chunk <= 0 then
				break
			end

			local success, result = pcall(function()
				statsEvent:FireServer(entry.Name, chunk)
			end)

			if not success then
				setStatus("AutoStats", "failed")
				setStatus("AutoStatsError", tostring(result))

				return false
			end

			setStatus("LastStatName", entry.Name)
			setStatus("LastStatAmount", chunk)
			setStatus("AutoStatsError", nil)

			remaining = remaining - chunk
			task.wait(Config.StatDelay)
		end
	end

	setStatus("AutoStats", "spent")

	return true
end

local function autoUpgradeStats()
	if not Config.AutoStats then
		return
	end

	while isRunning() and Config.AutoStats do
		if Config.AutoRefundStats and not StatsRefundAttempted and not refundStatsBeforeUpgrade() then
			task.wait(Config.RefundStatsRetryDelay)
			continue
		end

		if getPointValue() > 0 then
			spendStatPoints()
		else
			setStatus("StatPoints", 0)
			setStatus("AutoStats", "waiting_points")
		end

		task.wait(Config.StatLoopDelay)
	end
end

local function getBusoLevel()
	local playerData = getPlayerData()
	local buso = playerData and playerData:FindFirstChild("Buso")

	return tonumber(getValue(buso, "BusoLevel", 0)) or 0
end

local function getObservationHakiLevel()
	local playerData = getPlayerData()
	local haki = playerData and playerData:FindFirstChild("Haki")

	return tonumber(getValue(haki, "ObservationHakiLevel", 0)) or 0
end

local function getConquerorHakiLevel()
	local playerData = getPlayerData()
	local haki = playerData and playerData:FindFirstChild("Haki")
	local haoLevel = tonumber(getValue(playerData, "HaoLevel", 0)) or 0
	local conquerorLevel = tonumber(getValue(haki, "ConquerorLevel", 0)) or 0

	return math.max(haoLevel, conquerorLevel)
end

local function getFormerStarterCharacterScripts()
	return PlayerGui:FindFirstChild("FormerStarterCharacterScripts")
end

local function getCommunicationRemote(container)
	local remote = container and container:FindFirstChild("Comunication")

	if remote and remote:IsA("RemoteEvent") then
		return remote
	end

	return nil
end

local function getAbilityRemote(abilityName)
	local character = LocalPlayer.Character
	local formerScripts = getFormerStarterCharacterScripts()

	if abilityName == "Buso" then
		local remote = getCommunicationRemote(character and character:FindFirstChild("Buso_Server"))

		return remote or getCommunicationRemote(formerScripts and formerScripts:FindFirstChild("Buso_Server"))
	end

	if abilityName == "Observation" then
		return getCommunicationRemote(PlayerGui:FindFirstChild("ObservationHaki_Server"))
	end

	if abilityName == "Conqueror" then
		local remote = getCommunicationRemote(character and character:FindFirstChild("Haki_Server"))

		return remote or getCommunicationRemote(formerScripts and formerScripts:FindFirstChild("Haki_Server"))
	end

	return nil
end

local function getWorkspacePlayer()
	local playersFolder = workspace:FindFirstChild("Players")

	return playersFolder and playersFolder:FindFirstChild(LocalPlayer.Name) or nil
end

local function getCharacterBool(name)
	local character = LocalPlayer.Character
	local value = character and character:FindFirstChild(name)

	if value and value:IsA("BoolValue") then
		return value
	end

	local workspacePlayer = getWorkspacePlayer()
	value = workspacePlayer and workspacePlayer:FindFirstChild(name)

	if value and value:IsA("BoolValue") then
		return value
	end

	return nil
end

local function isBusoActive()
	local busoEnabled = getCharacterBool("BusoEnabled")
	local haki = getCharacterBool("Haki")

	return (busoEnabled and busoEnabled.Value == true) or (haki and haki.Value == true)
end

local function canToggleBuso()
	local character = LocalPlayer.Character
	local flying = character and character:FindFirstChild("Flying")
	local flyingClient = character and character:FindFirstChild("FlyingClient")

	return not (flying and flying:IsA("BoolValue") and flying.Value)
		and not (flyingClient and flyingClient:IsA("BoolValue") and flyingClient.Value)
end

local function isObservationHakiActive()
	local observationHaki = getCharacterBool("ObservationHaki")
	local observationServer = PlayerGui:FindFirstChild("ObservationHaki_Server")
	local dodgeLeft = observationServer and observationServer:FindFirstChild("DodgeLeft")
	local obsDodges = LocalPlayer:GetAttribute("ObsDodges")

	return (observationHaki and observationHaki.Value == true)
		or (dodgeLeft and dodgeLeft:IsA("NumberValue") and dodgeLeft.Value > 0)
		or (type(obsDodges) == "number" and obsDodges > 0)
end

local function tryFireHakiRemote(key, remote)
	if not remote then
		setStatus("Auto" .. key .. "Haki", "missing_remote")

		return false
	end

	if tick() - (LastHakiAttempt[key] or 0) < Config.HakiRetryDelay then
		return false
	end

	LastHakiAttempt[key] = tick()

	local ok, result = pcall(function()
		remote:FireServer()
	end)

	setStatus("Auto" .. key .. "Haki", ok and "requested" or "failed")

	if ok then
		setStatus("Auto" .. key .. "HakiError", nil)
	else
		setStatus("Auto" .. key .. "HakiError", tostring(result))
	end

	return ok
end

local function ensureAutoHaki(target)
	if not Config.AutoHaki then
		return
	end

	if tick() - LastHakiCheck < Config.HakiCheckDelay then
		return
	end

	LastHakiCheck = tick()

	if Config.AutoBuso then
		local busoLevel = getBusoLevel()

		setStatus("BusoLevel", busoLevel)

		if busoLevel <= 0 then
			setStatus("AutoBusoHaki", "no_level")
		elseif isBusoActive() then
			setStatus("AutoBusoHaki", "active")
		elseif not canToggleBuso() then
			setStatus("AutoBusoHaki", "flying")
		else
			tryFireHakiRemote("Buso", getAbilityRemote("Buso"))
		end
	end

	if Config.AutoObservationHaki then
		local observationLevel = getObservationHakiLevel()

		setStatus("ObservationHakiLevel", observationLevel)

		if observationLevel <= 0 then
			setStatus("AutoObservationHaki", "no_level")
		elseif isObservationHakiActive() then
			setStatus("AutoObservationHaki", "active")
		else
			tryFireHakiRemote("Observation", getAbilityRemote("Observation"))
		end
	end

	if Config.AutoConquerorHaki then
		local conquerorLevel = getConquerorHakiLevel()

		setStatus("ConquerorHakiLevel", conquerorLevel)

		if conquerorLevel <= 0 then
			setStatus("AutoConquerorHaki", "no_level")
		elseif not target then
			setStatus("AutoConquerorHaki", "no_target")
		else
			tryFireHakiRemote("Conqueror", getAbilityRemote("Conqueror"))
		end
	end
end

local function getQuestFolder()
	local playerQuest = LocalPlayer:FindFirstChild("Quest")

	if playerQuest then
		return playerQuest
	end

	local handler = QuestGui:FindFirstChild("QuestHandler")

	return handler and handler:FindFirstChild("Quest") or nil
end

local function getQuestState()
	local quest = getQuestFolder()
	local npcName = getValue(quest, "NPCName", "")
	local rawObjective = getValue(quest, "Objective", "")
	local questName = getValue(quest, "QuestName", "")
	local objective = rawObjective

	if objective == "" then
		objective = npcName ~= "" and npcName or questName
	end

	return {
		NPCName = npcName,
		Objective = objective,
		RawObjective = rawObjective,
		QuestName = questName,
		GiverName = getValue(quest, "GiverName", ""),
		Progress = getValue(quest, "Progress", 0),
		Target = getValue(quest, "Target", 0)
	}
end

local function hasActiveQuest()
	local state = getQuestState()

	return state.NPCName ~= "" or state.Objective ~= "" or state.QuestName ~= ""
end

local function isSafePosition(position)
	return position and position.Y > Config.SafePositionFloor
end

local function getSafePart(instance)
	if not instance then
		return nil
	end

	if instance:IsA("BasePart") and isSafePosition(instance.Position) then
		return instance
	end

	if not instance:IsA("Model") then
		return nil
	end

	for _, partName in next, { "Clicker", "Quest", "HumanoidRootPart", "Head" } do
		local part = instance:FindFirstChild(partName)

		if part and part:IsA("BasePart") and isSafePosition(part.Position) then
			return part
		end
	end

	for _, child in next, instance:GetChildren() do
		if child:IsA("BasePart") and isSafePosition(child.Position) then
			return child
		end
	end

	return nil
end

local function getInstanceCFrame(instance)
	if not instance then
		return nil
	end

	if instance:IsA("BasePart") then
		return isSafePosition(instance.Position) and instance.CFrame or nil
	end

	if instance:IsA("Model") then
		local safePart = getSafePart(instance)

		if safePart then
			return safePart.CFrame
		end

		local ok, pivot = pcall(function()
			return instance:GetPivot()
		end)

		if ok and pivot and isSafePosition(pivot.Position) then
			return pivot
		end

		local primaryPart = instance.PrimaryPart or instance:FindFirstChildWhichIsA("BasePart", true)

		return primaryPart and isSafePosition(primaryPart.Position) and primaryPart.CFrame or nil
	end

	return nil
end

local function clearHoverGyro()
	if HoverGyro then
		pcall(function()
			HoverGyro:Destroy()
		end)
	end

	HoverGyro = nil
end

local function lockHoverGyro(root, cframe)
	if not Config.SwordTopDownHover then
		clearHoverGyro()

		return
	end

	if HoverGyro and HoverGyro.Parent ~= root then
		clearHoverGyro()
	end

	if not HoverGyro then
		HoverGyro = Instance.new("BodyGyro")
		HoverGyro.Name = "HazeSea2SwordHoverGyro"
		HoverGyro.MaxTorque = Vector3.new(
			Config.SwordHoverGyroMaxTorque,
			Config.SwordHoverGyroMaxTorque,
			Config.SwordHoverGyroMaxTorque
		)
		HoverGyro.P = Config.SwordHoverGyroPower
		HoverGyro.Parent = root
	end

	HoverGyro.CFrame = cframe
end

local function setCharacterCFrame(cframe)
	local character, humanoid, root = getCharacter()

	if Config.NoClip then
		for _, part in next, character:GetChildren() do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	end

	humanoid.PlatformStand = Config.SwordTopDownHover == true
	humanoid.AutoRotate = false
	root.AssemblyLinearVelocity = Vector3.zero
	root.AssemblyAngularVelocity = Vector3.zero
	root.CFrame = cframe
	lockHoverGyro(root, cframe)
end

local function getFlatLookVector(targetRoot)
	local lookVector = targetRoot.CFrame.LookVector
	local flatLookVector = Vector3.new(lookVector.X, 0, lookVector.Z)

	if flatLookVector.Magnitude <= 0.001 then
		return Vector3.new(0, 0, -1)
	end

	return flatLookVector.Unit
end

local function getHoverCFrame(targetRoot)
	if not targetRoot then
		return nil
	end

	local hoverHeight = Config.SwordTopDownHover and Config.SwordHoverHeight or Config.HoverHeight
	local hoverPosition = targetRoot.Position + Vector3.new(0, hoverHeight, 0)
	local flatLookVector = getFlatLookVector(targetRoot)

	if Config.SwordTopDownHover then
		return CFrame.lookAt(hoverPosition, targetRoot.Position, flatLookVector)
	end

	return CFrame.new(hoverPosition, hoverPosition + flatLookVector)
end

local function lockHoverCFrame(targetRoot, force)
	local hoverCFrame = getHoverCFrame(targetRoot)

	if not hoverCFrame then
		return false
	end

	if not force then
		local character = LocalPlayer.Character
		local root = character and character:FindFirstChild("HumanoidRootPart")
		local now = tick()

		if root
			and LastHoverPosition
			and now - LastHoverLock < Config.HoverLockDelay
			and (root.Position - LastHoverPosition).Magnitude <= Config.HoverMoveThreshold
		then
			return true
		end
	end

	setCharacterCFrame(hoverCFrame)
	LastHoverLock = tick()
	LastHoverPosition = hoverCFrame.Position
	setStatus("HoverMode", Config.SwordTopDownHover and "sword_top_down" or "default")
	setStatus("HoverPitch", Config.SwordHoverPitch)
	setStatus("HoverHeight", Config.SwordTopDownHover and Config.SwordHoverHeight or Config.HoverHeight)

	return true
end

local function travelToCFrame(destination)
	if not destination then
		return false
	end

	if not Config.SmoothTravel then
		setCharacterCFrame(destination)
		return true
	end

	CurrentTraveling = true

	local _, humanoid, root = getCharacter()
	local reached = false
	local travelLookVector = Vector3.new(destination.LookVector.X, 0, destination.LookVector.Z)

	if travelLookVector.Magnitude <= 0.001 then
		travelLookVector = Vector3.new(0, 0, -1)
	else
		travelLookVector = travelLookVector.Unit
	end

	while isRunning() and humanoid.Health > 0 do
		local delta = destination.Position - root.Position
		local distance = delta.Magnitude

		if distance <= Config.TeleportDistance then
			reached = true
			break
		end

		local step = Config.TravelSpeed * Config.TravelStepDelay

		if Config.FastTravel then
			step = math.min(distance, Config.TravelMaxStep, step)
		else
			step = math.min(distance, step)
		end

		local nextPosition = root.Position + delta.Unit * step

		setCharacterCFrame(CFrame.new(nextPosition, nextPosition + travelLookVector))
		task.wait(Config.TravelStepDelay)
	end

	if reached then
		setCharacterCFrame(destination)
	end

	CurrentTraveling = false

	return reached
end

local function moveNearInstance(instance)
	local cframe = getInstanceCFrame(instance)

	if cframe then
		return travelToCFrame(cframe + Vector3.new(0, Config.HoverHeight, 0))
	end

	return false
end

local function buildQuestCache()
	local quests = {}

	for _, giver in next, QuestGivers:GetChildren() do
		local configuration = giver:FindFirstChild("Configuration")
		local questRoot = configuration and configuration:FindFirstChild("Quests")

		if questRoot then
			for _, levelFolder in next, questRoot:GetChildren() do
				local level = tonumber(levelFolder.Name:match("%d+"))

				if level then
					for _, objectiveFolder in next, levelFolder:GetChildren() do
						local numberValue = objectiveFolder:FindFirstChild("Number")

						if objectiveFolder:IsA("Folder") and numberValue then
							local requiredKills = tonumber(numberValue.Value) or 0
							local objectiveName = tostring(objectiveFolder.Name)
							local objectiveKey = objectiveName:lower()

							table.insert(quests, {
								Level = level,
								LevelName = levelFolder.Name,
								Giver = giver,
								MobName = objectiveName,
								RequiredKills = requiredKills,
								IsBoss = BossQuestNames[objectiveKey] == true
									or objectiveKey:find("boss", 1, true) ~= nil
									or (Config.BossQuestKillThreshold > 0 and requiredKills > 0 and requiredKills <= Config.BossQuestKillThreshold)
							})
						end
					end
				end
			end
		end
	end

	table.sort(quests, function(left, right)
		if left.Level == right.Level then
			return left.MobName < right.MobName
		end

		return left.Level > right.Level
	end)

	return quests
end

local function getQuestCache(force)
	if force or #QuestCache == 0 or tick() - LastQuestCacheBuild > 30 then
		QuestCache = buildQuestCache()
		LastQuestCacheBuild = tick()
	end

	return QuestCache
end

local function shouldSkipPeanutPirateForLevel(quest, level)
	return quest
		and quest.MobName == "Peanut Pirate"
		and level < Config.PeanutPirateSkipUntilLevel
end

local function selectQuestForLevel(level)
	for _, quest in next, getQuestCache(false) do
		if quest.Level <= level and not shouldSkipPeanutPirateForLevel(quest, level) then
			return quest
		end
	end

	return nil
end

local function shouldCancelActivePeanutPirateQuest(objective)
	return objective == "Peanut Pirate"
end

local function getForcedFarmQuest(level)
	if not Config.ForceFarmLevelEnabled then
		return nil
	end

	return selectQuestForLevel(getFarmLevel(level))
end

local function shouldCancelActiveForcedFarmQuest(objective, level)
	if objective == "" then
		return false, nil
	end

	local quest = getForcedFarmQuest(level)

	if not quest then
		return false, nil
	end

	return tostring(objective) ~= tostring(quest.MobName), quest
end

local function isBossQuest(quest)
	if not quest then
		return false
	end

	local mobName = tostring(quest.MobName or "")
	local requiredKills = tonumber(quest.RequiredKills) or 0

	return quest.IsBoss == true
		or BossQuestNames[mobName:lower()] == true
		or mobName:lower():find("boss", 1, true) ~= nil
		or (Config.BossQuestKillThreshold > 0 and requiredKills > 0 and requiredKills <= Config.BossQuestKillThreshold)
end

local function isSameQuest(left, right)
	return left and right and left.Level == right.Level and left.MobName == right.MobName and left.Giver == right.Giver
end

local function getFallbackQuestForBoss(bossQuest)
	if not bossQuest then
		return nil
	end

	local fallback = nil
	local unavailableFallback = nil

	local function canUseFallbackQuest(quest)
		if not Config.BossFallbackRequireSpawnedMob then
			return true
		end

		local target = findMob(quest.MobName)

		setStatus("LastFallbackProbe", quest.MobName)
		setStatus("LastFallbackProbeFound", target and target.Name or nil)

		return target ~= nil
	end

	if Config.BossFallbackSameGiver then
		for _, quest in next, getQuestCache(false) do
			if quest.Level < bossQuest.Level and quest.Giver == bossQuest.Giver and not isBossQuest(quest) then
				if canUseFallbackQuest(quest) then
					setStatus("LastFallbackQuest", quest.LevelName .. " " .. quest.MobName)
					return quest
				end

				unavailableFallback = unavailableFallback or quest
			end
		end
	end

	for _, quest in next, getQuestCache(false) do
		if quest.Level < bossQuest.Level and not isBossQuest(quest) then
			if canUseFallbackQuest(quest) then
				fallback = quest
				setStatus("LastFallbackQuest", quest.LevelName .. " " .. quest.MobName)
				break
			end

			unavailableFallback = unavailableFallback or quest
		end
	end

	if fallback then
		return fallback
	end

	debugPrint("No spawned fallback mob found, using configured fallback:", unavailableFallback and unavailableFallback.MobName or "none")
	setStatus("LastFallbackQuest", unavailableFallback and (unavailableFallback.LevelName .. " " .. unavailableFallback.MobName) or nil)

	return unavailableFallback
end

local function getFallbackQuestForBossSafely(bossQuest)
	if type(getFallbackQuestForBoss) ~= "function" then
		setStatus("BossFallbackError", "missing_getFallbackQuestForBoss")

		return nil
	end

	local success, result = pcall(getFallbackQuestForBoss, bossQuest)

	if not success then
		setStatus("BossFallbackError", tostring(result))

		return nil
	end

	setStatus("BossFallbackError", nil)

	return result
end

local function selectFarmQuest(level)
	local dragonQuest, dragonReason = Config.DragonIsland.SelectQuest(getLevel())

	if dragonQuest then
		setStatus("LastFarmQuestReason", dragonReason)

		return dragonQuest, dragonReason
	end

	local quest = selectQuestForLevel(level)

	if not Config.BossFallback or not isBossQuest(quest) then
		return quest, nil
	end

	local bossTarget = findMob(quest.MobName)

	if bossTarget then
		setStatus("LastFarmQuestReason", "boss_spawned")
		return quest, "boss_spawned"
	end

	local fallback = getFallbackQuestForBossSafely(quest)

	if fallback then
		debugPrint("Boss not spawned, using fallback:", quest.MobName, "->", fallback.MobName)
		setStatus("LastFarmQuestReason", "boss_wait_fallback")

		return fallback, "boss_wait_fallback"
	end

	setStatus("LastFarmQuestReason", "boss_no_fallback")

	return quest, "boss_no_fallback"
end

local function getActiveBossFallbackObjective(quest)
	if not Config.BossFallback or not Config.BossFallbackFarmWithoutCancel or not isBossQuest(quest) then
		ActiveBossFallbackQuest = nil

		return nil
	end

	local bossTarget = findMob(quest.MobName)

	if bossTarget then
		BossMissingSince = 0
		ActiveBossFallbackQuest = nil
		setStatus("BossFallbackMode", "boss_spawned")
		setStatus("ActiveBossFallbackQuest", nil)

		return nil
	end

	if BossMissingSince == 0 then
		BossMissingSince = tick()
	end

	if tick() - BossMissingSince < Config.BossMissingCancelDelay then
		return nil
	end

	local fallbackQuest = getFallbackQuestForBossSafely(quest)

	if not fallbackQuest then
		ActiveBossFallbackQuest = nil
		setStatus("BossFallbackMode", "boss_wait_no_fallback")
		setStatus("ActiveBossFallbackQuest", nil)

		return nil
	end

	ActiveBossFallbackQuest = fallbackQuest
	setStatus("BossFallbackMode", "active_boss_wait_fallback")
	setStatus("ActiveBossQuest", quest.LevelName .. " " .. quest.MobName)
	setStatus("ActiveBossFallbackQuest", fallbackQuest.LevelName .. " " .. fallbackQuest.MobName)

	return fallbackQuest.MobName, fallbackQuest
end

local function findQuestByObjective(objective)
	if objective == "" then
		return nil
	end

	local best = nil

	for _, quest in next, getQuestCache(false) do
		if quest.MobName == objective and quest.Level <= getLevel() then
			if not best or quest.Level > best.Level then
				best = quest
			end
		end
	end

	return best
end

local function acceptQuest(quest)
	if not quest then
		return false, "NoQuest"
	end

	moveNearInstance(quest.Giver)
	task.wait(0.25)

	local ok, result = pcall(function()
		return QuestFunction:InvokeServer(quest.Giver, quest.LevelName)
	end)

	if not ok then
		return false, result
	end

	if result == true or result == "AlreadyOnQuest" then
		for _ = 1, 20 do
			local state = getQuestState()

			if state.Objective ~= "" or hasActiveQuest() then
				return true, result
			end

			task.wait(0.15)
		end
	end

	return result == true, result
end

local function getQuestCloseButton()
	local mainFrame = QuestGui:FindFirstChild("MainFrame")

	return mainFrame and mainFrame:FindFirstChild("CloseButton") or nil
end

local function clickGuiButton(button)
	if not button or not button:IsA("GuiButton") then
		return false
	end

	local clicked = false

	pcall(function()
		if typeof(firesignal) == "function" then
			firesignal(button.MouseButton1Click)
			firesignal(button.Activated)
			clicked = true
		end
	end)

	pcall(function()
		if typeof(getconnections) == "function" then
			for _, signal in next, { button.MouseButton1Click, button.Activated } do
				for _, connection in next, getconnections(signal) do
					pcall(function()
						connection:Fire()
					end)
					clicked = true
				end
			end
		end
	end)

	pcall(function()
		button:Activate()
		clicked = true
	end)

	if VirtualInputManager and button.AbsoluteSize.X > 0 and button.AbsoluteSize.Y > 0 then
		pcall(function()
			local center = button.AbsolutePosition + (button.AbsoluteSize / 2)

			VirtualInputManager:SendMouseMoveEvent(center.X, center.Y, game)
			task.wait(0.03)
			VirtualInputManager:SendMouseButtonEvent(center.X, center.Y, 0, true, game, 1)
			task.wait(0.05)
			VirtualInputManager:SendMouseButtonEvent(center.X, center.Y, 0, false, game, 1)
			clicked = true
		end)
	end

	return clicked
end

local function waitForQuestClear(timeout)
	local started = tick()

	while tick() - started < timeout do
		if not hasActiveQuest() then
			return true
		end

		task.wait(0.1)
	end

	return not hasActiveQuest()
end

local function cancelActiveQuest(reason)
	if not hasActiveQuest() then
		return true, "NoActiveQuest"
	end

	if tick() - LastQuestCancelAttempt < Config.QuestCancelRetryDelay then
		return false, "Cooldown"
	end

	LastQuestCancelAttempt = tick()

	local closeButton = getQuestCloseButton()

	if not closeButton then
		return false, "NoCloseButton"
	end

	debugPrint("Cancel quest", reason or "manual")

	if not clickGuiButton(closeButton) then
		return false, "ClickFailed"
	end

	if waitForQuestClear(Config.QuestCancelWait) then
		return true, "Canceled"
	end

	return false, "StillActive"
end

local function getSpawnedBossForFallback(level, activeQuest)
	if not Config.BossFallback or not Config.BossFallbackSwitchToBoss then
		return nil
	end

	if tick() - LastBossFallbackCheck < Config.BossFallbackCheckDelay then
		return nil
	end

	LastBossFallbackCheck = tick()

	local bossQuest = selectQuestForLevel(level)

	if not isBossQuest(bossQuest) or not activeQuest or isSameQuest(activeQuest, bossQuest) or isBossQuest(activeQuest) then
		return nil
	end

	if activeQuest.Level >= bossQuest.Level then
		return nil
	end

	return findMob(bossQuest.MobName) and bossQuest or nil
end

local function getHumanoid(model)
	return model and model:FindFirstChildWhichIsA("Humanoid", true) or nil
end

local function getRootPart(model)
	if not model then
		return nil
	end

	return model:FindFirstChild("HumanoidRootPart") or model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart", true)
end

local function trimName(name)
	name = tostring(name or "")
	name = name:gsub("^%s+", "")
	name = name:gsub("%s+$", "")

	return name
end

local function stripRichText(name)
	return tostring(name or ""):gsub("<.->", "")
end

local function normalizeMobName(name)
	return trimName(stripRichText(name))
		:lower()
		:gsub("%b[]", "")
		:gsub("[^%w]", "")
		:gsub("%d+$", "")
end

local function addMobName(names, seen, name)
	name = trimName(stripRichText(name))

	if name ~= "" and not seen[name] then
		table.insert(names, name)
		seen[name] = true
	end
end

local function addGuiMobNames(names, seen, root)
	local healthUi = root and root:FindFirstChild("HealthUI", true)

	if not healthUi then
		return
	end

	local function scanGui(container, depth)
		if depth > 5 then
			return
		end

		for _, child in next, container:GetChildren() do
			if child:IsA("TextLabel") or child:IsA("TextButton") then
				local success, text = pcall(function()
					return child.Text
				end)

				if success then
					addMobName(names, seen, text)
				end
			end

			scanGui(child, depth + 1)
		end
	end

	scanGui(healthUi, 0)
end

local function getMobNames(model)
	local names = {}
	local seen = {}

	if not model then
		return names
	end

	local npcName = model:FindFirstChild("NPCName")

	if npcName and npcName:IsA("StringValue") then
		addMobName(names, seen, npcName.Value)
	end

	for _, attributeName in next, { "NPCName", "Monster", "Nickname", "DisplayName", "Name" } do
		local value = model:GetAttribute(attributeName)

		if typeof(value) == "string" then
			addMobName(names, seen, value)
		end
	end

	local humanoid = getHumanoid(model)

	if humanoid then
		addMobName(names, seen, humanoid.DisplayName)
	end

	for _, child in next, model:GetChildren() do
		if child:IsA("StringValue") and (child.Name == "NPCName" or child.Name == "DisplayName" or child.Name == "Nickname") then
			addMobName(names, seen, child.Value)
		end
	end

	addGuiMobNames(names, seen, model)
	addMobName(names, seen, model.Name:gsub("%d+$", ""))

	return names
end

local function getMobName(model)
	local names = getMobNames(model)

	if names[1] then
		return names[1]
	end

	return model and model.Name:gsub("%d+$", "") or ""
end

local function mobNameMatchesTarget(mobName, target)
	local name = trimName(mobName)
	local strippedName = trimName(name:gsub("%d+$", ""))
	local lowerName = string.lower(name)
	local lowerStrippedName = string.lower(strippedName)
	local lowerTarget = string.lower(target)
	local normalizedName = normalizeMobName(name)
	local normalizedTarget = normalizeMobName(target)

	-- Exact match first (most accurate)
	if lowerName == lowerTarget or lowerStrippedName == lowerTarget then
		return true
	end

	-- Exact normalized match
	if normalizedName ~= "" and normalizedName == normalizedTarget then
		return true
	end

	-- Prefix match only if followed by space or number (prevents "Shadow" matching "Shadow Elite")
	if lowerName:sub(1, #lowerTarget) == lowerTarget then
		local nextCharacter = lowerName:sub(#lowerTarget + 1, #lowerTarget + 1)

		-- Only match if it's the end of string, a number, or NOT a space (which would indicate more words)
		if nextCharacter == "" or tonumber(nextCharacter) ~= nil then
			return true
		end

		-- Don't match if there's more text after (like "Shadow Elite" when target is "Shadow")
		return false
	end

	-- Partial match disabled to prevent false positives
	-- Only use exact matches or normalized exact matches
	return false
end

local function matchesMob(model, targetName)
	local target = trimName(targetName)

	if target == "" or not model then
		return false, nil
	end

	for _, mobName in next, getMobNames(model) do
		if mobNameMatchesTarget(mobName, target) then
			return true, mobName
		end
	end

	return false, nil
end

local function getMobNameCandidates(targetName)
	local aliases = Config.MobNameAliases and Config.MobNameAliases[targetName]

	if type(aliases) == "table" then
		return aliases
	end

	return { targetName }
end

local function matchesTargetMob(model, targetName)
	for _, candidateName in next, getMobNameCandidates(targetName) do
		local matchesTarget, matchedMobName = matchesMob(model, candidateName)

		if matchesTarget then
			return true, candidateName, matchedMobName
		end
	end

	return false, nil, nil
end

local function isAliveMob(model)
	local humanoid = getHumanoid(model)

	return model and model:IsDescendantOf(workspace) and humanoid and humanoid.Health > 0
end

local function refreshNpcContainers(force)
	if not force and #NpcContainers > 0 and tick() - LastContainerScan < Config.ContainerRefreshDelay then
		return
	end

	NpcContainers = {}
	LastContainerScan = tick()

	local function scan(container, depth)
		if depth > 6 then
			return
		end

		for _, child in next, container:GetChildren() do
			if child.Name == "NPCS" then
				table.insert(NpcContainers, child)
			end

			if child:IsA("Folder") or child:IsA("Model") then
				scan(child, depth + 1)
			end
		end
	end

	scan(NpcZones, 0)
end

findMob = function(targetName)
	refreshNpcContainers(false)

	local _, _, playerRoot = getCharacter()
	local closestMob = nil
	local closestDistance = math.huge

	local function scanModel(model)
		local matchesTarget, matchedName, matchedMobName = matchesTargetMob(model, targetName)

		if matchesTarget and isAliveMob(model) then
			local root = getRootPart(model)

			if root then
				local distance = (root.Position - playerRoot.Position).Magnitude

				if distance < closestDistance then
					closestDistance = distance
					closestMob = model
					setStatus("LastTargetAlias", matchedName ~= targetName and matchedName or nil)
					setStatus("LastTargetMobName", matchedMobName or getMobName(model))
				end
			end
		end
	end

	local function scanContainer(container, depth)
		if depth > Config.MobSearchDepth then
			return
		end

		for _, child in next, container:GetChildren() do
			if child:IsA("Model") then
				scanModel(child)
			end

			if child:IsA("Folder") or child:IsA("Model") then
				scanContainer(child, depth + 1)
			end
		end
	end

	for _, container in next, NpcContainers do
		if container and container:IsDescendantOf(workspace) then
			scanContainer(container, 0)
		end
	end

	return closestMob
end

local function getSpawnPointMobName(spawnPoint)
	return trimName(tostring(spawnPoint and spawnPoint.Name or ""):gsub("%d+$", ""))
end

local function getObservationSpawnPoints()
	local observationServer = PlayerGui:FindFirstChild("ObservationHaki_Server")
	local observationClient = observationServer and observationServer:FindFirstChild("ObservationHaki_Client", true)

	return observationClient and observationClient:FindFirstChild("SpawnPoints") or nil
end

local function collectIslandSpawnPoints(islandFolder)
	local array = {}

	local function scan(container, depth)
		if not container or depth > 4 then
			return
		end

		for _, child in next, container:GetChildren() do
			if child:IsA("BasePart") and isSafePosition(child.Position) then
				table.insert(array, child)
			end

			if child:IsA("Folder") or child:IsA("Model") then
				scan(child, depth + 1)
			end
		end
	end

	scan(islandFolder, 0)

	table.sort(array, function(left, right)
		return left.Name < right.Name
	end)

	return array
end

local findQuestSpawnIsland

local function getConfiguredQuestIslandName(quest, targetName)
	targetName = trimName(targetName or (quest and quest.MobName) or "")

	if targetName ~= "" and Config.QuestIslandNames[targetName] then
		return Config.QuestIslandNames[targetName]
	end

	local level = tonumber(quest and quest.Level)

	if level then
		for _, range in next, Config.QuestIslandLevelRanges do
			if level >= range.Min and level <= range.Max then
				return range.Island
			end
		end
	end

	return nil
end

local function getConfiguredQuestTravelCFrame(quest, targetName)
	targetName = trimName(targetName or (quest and quest.MobName) or "")

	local travelPosition = nil

	if targetName ~= "" then
		travelPosition = Config.QuestTravelPositions[targetName]
	end

	local level = tonumber(quest and quest.Level)

	if not travelPosition and level then
		travelPosition = Config.QuestTravelPositions[level]
	end

	local travelType = typeof(travelPosition)

	if travelType == "CFrame" then
		return travelPosition
	elseif travelType == "Vector3" then
		return CFrame.new(travelPosition)
	elseif type(travelPosition) == "table" then
		local x = tonumber(travelPosition.X or travelPosition.x or travelPosition[1])
		local y = tonumber(travelPosition.Y or travelPosition.y or travelPosition[2])
		local z = tonumber(travelPosition.Z or travelPosition.z or travelPosition[3])

		if x and y and z then
			return CFrame.new(x, y, z)
		end
	end

	return nil
end

local function findWorkspaceIslandFolder(islandName)
	if not islandName or islandName == "" then
		return nil
	end

	local islands = workspace:FindFirstChild("Islands")

	return islands and islands:FindFirstChild(islandName) or nil
end

local function findNpcZoneIslandFolder(islandName)
	if not islandName or islandName == "" then
		return nil
	end

	return NpcZones and NpcZones:FindFirstChild(islandName) or nil
end

local function getModelScanCFrame(model)
	if not model then
		return nil
	end

	local spawnCFrame = model:FindFirstChild("SpawnCFrame", true)

	if spawnCFrame and spawnCFrame:IsA("CFrameValue") and isSafePosition(spawnCFrame.Value.Position) then
		return spawnCFrame.Value
	end

	local root = getRootPart(model)

	if root and isSafePosition(root.Position) then
		return root.CFrame
	end

	return getInstanceCFrame(model)
end

local function collectNpcZoneScanCFrames(zoneFolder, targetName)
	local array = {}

	if not zoneFolder then
		return array
	end

	local npcContainer = zoneFolder:FindFirstChild("NPCS")

	if not npcContainer then
		return array
	end

	local function addMobCFrame(mob)
		local cframe = getModelScanCFrame(mob)

		if cframe then
			table.insert(array, cframe)
		end
	end

	for _, mob in next, npcContainer:GetChildren() do
		if mob:IsA("Model") and matchesTargetMob(mob, targetName) then
			addMobCFrame(mob)
		end
	end

	if #array == 0 then
		for _, mob in next, npcContainer:GetChildren() do
			if mob:IsA("Model") and isAliveMob(mob) then
				addMobCFrame(mob)
			end
		end
	end

	return array
end

local function appendCFrameScanPoints(array, cframes)
	for _, cframe in next, cframes do
		table.insert(array, cframe)
	end
end

local function findQuestScanIsland(quest, targetName)
	local islandFolder, targetPoint = findQuestSpawnIsland(quest, targetName)

	if islandFolder then
		return islandFolder, targetPoint, "observation_spawnpoints"
	end

	local islandName = getConfiguredQuestIslandName(quest, targetName)
	local workspaceIsland = findWorkspaceIslandFolder(islandName)

	if workspaceIsland then
		return workspaceIsland, nil, "workspace_island"
	end

	local zoneIsland = findNpcZoneIslandFolder(islandName)

	if zoneIsland then
		return zoneIsland, nil, "npc_zone"
	end

	return nil, nil, nil
end

local function collectQuestScanCFrames(quest, targetName)
	local islandFolder, targetPoint, source = findQuestScanIsland(quest, targetName)
	local array = {}
	local configuredTravelCFrame = getConfiguredQuestTravelCFrame(quest, targetName)
	local hasConfiguredTravelCFrame = configuredTravelCFrame ~= nil

	if configuredTravelCFrame then
		table.insert(array, configuredTravelCFrame)
		source = source and (source .. "+configured_position") or "configured_position"
	end

	if islandFolder then
		if targetPoint then
			table.insert(array, targetPoint.CFrame)
		end

		for _, part in next, collectIslandSpawnPoints(islandFolder) do
			if not targetPoint or part ~= targetPoint then
				table.insert(array, part.CFrame)
			end
		end
	end

	if #array == 0 then
		appendCFrameScanPoints(array, collectNpcZoneScanCFrames(findNpcZoneIslandFolder(getConfiguredQuestIslandName(quest, targetName)), targetName))
	end

	return array, islandFolder, targetPoint, source, hasConfiguredTravelCFrame
end

findQuestSpawnIsland = function(quest, targetName)
	if not quest then
		return nil, nil
	end

	targetName = trimName(targetName)

	if targetName == "" then
		return nil, nil
	end

	local spawnPoints = getObservationSpawnPoints()

	if not spawnPoints then
		return nil, nil
	end

	local _, _, playerRoot = getCharacter()
	local closestIsland = nil
	local closestTargetPoint = nil
	local closestDistance = math.huge

	for _, islandFolder in next, spawnPoints:GetChildren() do
		for _, spawnPoint in next, islandFolder:GetChildren() do
			if spawnPoint:IsA("BasePart") and getSpawnPointMobName(spawnPoint) == targetName and isSafePosition(spawnPoint.Position) then
				local distance = playerRoot and (spawnPoint.Position - playerRoot.Position).Magnitude or 0

				if not closestTargetPoint or distance < closestDistance then
					closestIsland = islandFolder
					closestTargetPoint = spawnPoint
					closestDistance = distance
				end
			end
		end
	end

	return closestIsland, closestTargetPoint
end

local function findQuestSpawnPoint(quest, targetName)
	local islandFolder, targetPoint = findQuestSpawnIsland(quest, targetName)

	if not islandFolder then
		return nil, nil, nil, 0
	end

	local scanPoints = collectIslandSpawnPoints(islandFolder)
	local scanPoint = targetPoint

	if Config.MobSpawnProbeRandomScan and #scanPoints > 0 then
		local key = tostring(quest.Level) .. ":" .. tostring(quest.MobName) .. ":" .. tostring(targetName) .. ":" .. islandFolder:GetFullName()

		if key ~= LastSpawnProbeKey then
			LastSpawnProbeKey = key
			LastSpawnProbeIndex = 0
			LastSpawnProbeMove = 0
		end

		if LastSpawnProbeIndex <= 0 or tick() - LastSpawnProbeMove >= Config.MobSpawnProbeMoveDelay then
			local nextIndex = math.random(1, #scanPoints)

			if #scanPoints > 1 and nextIndex == LastSpawnProbeIndex then
				nextIndex = (nextIndex % #scanPoints) + 1
			end

			LastSpawnProbeIndex = nextIndex
			LastSpawnProbeMove = tick()
		end

		scanPoint = scanPoints[LastSpawnProbeIndex] or targetPoint
	end

	return scanPoint, islandFolder, targetPoint, #scanPoints
end

local function moveNearQuestSpawnPoint(quest, targetName)
	local spawnPoint, islandFolder, targetPoint, scanPointCount = findQuestSpawnPoint(quest, targetName)
	local configuredTravelCFrame = getConfiguredQuestTravelCFrame(quest, targetName)

	setStatus("LastSpawnMoveTarget", targetName)
	if configuredTravelCFrame then
		setStatus("LastSpawnMovePoint", "configured_position")
		setStatus("LastSpawnMovePath", nil)
		setStatus("LastSpawnMoveIsland", getConfiguredQuestIslandName(quest, targetName))
		setStatus("LastSpawnMoveMode", "configured_position")
		setStatus("LastSpawnMoveAnchor", nil)
		setStatus("LastSpawnMoveScanCount", 1)
		setStatus("LastSpawnMoveIndex", 1)

		setCharacterCFrame(configuredTravelCFrame)
		refreshNpcContainers(true)

		return true
	end

	setStatus("LastSpawnMovePoint", spawnPoint and spawnPoint.Name or nil)
	setStatus("LastSpawnMovePath", spawnPoint and spawnPoint:GetFullName() or nil)
	setStatus("LastSpawnMoveIsland", islandFolder and islandFolder.Name or nil)
	setStatus("LastSpawnMoveMode", islandFolder and (Config.MobSpawnProbeRandomScan and "island_random_scan" or "target_spawn") or nil)
	setStatus("LastSpawnMoveAnchor", targetPoint and targetPoint.Name or nil)
	setStatus("LastSpawnMoveScanCount", scanPointCount)
	setStatus("LastSpawnMoveIndex", LastSpawnProbeIndex > 0 and LastSpawnProbeIndex or nil)

	if not spawnPoint then
		return false
	end

	local moved = false

	if Config.MobSpawnProbeTeleportScan and Config.MobSpawnProbeRandomScan and islandFolder then
		local cframe = getInstanceCFrame(spawnPoint)

		if cframe then
			setCharacterCFrame(cframe + Vector3.new(0, Config.HoverHeight, 0))
			moved = true
		end
	else
		moved = moveNearInstance(spawnPoint)
	end

	if moved then
		refreshNpcContainers(true)
	end

	return moved
end

local function moveToForcedFarmStart(level)
	if not Config.ForceFarmLevelEnabled or not Config.ForceFarmStartTravel then
		return false
	end

	local farmLevel = getFarmLevel(level)
	local quest = selectQuestForLevel(farmLevel)

	if not quest then
		setStatus("ForceFarmStartResult", "no_quest")

		return false
	end

	setStatus("ForceFarmStartLevel", farmLevel)
	setStatus("ForceFarmStartQuest", quest.LevelName .. " " .. quest.MobName)

	local moved = moveNearQuestSpawnPoint(quest, quest.MobName)

	setStatus("ForceFarmStartResult", moved and "moved" or "failed")

	return moved
end

local function probeQuestIslandForMob(quest, targetName, reason)
	targetName = trimName(targetName or (quest and quest.MobName) or "")

	if not quest or targetName == "" then
		return nil, false
	end

	if tick() - LastQuestProbeAt < Config.MobSpawnProbeRetryDelay then
		return nil, false
	end

	LastQuestProbeAt = tick()

	local scanCFrames, islandFolder, targetPoint, source, hasConfiguredTravelCFrame = collectQuestScanCFrames(quest, targetName)
	local scanCount = #scanCFrames

	setStatus("LastQuestIslandScanReason", reason)
	setStatus("LastQuestIslandScanObjective", targetName)
	setStatus("LastQuestIslandScanQuest", quest.LevelName and (quest.LevelName .. " " .. quest.MobName) or quest.MobName)
	setStatus("LastQuestIslandScanIsland", islandFolder and islandFolder.Name or getConfiguredQuestIslandName(quest, targetName))
	setStatus("LastQuestIslandScanSource", source)
	setStatus("LastQuestIslandScanAnchor", targetPoint and targetPoint.Name or nil)
	setStatus("LastQuestIslandScanCount", scanCount)
	setStatus("LastQuestIslandScanAt", tick())

	if scanCount == 0 then
		setStatus("LastQuestIslandScanFound", nil)
		setStatus("LastQuestIslandScanResult", "no_scan_points")

		return nil, false
	end

	local key = tostring(quest.Level) .. ":" .. tostring(quest.MobName) .. ":" .. targetName .. ":" .. tostring(islandFolder and islandFolder:GetFullName() or getConfiguredQuestIslandName(quest, targetName) or "unknown")

	if key ~= LastSpawnProbeKey then
		LastSpawnProbeKey = key
		LastSpawnProbeIndex = 0
		LastSpawnProbeMove = 0
	end

	local attempts = math.min(scanCount, Config.MobSpawnProbeBurstCount)

	for attempt = 1, attempts do
		if not isRunning() then
			break
		end

		local nextIndex

		if hasConfiguredTravelCFrame and attempt == 1 then
			nextIndex = 1
		elseif Config.MobSpawnProbeRandomScan then
			nextIndex = math.random(1, scanCount)

			if scanCount > 1 and nextIndex == LastSpawnProbeIndex then
				nextIndex = (nextIndex % scanCount) + 1
			end
		else
			nextIndex = (LastSpawnProbeIndex % scanCount) + 1
		end

		LastSpawnProbeIndex = nextIndex
		LastSpawnProbeMove = tick()

		local scanCFrame = scanCFrames[nextIndex]

		setStatus("LastQuestIslandScanIndex", nextIndex)
		setStatus("LastQuestIslandScanAttempt", attempt)

		if scanCFrame then
			local targetCFrame = scanCFrame

			if not (hasConfiguredTravelCFrame and nextIndex == 1) then
				targetCFrame = scanCFrame + Vector3.new(0, Config.HoverHeight, 0)
			end

			setCharacterCFrame(targetCFrame)
			refreshNpcContainers(true)
			task.wait(Config.MobSpawnProbeSettleDelay)
		end

		local target = findMob(targetName)

		setStatus("LastQuestIslandScanFound", target and target.Name or nil)
		setStatus("LastQuestIslandScanPath", target and target:GetFullName() or nil)

		if target and isAliveMob(target) then
			setStatus("LastQuestIslandScanResult", "found")

			return target, true
		end
	end

	setStatus("LastQuestIslandScanResult", "not_found")

	return nil, true
end

local function getToolScore(tool)
	if not tool or not tool:IsA("Tool") then
		return -math.huge
	end

	if Config.PreferTool and tool.Name == Config.PreferTool then
		return 1000
	end

	if not Config.PreferMelee then
		return 1
	end

	if tool:FindFirstChild("SwordServer", true) or tool:FindFirstChild("SwordClient", true) then
		return 100
	end

	if tool.Name == "Combat" or tool:FindFirstChild("Combat_Server", true) or tool:FindFirstChild("Punch", true) then
		return 90
	end

	if tool:FindFirstChild("Activate", true) then
		return 25
	end

	return 10
end

local function waitForBackpack()
	local backpack = LocalPlayer:FindFirstChild("Backpack")
	local startedAt = tick()

	while not backpack and Config.BackpackWait > 0 and isRunning() and tick() - startedAt < Config.BackpackWait do
		task.wait(0.05)
		backpack = LocalPlayer:FindFirstChild("Backpack")
	end

	return backpack
end

local function findToolByName(toolName, character, backpack)
	if toolName == nil then
		return nil
	end

	local tool = character:FindFirstChild(toolName) or (backpack and backpack:FindFirstChild(toolName))

	return tool and tool:IsA("Tool") and tool or nil
end

function Config.SwordSelector.GetStatusName(swordName)
	local statusName = tostring(swordName or "Sword"):gsub("[^%w]", "")

	return statusName ~= "" and statusName or "Sword"
end

function Config.SwordSelector.GetMastery(swordName)
	local swordText = tostring(swordName or "")
	local swordKey = normalizeMobName(swordText)
	local playerData = getPlayerData()
	local mastery = playerData and playerData:FindFirstChild("Mastery")
	local swordMastery = mastery and mastery:FindFirstChild("Sword")
	local swordFolder = swordMastery and swordMastery:FindFirstChild(swordText)

	if not swordFolder and swordMastery then
		for _, child in next, swordMastery:GetChildren() do
			if normalizeMobName(child.Name) == swordKey then
				swordFolder = child
				break
			end
		end
	end

	local levelValue = swordFolder and (swordFolder:FindFirstChild(swordText .. "Level") or swordFolder:FindFirstChild("Level"))

	if not levelValue and swordFolder then
		for _, child in next, swordFolder:GetChildren() do
			if child:IsA("ValueBase") and string.find(normalizeMobName(child.Name), "level", 1, true) then
				levelValue = child
				break
			end
		end
	end

	local masteryLevel = tonumber(levelValue and levelValue.Value) or 0

	if masteryLevel < 0 then
		masteryLevel = 0
	end

	setStatus("SwordMastery" .. Config.SwordSelector.GetStatusName(swordText), masteryLevel)
	setStatus("SwordMasteryPath" .. Config.SwordSelector.GetStatusName(swordText), levelValue and levelValue:GetFullName() or nil)

	return masteryLevel
end

function Config.SwordSelector.ValueMatchesSword(value, swordKey)
	local valueText = tostring(value or "")

	if normalizeMobName(valueText) == swordKey then
		return true
	end

	for itemName in valueText:gmatch("\"([^\"]+)\"") do
		if normalizeMobName(itemName) == swordKey then
			return true
		end
	end

	return false
end

function Config.SwordSelector.ItemMatchesSword(instance, swordKey)
	if instance:IsA("StringValue") then
		return Config.SwordSelector.ValueMatchesSword(instance.Value, swordKey)
	end

	if instance:IsA("BoolValue") then
		return instance.Value == true and normalizeMobName(instance.Name) == swordKey
	end

	if instance:IsA("ObjectValue") and instance.Value then
		return normalizeMobName(instance.Value.Name) == swordKey
	end

	if (instance:IsA("Folder") or instance:IsA("Configuration")) and normalizeMobName(instance.Name) == swordKey then
		return true
	end

	return false
end

function Config.SwordSelector.ScanOwnedContainer(container, swordKey, depth)
	if not container or depth > 8 then
		return nil
	end

	for _, child in next, container:GetChildren() do
		if Config.SwordSelector.ItemMatchesSword(child, swordKey) then
			return child
		end

		local found = Config.SwordSelector.ScanOwnedContainer(child, swordKey, depth + 1)

		if found then
			return found
		end
	end

	return nil
end

function Config.SwordSelector.HasSword(swordName)
	local swordText = tostring(swordName or "")
	local swordKey = normalizeMobName(swordText)
	local statusName = Config.SwordSelector.GetStatusName(swordText)
	local character = LocalPlayer.Character
	local backpack = waitForBackpack()
	local tool = character and findToolByName(swordText, character, backpack)

	if tool then
		setStatus("SwordOwned" .. statusName, true)
		setStatus("SwordOwnedPath" .. statusName, tool:GetFullName())

		return true
	end

	local playerData = getPlayerData()
	local ownedItem = nil

	for _, containerName in next, { "Sword", "Inventory", "Swords", "OwnedSwords", "Items", "Weapons" } do
		ownedItem = Config.SwordSelector.ScanOwnedContainer(playerData and playerData:FindFirstChild(containerName), swordKey, 0)

		if ownedItem then
			break
		end
	end

	setStatus("SwordOwned" .. statusName, ownedItem ~= nil)
	setStatus("SwordOwnedPath" .. statusName, ownedItem and ownedItem:GetFullName() or nil)

	return ownedItem ~= nil
end

function Config.SwordSelector.SelectTool()
	if not Config.SwordMasterySwitch.Enabled then
		setStatus("SelectedSword", Config.PreferTool)
		setStatus("SelectedSwordReason", "mastery_switch_disabled")

		return Config.PreferTool
	end

	local targetMastery = Config.SwordMasterySwitch.TargetMastery
	local baseSword = Config.SwordMasterySwitch.BaseSword
	local secondarySword = Config.SwordMasterySwitch.SecondarySword
	local finalSword = Config.SwordMasterySwitch.FinalSword
	local baseMastery = Config.SwordSelector.GetMastery(baseSword)
	local secondaryMastery = Config.SwordSelector.GetMastery(secondarySword)
	local finalMastery = Config.SwordSelector.GetMastery(finalSword)
	local baseOwned = Config.SwordSelector.HasSword(baseSword)
	local secondaryOwned = Config.SwordSelector.HasSword(secondarySword)
	local finalOwned = Config.SwordSelector.HasSword(finalSword)
	local selectedSword = baseSword
	local reason = "base_training"

	if not baseOwned then
		if finalOwned then
			selectedSword = finalSword
			reason = "base_missing_final_owned"
		elseif secondaryOwned then
			selectedSword = secondarySword
			reason = "base_missing_secondary_owned"
		else
			reason = "base_missing"
		end
	elseif baseMastery < targetMastery then
		selectedSword = baseSword
		reason = "base_mastery_below_target"
	elseif secondaryOwned and secondaryMastery < targetMastery then
		selectedSword = secondarySword
		reason = "secondary_mastery_below_target"
	elseif finalOwned and finalMastery < targetMastery then
		selectedSword = finalSword
		reason = "final_mastery_below_target"
	elseif finalOwned then
		selectedSword = finalSword
		reason = "final_owned"
	elseif secondaryOwned then
		selectedSword = baseSword
		reason = "secondary_mastery_done_final_missing"
	else
		selectedSword = baseSword
		reason = "waiting_secondary_or_final_drop"
	end

	Config.PreferTool = selectedSword
	setStatus("SwordMasteryTarget", targetMastery)
	setStatus("SwordSwitchEnabled", true)
	setStatus("SelectedSword", selectedSword)
	setStatus("SelectedSwordReason", reason)
	setStatus("SelectedSwordMastery", selectedSword == finalSword and finalMastery or (selectedSword == secondarySword and secondaryMastery or baseMastery))

	return selectedSword
end

function Config.Sea3Gate.GetGems()
	local gems = tonumber(getValue(getPlayerData(), "Gems", 0)) or 0

	setStatus("Sea3Gems", gems)
	setStatus("Sea3RequiredGems", Config.Sea3RequiredGems)

	return gems
end

function Config.Sea3Gate.CheckSwordMastery()
	local allReady = true
	local missing = {}

	setStatus("Sea3RequiredSwordMastery", Config.Sea3RequiredSwordMastery)

	for _, swordName in next, Config.Sea3RequiredSwords do
		local mastery = Config.SwordSelector.GetMastery(swordName)
		local ready = mastery >= Config.Sea3RequiredSwordMastery
		local statusName = Config.SwordSelector.GetStatusName(swordName)

		setStatus("Sea3" .. statusName .. "MasteryReady", ready)

		if not ready then
			allReady = false
			table.insert(missing, swordName .. ":" .. tostring(mastery) .. "/" .. tostring(Config.Sea3RequiredSwordMastery))
		end
	end

	setStatus("Sea3SwordMasteryReady", allReady)
	setStatus("Sea3MissingSwordMastery", #missing > 0 and table.concat(missing, ", ") or nil)

	return allReady
end

function Config.Sea3Gate.IsReady(level)
	level = tonumber(level) or getLevel()

	local levelReady = level >= Config.Sea3RequiredLevel
	local gems = Config.Sea3Gate.GetGems()
	local gemsReady = gems >= Config.Sea3RequiredGems
	local masteryReady = Config.Sea3Gate.CheckSwordMastery()
	local ready = levelReady and gemsReady and masteryReady
	local blockReason = "ready"

	if not levelReady then
		blockReason = "level"
	elseif not masteryReady then
		blockReason = "sword_mastery"
	elseif not gemsReady then
		blockReason = "gems"
	end

	setStatus("Sea3GateLevel", level)
	setStatus("Sea3RequiredLevel", Config.Sea3RequiredLevel)
	setStatus("Sea3GateLevelReady", levelReady)
	setStatus("Sea3GemsReady", gemsReady)
	setStatus("Sea3GateReady", ready)
	setStatus("Sea3GateBlockReason", blockReason)

	return ready
end

local function getInventoryEquipRemote()
	local inventoryGui = PlayerGui and PlayerGui:FindFirstChild("Inventory")
	local equipRemote = inventoryGui and inventoryGui:FindFirstChild("Equip")

	return equipRemote and equipRemote:IsA("RemoteFunction") and equipRemote or nil
end

local function equipInventoryItem(toolName)
	if not toolName or toolName == "" then
		return nil
	end

	local equipRemote = getInventoryEquipRemote()

	if not equipRemote then
		setStatus("InventoryEquip", "missing_remote")

		return nil
	end

	local success, result = pcall(function()
		return equipRemote:InvokeServer(toolName)
	end)

	setStatus("InventoryEquip", success and "called" or "failed")
	setStatus("InventoryEquipResult", tostring(result))
	task.wait(0.35)

	local character = LocalPlayer.Character
	local backpack = waitForBackpack()

	return character and findToolByName(toolName, character, backpack) or nil
end

local function chooseBestTool(character, backpack)
	local bestTool = nil
	local bestScore = -math.huge

	local function considerTool(tool)
		local score = getToolScore(tool)

		if score > bestScore then
			bestTool = tool
			bestScore = score
		end
	end

	for _, tool in next, character:GetChildren() do
		if tool:IsA("Tool") then
			considerTool(tool)
		end
	end

	if backpack then
		for _, tool in next, backpack:GetChildren() do
			if tool:IsA("Tool") then
				considerTool(tool)
			end
		end
	end

	return bestTool, bestScore
end

local function equipToolWithRetry(tool, humanoid, character)
	if not tool or not tool:IsA("Tool") then
		setStatus("LastEquipResult", "no_tool")

		return nil
	end

	local toolName = tool.Name

	setStatus("LastEquipTool", toolName)

	for attempt = 1, Config.EquipRetryCount do
		local equippedTool = character:FindFirstChildOfClass("Tool")

		if equippedTool and equippedTool.Name == toolName then
			setStatus("LastEquipResult", "equipped")
			setStatus("LastEquippedTool", equippedTool.Name)
			setStatus("LastEquipAttempt", attempt)

			return equippedTool
		end

		if not tool:IsDescendantOf(game) then
			tool = findToolByName(toolName, character, waitForBackpack())

			if not tool then
				setStatus("LastEquipResult", "tool_missing")

				return equippedTool
			end
		end

		pcall(function()
			if equippedTool and equippedTool ~= tool then
				humanoid:UnequipTools()
			end
		end)

		task.wait(0.03)

		pcall(function()
			humanoid:EquipTool(tool)
		end)

		setStatus("LastEquipAttempt", attempt)
		task.wait(Config.EquipRetryDelay)
	end

	local equippedTool = character:FindFirstChildOfClass("Tool")

	setStatus("LastEquipResult", equippedTool and (equippedTool.Name == toolName and "equipped_late" or "wrong_tool") or "failed")
	setStatus("LastEquippedTool", equippedTool and equippedTool.Name or nil)

	return equippedTool and equippedTool.Name == toolName and equippedTool or nil
end

local function getPreferredTool()
	local character, humanoid = getCharacter()
	local backpack = waitForBackpack()

	if Config.SwordSelector and type(Config.SwordSelector.SelectTool) == "function" then
		Config.SwordSelector.SelectTool()
	end

	if Config.PreferTool then
		local preferredTool = findToolByName(Config.PreferTool, character, backpack)

		if not preferredTool then
			preferredTool = equipInventoryItem(Config.PreferTool)
			character, humanoid = getCharacter()
			backpack = waitForBackpack()
		end

		setStatus("LastToolCandidate", preferredTool and preferredTool.Name or nil)
		setStatus("LastToolCandidateScore", preferredTool and getToolScore(preferredTool) or nil)

		local equippedPreferredTool = equipToolWithRetry(preferredTool, humanoid, character)

		if equippedPreferredTool then
			return equippedPreferredTool
		end

		if Config.RequirePreferTool then
			setStatus("LastEquipResult", "preferred_tool_missing")
			return nil
		end
	end

	local bestTool, bestScore = chooseBestTool(character, backpack)

	setStatus("LastToolCandidate", bestTool and bestTool.Name or nil)
	setStatus("LastToolCandidateScore", bestTool and bestScore or nil)

	if bestTool then
		local equippedBestTool = equipToolWithRetry(bestTool, humanoid, character)

		if equippedBestTool then
			return equippedBestTool
		end
	end

	local equippedTool = character:FindFirstChildOfClass("Tool")

	if equippedTool then
		return equippedTool
	end

	if backpack then
		for _, tool in next, backpack:GetChildren() do
			if tool:IsA("Tool") then
				local equippedFallbackTool = equipToolWithRetry(tool, humanoid, character)

				if equippedFallbackTool then
					return equippedFallbackTool
				end
			end
		end
	end

	return character:FindFirstChildOfClass("Tool")
end

local function updateToolMouse(tool, targetRoot)
	local remote = tool and tool:FindFirstChild("UpdateMousePosition", true)

	if remote and remote:IsA("RemoteEvent") then
		pcall(function()
			remote:FireServer(targetRoot.Position)
		end)
	end
end

local function attackTarget(target)
	if tick() - LastAttack < Config.AttackDelay then
		return false
	end

	local targetRoot = getRootPart(target)

	if not targetRoot then
		return false
	end

	lockHoverCFrame(targetRoot, true)
	ensureAutoHaki(target)

	local tool = getPreferredTool()

	if not tool then
		return false
	end

	LastAttack = tick()

	for attackIndex = 1, Config.AttackBurst do
		lockHoverCFrame(targetRoot, true)
		updateToolMouse(tool, targetRoot)
		pcall(function()
			tool:Activate()
		end)

		if attackIndex < Config.AttackBurst then
			task.wait(Config.AttackBurstDelay)
		end
	end

	return true
end

function Config.DragonIsland.IsActive(level)
	level = tonumber(level) or getLevel()

	return Config.DragonIslandLock.Enabled
		and level >= Config.DragonIslandLock.StartLevel
		and (
			level < Config.DragonIslandLock.EndLevel
			or (level >= Config.Sea3RequiredLevel and not Config.Sea3Gate.IsReady(level))
		)
end

function Config.DragonIsland.MatchesConfiguredName(value, targetName)
	local valueKey = normalizeMobName(value)
	local targetKey = normalizeMobName(targetName)

	if valueKey ~= "" and valueKey == targetKey then
		return true
	end

	local aliases = Config.MobNameAliases and Config.MobNameAliases[targetName]

	if type(aliases) == "table" then
		for _, alias in next, aliases do
			if valueKey ~= "" and valueKey == normalizeMobName(alias) then
				return true
			end
		end
	end

	return false
end

function Config.DragonIsland.IsQuestObjective(objective)
	for _, targetName in next, Config.DragonIslandLock.QuestNames do
		if Config.DragonIsland.MatchesConfiguredName(objective, targetName) then
			return true, targetName
		end
	end

	return false, nil
end

function Config.DragonIsland.GetQuestByName(targetName)
	local best = nil
	local level = getLevel()

	for _, quest in next, getQuestCache(false) do
		if quest.Level <= level and Config.DragonIsland.MatchesConfiguredName(quest.MobName, targetName) then
			if not best or quest.Level > best.Level then
				best = quest
			end
		end
	end

	return best
end

function Config.DragonIsland.GetServerRoster(force)
	if not force
		and #Config.DragonIsland.CachedServerRoster > 0
		and tick() - Config.DragonIsland.LastServerRosterRefresh < Config.DragonIslandLock.RosterRefreshDelay
	then
		return Config.DragonIsland.CachedServerRoster
	end

	local roster = {}

	for _, player in next, Players:GetPlayers() do
		if player and player.Parent == Players then
			table.insert(roster, player)
		end
	end

	table.sort(roster, function(left, right)
		if left.UserId == right.UserId then
			return left.Name < right.Name
		end

		return left.UserId < right.UserId
	end)

	local names = {}

	for index = 1, #roster do
		names[index] = roster[index].Name
	end

	Config.DragonIsland.CachedServerRoster = roster
	Config.DragonIsland.LastServerRosterRefresh = tick()
	setStatus("DragonServerRosterCount", #roster)
	setStatus("DragonServerRosterNames", table.concat(names, ", "))

	return Config.DragonIsland.CachedServerRoster
end

function Config.DragonIsland.GetBotSlot()
	if Config.DragonIslandLock.AutoBotSlotFromServer then
		local roster = Config.DragonIsland.GetServerRoster(false)
		local rosterCount = #roster
		local rosterSlot = nil

		for index = 1, rosterCount do
			local player = roster[index]

			if player == LocalPlayer or player.UserId == LocalPlayer.UserId then
				rosterSlot = index
				break
			end
		end

		if rosterSlot then
			if Config.DragonIslandLock.AutoBotCountFromServer then
				Config.DragonIslandLock.BotCount = math.max(1, rosterCount)
			else
				Config.DragonIslandLock.BotCount = math.max(1, math.floor(tonumber(Config.DragonIslandLock.BotCount) or 1))
			end

			Config.DragonIslandLock.BotSlot = ((rosterSlot - 1) % Config.DragonIslandLock.BotCount) + 1
			setStatus("DragonAutoBotSlotFromServer", true)

			return Config.DragonIslandLock.BotSlot, Config.DragonIslandLock.BotCount
		end
	end

	Config.DragonIslandLock.BotCount = math.max(1, math.floor(tonumber(Config.DragonIslandLock.BotCount) or 1))
	Config.DragonIslandLock.BotSlot = ((math.floor(tonumber(Config.DragonIslandLock.BotSlot) or 1) - 1) % Config.DragonIslandLock.BotCount) + 1
	setStatus("DragonAutoBotSlotFromServer", false)

	return Config.DragonIslandLock.BotSlot, Config.DragonIslandLock.BotCount
end

function Config.DragonIsland.ShouldSplitTargets(level)
	level = tonumber(level) or getLevel()

	return Config.DragonIsland.IsActive(level)
		and Config.DragonIslandLock.SplitFarmTargets
		and level >= Config.DragonIslandLock.SplitStartLevel
end

function Config.DragonIsland.GetQuestTargetIndex(level)
	local questCount = #Config.DragonIslandLock.QuestNames

	if questCount <= 0 then
		return nil
	end

	local botSlot, botCount = Config.DragonIsland.GetBotSlot()

	if Config.DragonIslandLock.SplitQuestTargets and Config.DragonIsland.ShouldSplitTargets(level) and botCount > 1 then
		return ((botSlot - 1) % questCount) + 1
	end

	if Config.DragonIsland.QuestIndex <= 0 then
		Config.DragonIsland.QuestIndex = 1
	elseif tick() - Config.DragonIsland.LastQuestSelectAt >= Config.DragonIslandLock.QuestRotateDelay then
		Config.DragonIsland.QuestIndex = (Config.DragonIsland.QuestIndex % questCount) + 1
	end

	Config.DragonIsland.LastQuestSelectAt = tick()

	return Config.DragonIsland.QuestIndex
end

function Config.DragonIsland.SelectQuest(level)
	if not Config.DragonIsland.IsActive(level) then
		return nil, nil
	end

	local questCount = #Config.DragonIslandLock.QuestNames
	local startIndex = Config.DragonIsland.GetQuestTargetIndex(level) or 1

	for offset = 0, questCount - 1 do
		local index = ((startIndex + offset - 1) % questCount) + 1
		local targetName = Config.DragonIslandLock.QuestNames[index]
		local quest = Config.DragonIsland.GetQuestByName(targetName)

		if quest then
			setStatus("DragonIslandLock", "active")
			setStatus("DragonIslandQuestTarget", targetName)
			setStatus("DragonIslandQuest", quest.LevelName .. " " .. quest.MobName)
			setStatus("DragonAwakenSoulTarget", Config.DragonIslandLock.AwakenSoulTarget)

			return quest, "dragon_island_lock"
		end
	end

	setStatus("DragonIslandLock", "no_quest")

	return nil, "dragon_island_no_quest"
end

function Config.DragonIsland.ShouldCancelQuest(objective, level)
	if not Config.DragonIsland.IsActive(level) or objective == "" then
		return false, nil
	end

	if Config.DragonIsland.IsQuestObjective(objective) then
		return false, nil
	end

	return true, Config.DragonIsland.SelectQuest(level)
end

function Config.DragonIsland.GetTargetStableKey(model)
	local root = getRootPart(model)
	local position = root and root.Position or Vector3.zero
	local success, path = pcall(function()
		return model:GetFullName()
	end)

	return string.format(
		"%s|%s|%d|%d|%d",
		tostring(model and model.Name or ""),
		success and tostring(path) or "",
		math.floor(position.X * 10),
		math.floor(position.Y * 10),
		math.floor(position.Z * 10)
	)
end

function Config.DragonIsland.GetTargetCrowdCount(model)
	if not Config.DragonIslandLock.AvoidCrowdedTargets then
		return 0
	end

	local targetRoot = getRootPart(model)

	if not targetRoot then
		return 0
	end

	local count = 0

	for _, player in next, Players:GetPlayers() do
		if player ~= LocalPlayer then
			local character = player.Character
			local root = character and character:FindFirstChild("HumanoidRootPart")

			if root and (root.Position - targetRoot.Position).Magnitude <= Config.DragonIslandLock.TargetClaimDistance then
				count = count + 1
			end
		end
	end

	return count
end

function Config.DragonIsland.ChooseClosestCandidate(candidates)
	local bestCandidate = nil
	local bestScore = math.huge

	for _, candidate in next, candidates do
		local crowdCount = Config.DragonIsland.GetTargetCrowdCount(candidate.Model)
		local score = (crowdCount * 1000000) + candidate.Distance

		candidate.CrowdCount = crowdCount

		if score < bestScore then
			bestCandidate = candidate
			bestScore = score
		end
	end

	return bestCandidate
end

function Config.DragonIsland.ChooseFarmCandidate(candidates, level)
	local candidateCount = #candidates

	setStatus("DragonFarmCandidateCount", candidateCount)

	if candidateCount <= 0 then
		setStatus("DragonSplitPoolCount", 0)
		setStatus("DragonTargetAssignedIndex", nil)
		setStatus("DragonTargetCrowdCount", nil)

		return nil
	end

	for index = 1, candidateCount do
		candidates[index].StableKey = Config.DragonIsland.GetTargetStableKey(candidates[index].Model)
	end

	table.sort(candidates, function(left, right)
		return left.StableKey < right.StableKey
	end)

	local botSlot, botCount = Config.DragonIsland.GetBotSlot()
	local splitPool = {}

	for index = 1, candidateCount do
		local candidate = candidates[index]

		candidate.AssignedIndex = index

		if not Config.DragonIsland.ShouldSplitTargets(level) or ((index - botSlot) % botCount) == 0 then
			table.insert(splitPool, candidate)
		end
	end

	if #splitPool == 0 then
		splitPool = candidates
	end

	local bestCandidate = Config.DragonIsland.ChooseClosestCandidate(splitPool)

	setStatus("DragonBotSlot", botSlot)
	setStatus("DragonBotCount", botCount)
	setStatus("DragonSplitFarmTargets", Config.DragonIsland.ShouldSplitTargets(level))
	setStatus("DragonSplitPoolCount", #splitPool)
	setStatus("DragonTargetAssignedIndex", bestCandidate and bestCandidate.AssignedIndex or nil)
	setStatus("DragonTargetCrowdCount", bestCandidate and bestCandidate.CrowdCount or nil)
	setStatus("DragonTargetStableKey", bestCandidate and bestCandidate.StableKey or nil)

	return bestCandidate and bestCandidate.Model or nil
end

function Config.DragonIsland.FindFarmTarget(targetName, level)
	refreshNpcContainers(false)

	local _, _, playerRoot = getCharacter()
	local candidates = {}

	local function scanModel(model)
		local matchesTarget, matchedName, matchedMobName = matchesTargetMob(model, targetName)

		if matchesTarget and isAliveMob(model) then
			local root = getRootPart(model)

			if root then
				table.insert(candidates, {
					Model = model,
					TargetName = targetName,
					MatchedName = matchedName,
					MatchedMobName = matchedMobName,
					Distance = playerRoot and (root.Position - playerRoot.Position).Magnitude or 0,
				})
			end
		end
	end

	local function scanContainer(container, depth)
		if depth > Config.MobSearchDepth then
			return
		end

		for _, child in next, container:GetChildren() do
			if child:IsA("Model") then
				scanModel(child)
			end

			if child:IsA("Folder") or child:IsA("Model") then
				scanContainer(child, depth + 1)
			end
		end
	end

	for _, container in next, NpcContainers do
		if container and container:IsDescendantOf(workspace) then
			scanContainer(container, 0)
		end
	end

	local target = Config.DragonIsland.ChooseFarmCandidate(candidates, level)

	setStatus("DragonTargetName", targetName)
	setStatus("DragonTargetFound", target and target.Name or nil)
	setStatus("DragonTargetPath", target and target:GetFullName() or nil)

	return target
end

function Config.DragonIsland.FindAwakenBoss()
	local bossName = Config.DragonIslandLock.AwakenBossName
	local target = findMob(bossName)

	if target then
		return target
	end

	local _, _, playerRoot = getCharacter()
	local closestDistance = math.huge

	local function scan(container, depth)
		if not container or depth > Config.DragonIslandLock.WorkspaceSearchDepth then
			return
		end

		for _, child in next, container:GetChildren() do
			if child:IsA("Model") and matchesTargetMob(child, bossName) and isAliveMob(child) then
				local root = getRootPart(child)
				local distance = root and playerRoot and (root.Position - playerRoot.Position).Magnitude or math.huge

				if distance < closestDistance then
					target = child
					closestDistance = distance
				end
			end

			if child:IsA("Folder") or child:IsA("Model") then
				scan(child, depth + 1)
			end
		end
	end

	scan(workspace, 0)

	return target
end

function Config.DragonIsland.HandleAwakenBoss(level)
	if not Config.DragonIsland.IsActive(level) then
		return false
	end

	local target = Config.DragonIsland.FindAwakenBoss()

	setStatus("DragonBossFound", target and target.Name or nil)
	setStatus("DragonBossPath", target and target:GetFullName() or nil)

	if not target then
		return false
	end

	CurrentTarget = target
	setStatus("DragonBossPriority", "fighting")
	setStatus("State", "farming_dragon_boss")
	setStatus("SelectedQuestReason", "dragon_boss_awakened")
	setStatus("LastTargetSearch", Config.DragonIslandLock.AwakenBossName)
	setStatus("LastTargetFound", target.Name)
	setStatus("LastTargetPath", target:GetFullName())

	local _, _, root = getCharacter()
	local targetRoot = getRootPart(target)

	if not targetRoot then
		return true
	end

	local targetCFrame = getHoverCFrame(targetRoot)
	local distance = root and (root.Position - targetRoot.Position).Magnitude or math.huge

	if distance > Config.DirectLockDistance then
		travelToCFrame(targetCFrame)
	elseif distance > Config.TeleportDistance then
		lockHoverCFrame(targetRoot, true)
	else
		lockHoverCFrame(targetRoot, true)
	end

	attackTarget(target)

	return true
end

function Config.DragonIsland.GetSuperBossMarkerText(model)
	if not model then
		return ""
	end

	local text = { model.Name }
	local success, path = pcall(function()
		return model:GetFullName()
	end)

	if success then
		table.insert(text, path)
	end

	for _, attributeName in next, {
		"SuperBoss",
		"IsSuperBoss",
		"WorldBoss",
		"IsWorldBoss",
		"Boss",
		"IsBoss",
		"BossType",
		"NPCType",
		"Category",
		"SpawnType",
		"EventType",
	} do
		local value = model:GetAttribute(attributeName)

		if value ~= nil then
			table.insert(text, attributeName .. "=" .. tostring(value))
		end
	end

	for _, child in next, model:GetChildren() do
		if child:IsA("ValueBase") then
			local lowerName = child.Name:lower()

			if lowerName:find("boss", 1, true)
				or lowerName:find("spawn", 1, true)
				or lowerName:find("type", 1, true)
				or lowerName:find("category", 1, true)
			then
				table.insert(text, child.Name .. "=" .. tostring(child.Value))
			end
		end
	end

	local collectionService = game:GetService("CollectionService")

	for _, tag in next, collectionService:GetTags(model) do
		table.insert(text, tag)
	end

	return table.concat(text, " "):lower()
end

function Config.DragonIsland.IsKnownSuperBoss(model)
	local mobNames = getMobNames(model)

	for _, mobName in next, mobNames do
		local mobKey = normalizeMobName(mobName)

		for _, bossName in next, Config.DragonIslandLock.SuperBossNames do
			if mobKey ~= "" and mobKey == normalizeMobName(bossName) then
				return true
			end
		end
	end

	return false
end

function Config.DragonIsland.HasSuperBossMarker(model, markerText)
	markerText = markerText or Config.DragonIsland.GetSuperBossMarkerText(model)

	local compactText = markerText:gsub("[^%w]", "")

	if compactText:find("superboss", 1, true) or compactText:find("worldboss", 1, true) then
		return true
	end

	local hasBossMarker = compactText:find("boss", 1, true) ~= nil
	local hasTimedMarker = compactText:find("timed", 1, true) ~= nil
		or compactText:find("random", 1, true) ~= nil
		or compactText:find("worldevent", 1, true) ~= nil
		or compactText:find("seaevent", 1, true) ~= nil

	return hasBossMarker and hasTimedMarker
end

function Config.DragonIsland.IsWaterSuperBoss(model, markerText)
	local root = getRootPart(model)

	if not root then
		return false
	end

	markerText = markerText or Config.DragonIsland.GetSuperBossMarkerText(model)

	for _, waterWord in next, {
		"sea beast",
		"seabeast",
		"sea king",
		"sea monster",
		"ghost ship",
		"ocean",
		"underwater",
		"water boss",
		"kraken",
		"leviathan",
		"cthulhu",
	} do
		if markerText:find(waterWord, 1, true) then
			return true
		end
	end

	local probeSize = Config.DragonIslandLock.SuperBossWaterProbeSize
	local extent = Vector3.new(probeSize, probeSize, probeSize)
	local region = Region3.new(root.Position - extent, root.Position + extent):ExpandToGrid(4)
	local success, materials = pcall(function()
		return workspace.Terrain:ReadVoxels(region, 4)
	end)

	if success and materials then
		for x = 1, #materials do
			for y = 1, #materials[x] do
				for z = 1, #materials[x][y] do
					if materials[x][y][z] == Enum.Material.Water then
						return true
					end
				end
			end
		end
	end

	local raycastParams = RaycastParams.new()

	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	raycastParams.FilterDescendantsInstances = { model, LocalPlayer.Character }
	raycastParams.IgnoreWater = false

	local raycastResult = workspace:Raycast(
		root.Position + Vector3.new(0, probeSize, 0),
		Vector3.new(0, -(probeSize * 5), 0),
		raycastParams
	)

	return raycastResult ~= nil and raycastResult.Material == Enum.Material.Water
end

function Config.DragonIsland.IsSuperBossModel(model)
	if not model
		or not model:IsA("Model")
		or model == LocalPlayer.Character
		or Players:GetPlayerFromCharacter(model)
		or not getHumanoid(model)
		or not getRootPart(model)
		or not isAliveMob(model)
	then
		return false
	end

	if matchesTargetMob(model, Config.DragonIslandLock.AwakenBossName) then
		return false
	end

	if Config.DragonIsland.IsKnownSuperBoss(model) then
		return true
	end

	local markerText = Config.DragonIsland.GetSuperBossMarkerText(model)
	local hasSuperBossMarker = Config.DragonIsland.HasSuperBossMarker(model, markerText)

	if hasSuperBossMarker then
		return true
	end

	local bossLike = markerText:find("boss", 1, true) ~= nil

	return bossLike and Config.DragonIsland.IsWaterSuperBoss(model, markerText)
end

function Config.DragonIsland.FindSuperBoss()
	if Config.DragonIsland.SuperBossTarget
		and isAliveMob(Config.DragonIsland.SuperBossTarget)
		and Config.DragonIsland.IsSuperBossModel(Config.DragonIsland.SuperBossTarget)
	then
		return Config.DragonIsland.SuperBossTarget
	end

	if tick() - Config.DragonIsland.LastSuperBossCheck < Config.DragonIslandLock.SuperBossCheckDelay then
		return nil
	end

	Config.DragonIsland.LastSuperBossCheck = tick()
	Config.DragonIsland.SuperBossTarget = nil

	local _, _, playerRoot = getCharacter()
	local closestDistance = math.huge

	local function scan(container, depth)
		if not container or depth > Config.DragonIslandLock.SuperBossSearchDepth then
			return
		end

		for _, child in next, container:GetChildren() do
			if child:IsA("Model") and Config.DragonIsland.IsSuperBossModel(child) then
				local root = getRootPart(child)
				local distance = root and playerRoot and (root.Position - playerRoot.Position).Magnitude or math.huge

				if distance < closestDistance then
					Config.DragonIsland.SuperBossTarget = child
					closestDistance = distance
				end
			end

			if child:IsA("Folder") or child:IsA("Model") then
				scan(child, depth + 1)
			end
		end
	end

	scan(workspace, 0)

	setStatus("SuperBossCheckAt", Config.DragonIsland.LastSuperBossCheck)
	setStatus("SuperBossFound", Config.DragonIsland.SuperBossTarget and Config.DragonIsland.SuperBossTarget.Name or nil)
	setStatus("SuperBossPath", Config.DragonIsland.SuperBossTarget and Config.DragonIsland.SuperBossTarget:GetFullName() or nil)

	return Config.DragonIsland.SuperBossTarget
end

function Config.DragonIsland.HandleSuperBoss(level)
	if not Config.DragonIslandLock.SuperBossPriority or not Config.DragonIsland.IsActive(level) then
		return false
	end

	local target = Config.DragonIsland.FindSuperBoss()

	if not target then
		setStatus("SuperBossPriority", "waiting_spawn")

		return false
	end

	CurrentTarget = target
	setStatus("SuperBossPriority", "fighting")
	setStatus("State", "farming_super_boss")
	setStatus("SelectedQuestReason", "super_boss_spawned")
	setStatus("LastTargetSearch", target.Name)
	setStatus("LastTargetFound", target.Name)
	setStatus("LastTargetPath", target:GetFullName())

	local _, _, root = getCharacter()
	local targetRoot = getRootPart(target)

	if not targetRoot then
		return true
	end

	local targetCFrame = getHoverCFrame(targetRoot)
	local distance = root and (root.Position - targetRoot.Position).Magnitude or math.huge

	if distance > Config.DirectLockDistance then
		travelToCFrame(targetCFrame)
	else
		lockHoverCFrame(targetRoot, true)
	end

	attackTarget(target)

	return true
end

function Config.DragonIsland.FindTargetForObjective(objective, level)
	if Config.DragonIsland.IsActive(level) and Config.DragonIsland.IsQuestObjective(objective) then
		return Config.DragonIsland.FindFarmTarget(objective, level)
	end

	return findMob(objective)
end

function PriorityBoss.GetKey(priorityConfig)
	return tostring(priorityConfig and (priorityConfig.StatusPrefix or priorityConfig.BossName or priorityConfig.SwordName) or "PriorityBoss")
end

function PriorityBoss.GetStatusKey(priorityConfig, suffix)
	return PriorityBoss.GetKey(priorityConfig) .. tostring(suffix or "")
end

function PriorityBoss.GetOwnedState(priorityConfig)
	local swordName = tostring(priorityConfig and priorityConfig.SwordName or "Sword")

	return "owned_" .. string.lower((swordName:gsub("%s+", "_")))
end

function PriorityBoss.HasSword(priorityConfig)
	priorityConfig = priorityConfig or Config.EnmaBossPriority

	local swordName = tostring(priorityConfig.SwordName or "")
	local swordKey = normalizeMobName(swordName)
	local character = LocalPlayer.Character
	local backpack = waitForBackpack()
	local ownedKey = PriorityBoss.GetStatusKey(priorityConfig, "Owned")
	local ownedPathKey = PriorityBoss.GetStatusKey(priorityConfig, "OwnedPath")
	local tool = character and findToolByName(swordName, character, backpack)

	if tool then
		setStatus(ownedKey, true)
		setStatus(ownedPathKey, tool:GetFullName())

		return true
	end

	local function valueMatchesSword(value)
		local valueText = tostring(value or "")

		if normalizeMobName(valueText) == swordKey then
			return true
		end

		for itemName in valueText:gmatch("\"([^\"]+)\"") do
			if normalizeMobName(itemName) == swordKey then
				return true
			end
		end

		return false
	end

	local function matchesOwnedItem(instance)
		if instance:IsA("StringValue") then
			return valueMatchesSword(instance.Value)
		end

		if instance:IsA("BoolValue") then
			return instance.Value == true and normalizeMobName(instance.Name) == swordKey
		end

		if instance:IsA("ObjectValue") and instance.Value then
			return normalizeMobName(instance.Value.Name) == swordKey
		end

		return false
	end

	local function scan(container, depth)
		if not container or depth > 8 then
			return false
		end

		for _, child in next, container:GetChildren() do
			if matchesOwnedItem(child) then
				setStatus(ownedPathKey, child:GetFullName())

				return true
			end

			if scan(child, depth + 1) then
				return true
			end
		end

		return false
	end

	local playerData = getPlayerData()
	local owned = false

	for _, containerName in next, { "Sword", "Inventory", "Swords", "OwnedSwords", "Items", "Weapons" } do
		if scan(playerData and playerData:FindFirstChild(containerName), 0) then
			owned = true
			break
		end
	end

	setStatus(ownedKey, owned)
	if not owned then
		setStatus(ownedPathKey, nil)
	end

	return owned
end

function PriorityBoss.FindTarget(priorityConfig)
	priorityConfig = priorityConfig or Config.EnmaBossPriority

	local bossKey = PriorityBoss.GetKey(priorityConfig)

	PriorityBoss.Targets = PriorityBoss.Targets or {}

	if tick() - (LastPriorityBossCheck[bossKey] or 0) < priorityConfig.CheckDelay then
		if PriorityBoss.Targets[bossKey] and isAliveMob(PriorityBoss.Targets[bossKey]) then
			return PriorityBoss.Targets[bossKey]
		end

		return nil
	end

	LastPriorityBossCheck[bossKey] = tick()
	refreshNpcContainers(true)

	local bossName = tostring(priorityConfig.BossName or "")
	local target = findMob(bossName)

	if not target then
		local _, _, playerRoot = getCharacter()
		local closestDistance = math.huge

		local function scan(container, depth)
			if not container or depth > priorityConfig.WorkspaceSearchDepth then
				return
			end

			for _, child in next, container:GetChildren() do
				if child:IsA("Model") and matchesTargetMob(child, bossName) and isAliveMob(child) then
					local root = getRootPart(child)
					local distance = root and playerRoot and (root.Position - playerRoot.Position).Magnitude or math.huge

					if distance < closestDistance then
						target = child
						closestDistance = distance
					end
				end

				if child:IsA("Folder") or child:IsA("Model") then
					scan(child, depth + 1)
				end
			end
		end

		scan(workspace, 0)
	end

	PriorityBoss.Target = target
	PriorityBoss.Targets[bossKey] = target
	setStatus(PriorityBoss.GetStatusKey(priorityConfig, "BossFound"), target and target.Name or nil)
	setStatus(PriorityBoss.GetStatusKey(priorityConfig, "BossPath"), target and target:GetFullName() or nil)

	return target
end

function PriorityBoss.HandleOne(priorityConfig)
	if not priorityConfig or priorityConfig.Enabled == false then
		return false, true
	end

	local bossKey = PriorityBoss.GetKey(priorityConfig)
	local priorityKey = PriorityBoss.GetStatusKey(priorityConfig, "BossPriority")
	local bossName = tostring(priorityConfig.BossName or "")

	if PriorityBoss.HasSword(priorityConfig) then
		PriorityBoss.Targets = PriorityBoss.Targets or {}
		PriorityBoss.Targets[bossKey] = nil
		PriorityBoss.Target = nil
		setStatus(priorityKey, PriorityBoss.GetOwnedState(priorityConfig))

		return false, true
	end

	local target = PriorityBoss.FindTarget(priorityConfig)

	if not target then
		setStatus(priorityKey, "waiting_spawn")
		setStatus("PriorityBossActive", bossName)

		return false, false
	end

	CurrentTarget = target
	PriorityBoss.Target = target
	setStatus(priorityKey, "fighting")
	setStatus("PriorityBossActive", bossName)
	setStatus("State", priorityConfig.StateName)
	setStatus("SelectedQuestReason", priorityConfig.Reason)
	setStatus("LastTargetSearch", bossName)
	setStatus("LastTargetFound", target.Name)
	setStatus("LastTargetPath", target:GetFullName())

	local _, _, root = getCharacter()
	local targetRoot = getRootPart(target)

	if not targetRoot then
		PriorityBoss.Targets = PriorityBoss.Targets or {}
		PriorityBoss.Targets[bossKey] = nil
		PriorityBoss.Target = nil

		return true, false
	end

	local targetCFrame = getHoverCFrame(targetRoot)
	local distance = root and (root.Position - targetRoot.Position).Magnitude or math.huge

	if distance > Config.DirectLockDistance then
		travelToCFrame(targetCFrame)
	elseif distance > Config.TeleportDistance then
		lockHoverCFrame(targetRoot, true)
	else
		lockHoverCFrame(targetRoot, true)
	end

	attackTarget(target)

	return true, false
end

function PriorityBoss.Handle()
	local waitingBossName = nil

	for _, priorityConfig in next, Config.PriorityBosses do
		local handled, completed = PriorityBoss.HandleOne(priorityConfig)

		if handled then
			return true
		end

		if not completed then
			waitingBossName = waitingBossName or tostring(priorityConfig.BossName or "")
		end
	end

	setStatus("PriorityBossActive", waitingBossName)

	return false
end

local function getSea3Gatekeeper()
	local npcWorkspace = workspace:FindFirstChild("Npc_Workspace")
	local sea3Unlocker = npcWorkspace and npcWorkspace:FindFirstChild("Sea3Unlocker")

	return sea3Unlocker and sea3Unlocker:FindFirstChild("Gatekeeper") or nil
end

local function getSea3Interact()
	local gatekeeper = getSea3Gatekeeper()
	local interact = gatekeeper and gatekeeper:FindFirstChild("Interact")

	return interact and interact:IsA("RemoteFunction") and interact or nil
end

local function getSea3TargetText(instance)
	if not instance then
		return ""
	end

	local text = { instance.Name }
	local displayName = instance:FindFirstChild("DisplayName")

	if displayName and displayName:IsA("ValueBase") then
		table.insert(text, tostring(displayName.Value))
	end

	local configuration = instance:FindFirstChild("Configuration")
	local dialogue = configuration and configuration:FindFirstChild("Dialogue")

	if dialogue and dialogue:IsA("ValueBase") then
		table.insert(text, tostring(dialogue.Value))
	end

	local function addOverheadText(container, depth)
		if not container or depth > 5 then
			return
		end

		if container:IsA("TextLabel") or container:IsA("TextButton") then
			local labelText = container.Text

			if labelText ~= "" then
				table.insert(text, labelText)
			end
		end

		for _, child in next, container:GetChildren() do
			addOverheadText(child, depth + 1)
		end
	end

	local overhead = instance:FindFirstChild("NPCOverhead", true)

	if overhead then
		addOverheadText(overhead, 0)
	end

	return table.concat(text, " "):lower()
end

local function isSea3NpcName(name)
	local lowerName = tostring(name):lower()

	return lowerName == "dimensional sailor" or lowerName == "dimensionalsailor"
end

local function isSea3TeleportTarget(instance, allowSailor)
	local targetText = getSea3TargetText(instance)

	if targetText == "" then
		return false
	end

	for _, name in next, Config.Sea3TeleporterNames do
		if not allowSailor and isSea3NpcName(name) then
			continue
		end

		local wanted = tostring(name):lower()

		if targetText == wanted or targetText:find(wanted, 1, true) then
			return true
		end
	end

	return false
end

local function getSea3TeleportTargetInContainer(container, depth, allowSailor)
	if not container or depth > 6 then
		return nil
	end

	for _, child in next, container:GetChildren() do
		if child:IsA("Model") and isSea3TeleportTarget(child, allowSailor) then
			return child
		end

		if child:IsA("RemoteFunction") then
			local parent = child.Parent

			if parent and isSea3TeleportTarget(parent, allowSailor) then
				return child.Parent
			end
		end

		if child:IsA("Folder") or child:IsA("Model") then
			local found = getSea3TeleportTargetInContainer(child, depth + 1, allowSailor)

			if found then
				return found
			end
		end
	end

	return nil
end

local function getSea3TeleportTarget()
	local npcWorkspace = workspace:FindFirstChild("Npc_Workspace")

	if not npcWorkspace then
		return nil
	end

	local spawnSetters = npcWorkspace:FindFirstChild("Spawn Setters")
	local flowerCapital = spawnSetters and spawnSetters:FindFirstChild("Flower Capital")
	local seaTeleporter = npcWorkspace:FindFirstChild("Sea Teleporter")
	local flowerTarget = getSea3TeleportTargetInContainer(flowerCapital, 0, true)

	return flowerTarget
		or getSea3TeleportTargetInContainer(seaTeleporter, 0, false)
		or getSea3TeleportTargetInContainer(npcWorkspace, 0, false)
end

local function getTeleportRemote(target)
	if not target then
		return nil
	end

	if target:IsA("RemoteFunction") then
		return target
	end

	local remote = target:FindFirstChild("Teleport")

	if remote and remote:IsA("RemoteFunction") then
		return remote
	end

	remote = target:FindFirstChild("Interact")

	if remote and remote:IsA("RemoteFunction") then
		return remote
	end

	for _, child in next, target:GetChildren() do
		if child:IsA("RemoteFunction") and child.Name:lower():find("teleport", 1, true) then
			return child
		end
	end

	return nil
end

local function getRedEmperorBattle()
	return workspace:FindFirstChild("RedEmperorBattle")
end

local function getRedEmperorSpawnRemote()
	local battle = getRedEmperorBattle()
	local remote = battle and battle:FindFirstChild("SpawnRedEmp")

	return remote and remote:IsA("RemoteEvent") and remote or nil
end

local function getRedEmperorPlacementCFrame(name)
	local battle = getRedEmperorBattle()
	local placements = battle and battle:FindFirstChild("Placements")
	local part = placements and placements:FindFirstChild(name)

	return part and part:IsA("BasePart") and part.CFrame or nil
end

local function isSea3DialogueText(text)
	text = stripRichText(text):lower()

	return text:find("red emperor", 1, true) ~= nil
		or text:find("sea 3", 1, true) ~= nil
		or text:find("path forward", 1, true) ~= nil
		or text:find("ready", 1, true) ~= nil
end

local function getSea3AcceptButton()
	local tutorialGui = PlayerGui:FindFirstChild("Tutorial_Gui")

	if not tutorialGui or tutorialGui:GetAttribute("Destroying") then
		return nil
	end

	local dialogue = tutorialGui:FindFirstChild("Dialogue", true)
	local dialogueText = dialogue and (dialogue.Text ~= "" and dialogue.Text or dialogue.ContentText) or ""

	if dialogueText ~= "" and not isSea3DialogueText(dialogueText) then
		return nil
	end

	local hesitation = tutorialGui:FindFirstChild("Hesitation", true)
	local accept = hesitation and hesitation:FindFirstChild("Accept")
	local button = accept and accept:FindFirstChild("Button", true)

	if button and button:IsA("GuiButton") and isPlayGuiVisible(button, PlayerGui) then
		return button
	end

	return nil
end

local function clickSea3AcceptPrompt(timeout)
	local startedAt = tick()

	repeat
		local button = getSea3AcceptButton()

		if button then
			local clicked = clickGuiButton(button)

			setStatus("Sea3AcceptClicked", clicked)
			setStatus("Sea3AcceptClickedAt", tick())

			return clicked
		end

		task.wait(0.1)
	until not isRunning() or tick() - startedAt >= timeout

	setStatus("Sea3AcceptClicked", false)

	return false
end

local function triggerSea3GatekeeperPrompt()
	local gatekeeper = getSea3Gatekeeper()
	local prompt = gatekeeper and gatekeeper:FindFirstChild("ProximityPrompt", true)
	local fired = false

	if prompt and typeof(firesignal) == "function" then
		pcall(function()
			firesignal(prompt.Triggered, LocalPlayer)
			fired = true
		end)
	end

	setStatus("Sea3PromptFired", fired)

	return fired
end

local function triggerInstancePrompt(instance)
	local prompt = instance and instance:FindFirstChild("ProximityPrompt", true)
	local fired = false

	if prompt and typeof(firesignal) == "function" then
		pcall(function()
			firesignal(prompt.Triggered, LocalPlayer)
			fired = true
		end)
	end

	return fired
end

local function invokeSea3Gatekeeper(reason)
	if tick() - LastSea3InteractAt < Config.Sea3InteractDelay then
		return false, "Cooldown"
	end

	local interact = getSea3Interact()

	if not interact then
		setStatus("Sea3LastInteractResult", "NoInteract")

		return false, "NoInteract"
	end

	LastSea3InteractAt = tick()
	setStatus("Sea3LastInteractReason", reason)
	setStatus("Sea3LastInteractAt", LastSea3InteractAt)

	task.spawn(function()
		local success, result = pcall(function()
			return interact:InvokeServer()
		end)

		setStatus("Sea3LastInteractSuccess", success)
		setStatus("Sea3LastInteractResult", tostring(result))
	end)

	return true, "Invoked"
end

local function requestRedEmperorSpawn(reason)
	if tick() - LastSea3SpawnAt < Config.Sea3SpawnRetryDelay then
		return false, "Cooldown"
	end

	local remote = getRedEmperorSpawnRemote()

	if not remote then
		setStatus("Sea3LastSpawnResult", "NoSpawnRemote")

		return false, "NoSpawnRemote"
	end

	LastSea3SpawnAt = tick()
	setStatus("Sea3LastSpawnReason", reason)
	setStatus("Sea3LastSpawnAt", LastSea3SpawnAt)

	local success, result = pcall(function()
		remote:FireServer()
	end)

	setStatus("Sea3LastSpawnSuccess", success)
	setStatus("Sea3LastSpawnResult", tostring(result))

	return success, result
end

local function findRedEmperorInContainer(container, depth)
	if not container or depth > 8 then
		return nil
	end

	for _, child in next, container:GetChildren() do
		if child:IsA("Model") then
			local matchesTheRedEmperor = matchesTargetMob(child, "The Red Emperor")
			local matchesRedEmperor = matchesTargetMob(child, "Red Emperor")

			if (matchesTheRedEmperor or matchesRedEmperor) and isAliveMob(child) then
				return child
			end
		end

		if child:IsA("Folder") or child:IsA("Model") then
			local found = findRedEmperorInContainer(child, depth + 1)

			if found then
				return found
			end
		end
	end

	return nil
end

local function findRedEmperorMob()
	local target = findMob("The Red Emperor") or findMob("Red Emperor")

	if target and isAliveMob(target) then
		return target
	end

	for _, root in next, {
		NpcZones,
		getRedEmperorBattle(),
		workspace:FindFirstChild("Logic"),
		workspace,
	} do
		target = findRedEmperorInContainer(root, 0)

		if target then
			return target
		end
	end

	return nil
end

local function moveToRedEmperorBattle()
	local cframe = getRedEmperorPlacementCFrame("PlayerCFrame") or getRedEmperorPlacementCFrame("RedEmpCFrame")

	if not cframe then
		return false
	end

	setCharacterCFrame(cframe + Vector3.new(0, Config.HoverHeight, 0))
	task.wait(Config.Sea3MoveToBattleDelay)
	refreshNpcContainers(true)

	return true
end

local function fightRedEmperorTarget(target)
	if not target or not isAliveMob(target) then
		return false
	end

	CurrentTarget = target
	setStatus("State", "sea3_fighting_red_emperor")
	setStatus("Sea3Target", target.Name)
	setStatus("Sea3TargetPath", target:GetFullName())

	local targetRoot = getRootPart(target)

	if not targetRoot then
		return true
	end

	local _, _, root = getCharacter()
	local targetCFrame = getHoverCFrame(targetRoot)
	local distance = (root.Position - targetRoot.Position).Magnitude

	if distance > Config.DirectLockDistance then
		travelToCFrame(targetCFrame)
	elseif distance > Config.TeleportDistance then
		lockHoverCFrame(targetRoot, true)
	end

	attackTarget(target)

	return true
end

local function shouldRunSea3Unlock(level)
	if not Config.Sea3Unlock then
		return false
	end

	if game.PlaceId ~= 14979402479 then
		return false
	end

	if getSeaIndex() >= 3 then
		return true
	end

	if isSea3Unlocked() then
		return true
	end

	return Config.Sea3Gate.IsReady(level)
end

local function queueSea3Runner()
	local queueOnTeleport = nil

	if type(queue_on_teleport) == "function" then
		queueOnTeleport = queue_on_teleport
	elseif type(queueonteleport) == "function" then
		queueOnTeleport = queueonteleport
	elseif type(syn) == "table" and type(syn.queue_on_teleport) == "function" then
		queueOnTeleport = syn.queue_on_teleport
	elseif type(fluxus) == "table" and type(fluxus.queue_on_teleport) == "function" then
		queueOnTeleport = fluxus.queue_on_teleport
	end

	if not queueOnTeleport or type(Config.QueueSea3Source) ~= "string" or Config.QueueSea3Source == "" then
		setStatus("Sea3Queue", "missing")

		return false
	end

	local success = pcall(function()
		queueOnTeleport(Config.QueueSea3Source)
	end)

	setStatus("Sea3Queue", success and "queued" or "failed")

	return success
end

local function requestSea3Teleport()
	local workspaceSeaIndex = tonumber(workspace:GetAttribute("Sea") or 0) or 0

	if workspaceSeaIndex >= 3 then
		setStatus("State", "sea3_loaded")
		Config.Enabled = false
		_G.AutoFarmLevel = false
		CurrentTarget = nil

		return true
	end

	if not Config.Sea3PostUnlockTeleport then
		setStatus("State", "sea3_unlocked_wait_manual")

		return true
	end

	if tick() - LastSea3TeleportAt < Config.Sea3TeleportRetryDelay then
		setStatus("State", "sea3_teleport_cooldown")

		return true
	end

	LastSea3TeleportAt = tick()
	queueSea3Runner()

	local teleportTarget = getSea3TeleportTarget()
	local teleportRemote = getTeleportRemote(teleportTarget)

	if teleportTarget then
		setStatus("State", "sea3_move_to_teleporter")
		setStatus("Sea3TeleportTarget", teleportTarget:GetFullName())
		moveNearInstance(teleportTarget)
		triggerInstancePrompt(teleportTarget)

		if teleportRemote then
			task.spawn(function()
				local success, result = pcall(function()
					return teleportRemote:InvokeServer()
				end)

				setStatus("Sea3TeleportRemoteSuccess", success)
				setStatus("Sea3TeleportRemoteResult", tostring(result))
			end)
		end
	else
		local gatekeeper = getSea3Gatekeeper()

		if gatekeeper then
			setStatus("State", "sea3_move_to_gatekeeper")
			setStatus("Sea3TeleportTarget", gatekeeper:GetFullName())
			moveNearInstance(gatekeeper)
			triggerSea3GatekeeperPrompt()
			invokeSea3Gatekeeper("teleport_to_sea3")
		else
			setStatus("State", "sea3_teleporter_missing")
			setStatus("Sea3TeleportTarget", nil)
		end
	end

	clickSea3AcceptPrompt(Config.Sea3AcceptTimeout)
	setStatus("State", "sea3_teleport_requested")

	return true
end

local function runSea3UnlockFlow(level)
	if not shouldRunSea3Unlock(level) then
		return false
	end

	CurrentQuest = nil
	ActiveBossFallbackQuest = nil
	setStatus("Sea3UnlockEnabled", true)
	setStatus("Sea3Unlocked", isSea3Unlocked())
	setStatus("SeaIndex", getSeaIndex())

	if isSea3Unlocked() then
		CurrentTarget = nil
		return requestSea3Teleport()
	end

	local questState = getQuestState()

	if questState.Objective ~= "" and not questState.Objective:lower():find("red emperor", 1, true) then
		local canceled = cancelActiveQuest("start Sea 3 unlock")

		setStatus("State", "sea3_canceling_active_quest")
		CurrentTarget = nil

		if canceled then
			CurrentQuest = nil
			PreviousObjective = ""
			task.wait(0.35)
		end

		return true
	end

	local target = findRedEmperorMob()

	if fightRedEmperorTarget(target) then
		return true
	end

	local fightingRedEmperor = questState.Objective:lower():find("red emperor", 1, true) ~= nil

	if fightingRedEmperor then
		CurrentTarget = nil
		setStatus("State", "sea3_red_emperor_missing")
		setStatus("Sea3Target", nil)
		requestRedEmperorSpawn("target_missing")
		moveToRedEmperorBattle()
	else
		local gatekeeper = getSea3Gatekeeper()

		if gatekeeper then
			setStatus("State", "sea3_move_to_gatekeeper")
			moveNearInstance(gatekeeper)
		else
			setStatus("State", "sea3_gatekeeper_missing")
		end

		triggerSea3GatekeeperPrompt()
		invokeSea3Gatekeeper("start_red_emperor")
		clickSea3AcceptPrompt(Config.Sea3AcceptTimeout)
		requestRedEmperorSpawn("start_or_retry")
	end

	return true
end

local function antiAfkPulse(reason)
	if not Config.AntiAfk then
		return
	end

	if tick() - LastAntiAfkPulse < 5 then
		return
	end

	LastAntiAfkPulse = tick()

	pcall(function()
		VirtualUser:CaptureController()
	end)

	pcall(function()
		local camera = workspace.CurrentCamera
		local cameraCFrame = camera and camera.CFrame or CFrame.new()

		VirtualUser:Button2Down(Vector2.new(0, 0), cameraCFrame)
		task.wait(0.15)
		VirtualUser:Button2Up(Vector2.new(0, 0), cameraCFrame)
	end)

	debugPrint("Anti-AFK pulse", reason or "timer")
end

table.insert(Connections, LocalPlayer.Idled:Connect(function()
	antiAfkPulse("idled")
end))

task.spawn(function()
	while isRunning() do
		task.wait(Config.AntiAfkInterval)
		antiAfkPulse("interval")
	end
end)

task.spawn(autoUpgradeStats)

table.insert(Connections, RunService.Heartbeat:Connect(function()
	if not isRunning() then
		return
	end

	if CurrentTraveling then
		return
	end

	if CurrentTarget and isAliveMob(CurrentTarget) then
		local targetRoot = getRootPart(CurrentTarget)

		if targetRoot then
			local _, _, root = getCharacter()
			local distance = (root.Position - targetRoot.Position).Magnitude

			if distance > Config.DirectLockDistance then
				return
			end

			lockHoverCFrame(targetRoot, false)
		end
	end
end))

_G.HazeSeasAutoFarmCleanup = function()
	Config.Enabled = false
	_G.AutoFarmLevel = false
	CurrentTarget = nil
	pcall(function()
		local character = LocalPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")

		if humanoid then
			humanoid.PlatformStand = false
			humanoid.AutoRotate = true
		end
	end)
	clearHoverGyro()

	for _, connection in next, Connections do
		pcall(function()
			connection:Disconnect()
		end)
	end
end

assert(type(selectQuestForLevel) == "function", "quest selector missing")
assert(type(selectFarmQuest) == "function", "farm quest selector missing")
assert(type(findMob) == "function", "mob finder missing")
assert(type(cancelActiveQuest) == "function", "quest cancel helper missing")
assert(type(fightRedEmperorTarget) == "function", "red emperor fight helper missing")
assert(type(runSea3UnlockFlow) == "function", "sea3 unlock helper missing")
assert(type(queueSea3Runner) == "function", "sea3 queue helper missing")
assert(type(refundStatsBeforeUpgrade) == "function", "stat refund helper missing")
assert(type(RefundStats.GetPoints) == "function", "refund point helper missing")
assert(type(RefundStats.FireEvent) == "function", "stats refund event helper missing")
assert(type(PriorityBoss.Handle) == "function", "priority boss handler missing")
assert(type(Config.DragonIsland.SelectQuest) == "function", "dragon island quest selector missing")
assert(type(Config.DragonIsland.FindTargetForObjective) == "function", "dragon island split target helper missing")
assert(type(Config.DragonIsland.HandleAwakenBoss) == "function", "dragon boss handler missing")
assert(type(Config.DragonIsland.HandleSuperBoss) == "function", "dragon island super boss handler missing")
assert(type(equipInventoryItem) == "function", "inventory equip helper missing")
assert(type(clearHoverGyro) == "function", "world 2 hover gyro cleanup missing")
assert(Config.PreferTool == "Shusui", "world 2 shusui preference missing")
assert(Config.SwordMasterySwitch.TargetMastery == 310, "world 2 sword mastery switch target missing")
assert(Config.SwordMasterySwitch.BaseSword == "Shusui" and Config.SwordMasterySwitch.SecondarySword == "Enma" and Config.SwordMasterySwitch.FinalSword == "Zenith", "world 2 sword mastery switch order missing")
assert(type(Config.SwordSelector.SelectTool) == "function", "world 2 sword selector missing")
assert(Config.Sea3RequiredLevel == 4500 and Config.Sea3RequiredGems == 1000 and Config.Sea3RequiredSwordMastery == 310, "world 2 sea3 gate config missing")
assert(Config.Sea3RequiredSwords[1] == "Shusui" and Config.Sea3RequiredSwords[2] == "Enma" and Config.Sea3RequiredSwords[3] == "Zenith", "world 2 sea3 mastery swords missing")
assert(type(Config.Sea3Gate.IsReady) == "function", "world 2 sea3 gate helper missing")
assert(Config.EnmaBossPriority.BossName == "Enma Boss" and Config.EnmaBossPriority.SwordName == "Enma", "enma boss priority config missing")
assert(Config.ZenithBossPriority.BossName == "Zenith Boss" and Config.ZenithBossPriority.SwordName == "Zenith", "zenith boss priority config missing")
assert(Config.PriorityBosses[1] == Config.EnmaBossPriority and Config.PriorityBosses[2] == Config.ZenithBossPriority, "priority boss order missing")
assert(Config.DragonIslandLock.StartLevel == 3050 and Config.DragonIslandLock.EndLevel == 4500, "dragon island level lock missing")
assert(Config.DragonIslandLock.AwakenBossName == "Dragon Boss" and Config.DragonIslandLock.AwakenSoulTarget == 999, "dragon awaken boss config missing")
assert(Config.DragonIslandLock.QuestNames[1] == "Elite Beast" and Config.DragonIslandLock.QuestNames[2] == "Beast Pirate", "dragon island quest targets missing")
assert(Config.DragonIslandLock.SuperBossPriority == true and #Config.DragonIslandLock.SuperBossNames >= 10, "dragon island super boss priority config missing")
assert(Config.SwordTopDownHover == true and Config.SwordHoverPitch == -90, "world 2 sword top-down hover missing")
assert(Config.SwordHoverGyroMaxTorque >= 10000, "world 2 sword hover gyro config missing")
assert(Config.StatOrder[1] == "Sword" and Config.StatOrder[2] == "Defense" and Config.StatOrder[3] == "Fruit", "world 2 stat order missing")
assert(Config.QuestIslandNames["Beast Pirate"] == "Dragon Island", "beast pirate island mapping missing")
assert(Config.QuestTravelPositions[2850] ~= nil, "level 2850 travel position missing")

task.spawn(function()
	refreshNpcContainers(true)
	getQuestCache(true)
	debugPrint("Loaded. Level:", getLevel(), "Quests:", #QuestCache)
	setStatus("Loaded", true)
	setStatus("QuestCount", #QuestCache)

	if moveToForcedFarmStart(getLevel()) then
		task.wait(Config.ForceFarmStartDelay)
	end

	while isRunning() do
		local character, humanoid, root = getCharacter()

		if humanoid.Health <= 0 then
			CurrentTarget = nil
			setStatus("State", "dead_wait")
			task.wait(3)
		else
			local level = getLevel()
			local farmLevel = getFarmLevel(level)
			local questState = getQuestState()
			local objective = questState.Objective
			setStatus("Level", level)
			setStatus("FarmLevel", farmLevel)
			setStatus("ForceFarmLevelEnabled", Config.ForceFarmLevelEnabled)
			setStatus("ActiveObjective", objective)
			setStatus("ActiveNPCName", questState.NPCName)
			setStatus("ActiveQuestName", questState.QuestName)
			setStatus("ActiveProgress", questState.Progress)
			setStatus("ActiveTarget", questState.Target)
			ensureAutoHaki(CurrentTarget)

			if runSea3UnlockFlow(level) then
				task.wait(Config.LoopDelay)
				continue
			end

			if PriorityBoss.Handle() then
				task.wait(Config.LoopDelay)
				continue
			end

			if Config.DragonIsland.HandleAwakenBoss(level) then
				task.wait(Config.LoopDelay)
				continue
			end

			if Config.DragonIsland.HandleSuperBoss(level) then
				task.wait(Config.LoopDelay)
				continue
			end

			local questScanMovedThisLoop = false

			-- Detect quest completion: Progress >= Target means quest is done
			local questCompleted = objective ~= "" and questState.Target > 0 and questState.Progress >= questState.Target
			if questCompleted then
				debugPrint("Quest completed!", objective, questState.Progress, "/", questState.Target, "- going to turn in")
				-- Move to the quest giver to turn in
				local turnInQuest = CurrentQuest or findQuestByObjective(objective)
				if turnInQuest then
					moveNearInstance(turnInQuest.Giver)
					task.wait(0.5)
				end
				-- Clear state to force re-accept
				CurrentTarget = nil
				CurrentQuest = nil
				PreviousObjective = ""
				objective = ""
				-- Wait for server to clear quest state
				for _ = 1, 30 do
					if not hasActiveQuest() then
						debugPrint("Quest turned in successfully")
						break
					end
					task.wait(0.2)
				end
			end

			local shouldCancelDragonQuest, dragonQuest = Config.DragonIsland.ShouldCancelQuest(objective, level)

			if shouldCancelDragonQuest then
				local canceled, cancelResult = cancelActiveQuest("dragon island lock")

				setStatus("DragonIslandCancelObjective", objective)
				setStatus("DragonIslandCancelQuest", dragonQuest and (dragonQuest.LevelName .. " " .. dragonQuest.MobName) or nil)
				setStatus("DragonIslandCancelResult", tostring(cancelResult))

				CurrentTarget = nil
				ActiveBossFallbackQuest = nil

				if canceled then
					CurrentQuest = nil
					PreviousObjective = ""
					objective = ""
					BossMissingSince = 0

					if dragonQuest then
						moveNearQuestSpawnPoint(dragonQuest, dragonQuest.MobName)
					end

					task.wait(0.35)
				else
					task.wait(0.5)
				end

				continue
			end

			local shouldCancelForcedQuest, forcedQuest = shouldCancelActiveForcedFarmQuest(questState.RawObjective, level)

			if shouldCancelForcedQuest then
				local canceled, cancelResult = cancelActiveQuest("force farm " .. forcedQuest.MobName)

				setStatus("ForceFarmCancelObjective", questState.RawObjective)
				setStatus("ForceFarmCancelQuest", forcedQuest.LevelName .. " " .. forcedQuest.MobName)
				setStatus("ForceFarmCancelResult", tostring(cancelResult))

				CurrentTarget = nil
				ActiveBossFallbackQuest = nil

				if canceled then
					CurrentQuest = nil
					PreviousObjective = ""
					objective = ""
					BossMissingSince = 0

					if moveToForcedFarmStart(level) then
						task.wait(Config.ForceFarmStartDelay)
					else
						task.wait(0.35)
					end
				else
					task.wait(0.5)
				end

				continue
			end

			if shouldCancelActivePeanutPirateQuest(objective) then
				local canceled, cancelResult = cancelActiveQuest("skip Peanut Pirate route")

				setStatus("SkippedQuest", "Peanut Pirate")
				setStatus("SkippedQuestUntilLevel", Config.PeanutPirateSkipUntilLevel)
				setStatus("SkippedQuestCancelResult", tostring(cancelResult))

				CurrentTarget = nil

				if canceled then
					CurrentQuest = nil
					PreviousObjective = ""
					objective = ""
					task.wait(0.35)
				else
					task.wait(0.5)
				end

				continue
			end

			-- Detect objective change: reset target when quest switches
			if objective ~= PreviousObjective then
				if PreviousObjective ~= "" and objective ~= "" then
					debugPrint("Quest changed:", PreviousObjective, "->", objective)
				end
				CurrentTarget = nil
				LastTargetSearch = 0
				LastQuestObjectiveStart = tick()
				LastQuestAttackObjective = ""
				refreshNpcContainers(true)
				PreviousObjective = objective
			end

			if objective == "" then
				local questReason = nil

				CurrentQuest, questReason = selectFarmQuest(farmLevel)
				setStatus("SelectedQuest", CurrentQuest and (CurrentQuest.LevelName .. " " .. CurrentQuest.MobName) or nil)
				setStatus("SelectedQuestReason", questReason or "normal")

				if CurrentQuest and tick() - LastQuestAttempt >= Config.QuestRetryDelay then
					LastQuestAttempt = tick()
					setStatus("LastAcceptQuest", CurrentQuest.LevelName .. " " .. CurrentQuest.MobName)

					local accepted, result = acceptQuest(CurrentQuest)
					setStatus("LastAcceptAccepted", accepted)
					setStatus("LastAcceptResult", tostring(result))
					debugPrint("Quest", CurrentQuest.LevelName, CurrentQuest.MobName, questReason or "normal", accepted, result)

					if accepted then
						task.wait(0.35)
						questState = getQuestState()
						objective = questState.Objective ~= "" and questState.Objective or CurrentQuest.MobName
						PreviousObjective = objective
						LastQuestObjectiveStart = tick()
						LastQuestAttackObjective = ""
						BossMissingSince = 0

						CurrentTarget = Config.DragonIsland.FindTargetForObjective(objective, level)
						LastTargetSearch = tick()

						if not CurrentTarget then
							local probeMoved

							CurrentTarget, probeMoved = probeQuestIslandForMob(CurrentQuest, objective, "after_accept")
							questScanMovedThisLoop = questScanMovedThisLoop or probeMoved
							LastTargetSearch = tick()
						end
					else
						moveNearInstance(CurrentQuest.Giver)
						objective = CurrentQuest.MobName
					end
				elseif CurrentQuest then
					objective = CurrentQuest.MobName
				else
					CurrentTarget = nil
					warn("[HazeSeas AutoFarm] No quest found for level", farmLevel, "(actual:", level, ")")
					task.wait(2)
				end
			else
				CurrentQuest = findQuestByObjective(objective) or CurrentQuest

				local spawnedBossQuest = nil

				if not Config.DragonIsland.IsActive(level) then
					spawnedBossQuest = getSpawnedBossForFallback(farmLevel, CurrentQuest)
				end

				if spawnedBossQuest then
					local canceled, cancelResult = cancelActiveQuest("boss spawned: " .. spawnedBossQuest.MobName)
					debugPrint("Switch fallback to boss", spawnedBossQuest.MobName, canceled, cancelResult)

					if canceled then
						CurrentQuest = nil
						CurrentTarget = nil
						PreviousObjective = ""
						questState = getQuestState()
						objective = questState.Objective
					end
				end

				local fallbackObjective = getActiveBossFallbackObjective(CurrentQuest)

				if fallbackObjective then
					objective = fallbackObjective
					setStatus("SelectedQuestReason", "active_boss_wait_fallback")

					if objective ~= PreviousObjective then
						CurrentTarget = nil
						LastTargetSearch = 0
						LastQuestObjectiveStart = tick()
						LastQuestAttackObjective = ""
						refreshNpcContainers(true)
						PreviousObjective = objective
					end
				end
			end

			if objective ~= "" then
				local currentTargetMatches = CurrentTarget and matchesTargetMob(CurrentTarget, objective)

				if not CurrentTarget or not isAliveMob(CurrentTarget) or not currentTargetMatches or tick() - LastTargetSearch >= Config.TargetRefreshDelay then
					CurrentTarget = Config.DragonIsland.FindTargetForObjective(objective, level)
					LastTargetSearch = tick()
					setStatus("LastTargetSearch", objective)
					setStatus("LastTargetFound", CurrentTarget and CurrentTarget.Name or nil)
					setStatus("LastTargetPath", CurrentTarget and CurrentTarget:GetFullName() or nil)
				end

				local questForProbe = ActiveBossFallbackQuest or CurrentQuest or selectFarmQuest(farmLevel)
				local didQuestProbe = questScanMovedThisLoop

				if not CurrentTarget and questForProbe then
					local probeMoved

					CurrentTarget, probeMoved = probeQuestIslandForMob(questForProbe, objective, "target_missing")
					didQuestProbe = didQuestProbe or probeMoved
					LastTargetSearch = tick()
					setStatus("LastTargetFound", CurrentTarget and CurrentTarget.Name or nil)
					setStatus("LastTargetPath", CurrentTarget and CurrentTarget:GetFullName() or nil)
				end

				if CurrentTarget and isAliveMob(CurrentTarget) then
					setStatus("State", "farming")
					local targetRoot = getRootPart(CurrentTarget)

					if targetRoot then
						local targetCFrame = getHoverCFrame(targetRoot)
						local distance = (root.Position - targetRoot.Position).Magnitude

						if distance > Config.DirectLockDistance then
							travelToCFrame(targetCFrame)
						elseif distance > Config.TeleportDistance then
							lockHoverCFrame(targetRoot, true)
						end

						if attackTarget(CurrentTarget) then
							LastQuestAttackObjective = objective
						end
					elseif questForProbe and tick() - LastQuestObjectiveStart >= Config.MobSpawnProbeIdleDelay then
						CurrentTarget = select(1, probeQuestIslandForMob(questForProbe, objective, "target_no_root"))
						LastTargetSearch = tick()
					end
				else
					setStatus("State", "target_missing")
					setStatus("LastMissingTarget", objective)
					if CurrentQuest and isBossQuest(CurrentQuest) then
						if BossMissingSince == 0 then
							BossMissingSince = tick()
						end

						local fallbackQuest = getFallbackQuestForBossSafely(CurrentQuest)

						if fallbackQuest and tick() - BossMissingSince >= Config.BossMissingCancelDelay then
							local canceled, cancelResult = cancelActiveQuest("boss missing: " .. CurrentQuest.MobName)
							debugPrint("Switch boss to fallback", CurrentQuest.MobName, "->", fallbackQuest.MobName, canceled, cancelResult)

							if canceled then
								CurrentQuest = nil
								CurrentTarget = nil
								PreviousObjective = ""
								BossMissingSince = 0
								objective = ""
							end
						end
					else
						BossMissingSince = 0
						ActiveBossFallbackQuest = nil
					end

					local questForMove = questForProbe

					if questForMove then
						local didProbe = didQuestProbe

						if not CurrentTarget then
							local probeMoved = false

							CurrentTarget, probeMoved = probeQuestIslandForMob(questForMove, objective, "missing_loop")
							didProbe = didProbe or probeMoved
							LastTargetSearch = tick()
						end

						if not CurrentTarget and not didProbe and not moveNearQuestSpawnPoint(questForMove, objective) then
							moveNearInstance(questForMove.Giver)
						end
					end

					task.wait(0.5)
				end

				if questForProbe
					and LastQuestAttackObjective ~= objective
					and tick() - LastQuestObjectiveStart >= Config.MobSpawnProbeIdleDelay
				then
					CurrentTarget = select(1, probeQuestIslandForMob(questForProbe, objective, "quest_idle_no_attack")) or CurrentTarget
					LastTargetSearch = tick()
				end
			end

			task.wait(Config.LoopDelay)
		end
	end

	CurrentTarget = nil
	debugPrint("Stopped")
end)

]=],
}

if not Array.Config.AllowedPlaceIds[game.PlaceId] then
	warn("[HS Kaitun] Unsupported PlaceId:", game.PlaceId)

	return
end

function Array.Function.ApplyPreviousConfig(Source)
	if type(Source) ~= "table" then
		return
	end

	for Key, Value in next, Source do
		if Key ~= "Enabled"
			and Key ~= "Status"
			and Key ~= "RunId"
			and Key ~= "State"
			and Key ~= "Service"
			and Key ~= "Function"
		then
			Array.Config[Key] = Value
		end
	end
end

if Array.State.PreviousConfig then
	if type(Array.State.PreviousConfig.Config) == "table" then
		Array.State.PreviousConfig.Config.Enabled = false
		Array.Function.ApplyPreviousConfig(Array.State.PreviousConfig.Config)
	else
		Array.State.PreviousConfig.Enabled = false
		Array.Function.ApplyPreviousConfig(Array.State.PreviousConfig)
	end
end

if Array.State.PreviousCleanup then
	pcall(Array.State.PreviousCleanup)
end

_G.HSKaitunRunId = (_G.HSKaitunRunId or 0) + 1

Array.State.RunId = _G.HSKaitunRunId
Array.Config.Enabled = true
Array.Config.RunId = Array.State.RunId
Array.Config.PlaceId = type(Array.Config.PlaceId) == "table" and Array.Config.PlaceId or {
	Source = 106600795455627,
	Target = 6918802270,
	World1 = 6918802270,
	World2 = 14979402479,
	World3 = 99664616626491,
}
Array.Config.PlaceId.Source = tonumber(Array.Config.PlaceId.Source) or 106600795455627
Array.Config.PlaceId.Target = tonumber(Array.Config.PlaceId.Target) or 6918802270
Array.Config.PlaceId.World1 = tonumber(Array.Config.PlaceId.World1) or Array.Config.PlaceId.Target
Array.Config.PlaceId.World2 = tonumber(Array.Config.PlaceId.World2) or 14979402479
Array.Config.PlaceId.World3 = tonumber(Array.Config.PlaceId.World3) or 99664616626491
Array.Config.AllowedPlaceIds = type(Array.Config.AllowedPlaceIds) == "table" and Array.Config.AllowedPlaceIds or {}
Array.Config.AllowedPlaceIds[Array.Config.PlaceId.Source] = true
Array.Config.AllowedPlaceIds[Array.Config.PlaceId.World1] = true
Array.Config.AllowedPlaceIds[Array.Config.PlaceId.World2] = true
Array.Config.AllowedPlaceIds[Array.Config.PlaceId.World3] = true
Array.Config.QueueUrls = type(Array.Config.QueueUrls) == "table" and Array.Config.QueueUrls or {
	"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/HS%20Kaitun.lua",
	"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/HS%20Kaitun.lua",
	"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/Haze%20Seas/HS%20Kaitun.lua",
	"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/Haze%20Seas/HS%20Kaitun.lua",
}
Array.Config.ClickPlay = Array.Config.ClickPlay ~= false
Array.Config.AutoRedeemCode = Array.Config.AutoRedeemCode ~= false
Array.Config.AutoPlaytimeRewards = Array.Config.AutoPlaytimeRewards ~= false
Array.Config.PlaytimeRewardsCheckDelay = math.max(tonumber(Array.Config.PlaytimeRewardsCheckDelay) or 5, 1)
Array.Config.PlaytimeRewardsClickDelay = math.max(tonumber(Array.Config.PlaytimeRewardsClickDelay) or 0.2, 0.05)
Array.Config.PlaytimeRewardsOpenPanel = Array.Config.PlaytimeRewardsOpenPanel ~= false
Array.Config.PlaytimeRewardsRemoteFirst = Array.Config.PlaytimeRewardsRemoteFirst ~= false
Array.Config.PlaytimeRewardMaxIndex = math.max(1, math.floor(tonumber(Array.Config.PlaytimeRewardMaxIndex) or 10))
Array.Config.AutoQuestRewards = Array.Config.AutoQuestRewards ~= false
Array.Config.QuestRewardsCheckDelay = math.max(tonumber(Array.Config.QuestRewardsCheckDelay) or 5, 1)
Array.Config.QuestRewardsClickDelay = math.max(tonumber(Array.Config.QuestRewardsClickDelay) or 0.2, 0.05)
Array.Config.QuestRewardsOpenPanel = Array.Config.QuestRewardsOpenPanel == true
Array.Config.AutoStats = type(Array.Config.AutoStats) == "table" and Array.Config.AutoStats or {}
Array.Config.AutoStats.Enabled = Array.Config.AutoStats.Enabled ~= false
Array.Config.AutoStats.StatDelay = math.max(tonumber(Array.Config.AutoStats.StatDelay) or 0.25, 0.05)
Array.Config.AutoStats.StatLoopDelay = math.max(tonumber(Array.Config.AutoStats.StatLoopDelay) or 1, 0.2)
Array.Config.AutoStats.StatChunk = math.max(1, math.floor(tonumber(Array.Config.AutoStats.StatChunk) or 50))
Array.Config.AutoStats.StatMax = math.max(1, math.floor(tonumber(Array.Config.AutoStats.StatMax) or 4500))
Array.Config.AutoStats.Ratio = type(Array.Config.AutoStats.Ratio) == "table" and Array.Config.AutoStats.Ratio or {}
Array.Config.AutoStats.Ratio.Combat = 80
Array.Config.AutoStats.Ratio.Defense = 20
Array.Config.AutoStats.Ratio.Sword = nil
Array.Config.AutoBlackLeg = type(Array.Config.AutoBlackLeg) == "table" and Array.Config.AutoBlackLeg or {}
Array.Config.AutoBlackLeg.Enabled = Array.Config.AutoBlackLeg.Enabled ~= false
Array.Config.AutoBlackLeg.StyleName = tostring(Array.Config.AutoBlackLeg.StyleName or "Black Leg")
Array.Config.AutoBlackLeg.FallbackStyleName = tostring(Array.Config.AutoBlackLeg.FallbackStyleName or "Combat")
Array.Config.AutoBlackLeg.RequiredLevel = math.max(math.floor(tonumber(Array.Config.AutoBlackLeg.RequiredLevel) or 250), 0)
Array.Config.AutoBlackLeg.RequiredBeli = math.max(math.floor(tonumber(Array.Config.AutoBlackLeg.RequiredBeli) or 50000), 0)
Array.Config.AutoBlackLeg.CheckDelay = math.max(tonumber(Array.Config.AutoBlackLeg.CheckDelay) or 5, 0.5)
Array.Config.AutoBlackLeg.BuyRetryDelay = math.max(tonumber(Array.Config.AutoBlackLeg.BuyRetryDelay) or 3, 0.5)
Array.Config.AutoBlackLeg.BuyTimeout = math.max(tonumber(Array.Config.AutoBlackLeg.BuyTimeout) or 20, 1)
Array.Config.AutoBlackLeg.EquipDelay = math.max(tonumber(Array.Config.AutoBlackLeg.EquipDelay) or 0.35, 0.05)
Array.Config.AutoBlackLeg.NpcLoadTimeout = math.max(tonumber(Array.Config.AutoBlackLeg.NpcLoadTimeout) or 10, 1)
Array.Config.AutoBlackLeg.NpcLoadDelay = math.max(tonumber(Array.Config.AutoBlackLeg.NpcLoadDelay) or 0.5, 0.05)
Array.Config.AutoBlackLeg.NpcCFrame = typeof(Array.Config.AutoBlackLeg.NpcCFrame) == "CFrame"
	and Array.Config.AutoBlackLeg.NpcCFrame
	or CFrame.new(-5291.95166015625, 54.457332611083984, 1936.6304931640625)
Array.Config.AutoBlackLeg.NpcOffset = typeof(Array.Config.AutoBlackLeg.NpcOffset) == "CFrame"
	and Array.Config.AutoBlackLeg.NpcOffset
	or CFrame.new(0, 4, -6)
Array.Config.AutoHaki = type(Array.Config.AutoHaki) == "table" and Array.Config.AutoHaki or {}
Array.Config.AutoHaki.Enabled = Array.Config.AutoHaki.Enabled ~= false
Array.Config.AutoHaki.RequiredLevel = math.max(math.floor(tonumber(Array.Config.AutoHaki.RequiredLevel) or 350), 0)
Array.Config.AutoHaki.RequiredBeli = math.max(math.floor(tonumber(Array.Config.AutoHaki.RequiredBeli) or 100000), 0)
Array.Config.AutoHaki.BuyRetryDelay = math.max(tonumber(Array.Config.AutoHaki.BuyRetryDelay) or 3, 0.2)
Array.Config.AutoHaki.CheckDelay = math.max(tonumber(Array.Config.AutoHaki.CheckDelay) or 3, 0.2)
Array.Config.AutoHaki.BuyTimeout = math.max(tonumber(Array.Config.AutoHaki.BuyTimeout) or 26, 3)
Array.Config.AutoHaki.BuyDelay = math.max(tonumber(Array.Config.AutoHaki.BuyDelay) or 0.75, 0.05)
Array.Config.AutoHaki.LoadHoldTime = math.max(tonumber(Array.Config.AutoHaki.LoadHoldTime) or 1.2, 0.2)
Array.Config.AutoHaki.UseBeforeAttack = Array.Config.AutoHaki.UseBeforeAttack ~= false
Array.Config.AutoHaki.UseCooldown = math.max(tonumber(Array.Config.AutoHaki.UseCooldown) or 0.8, 0.05)
Array.Config.AutoHaki.UseDelay = math.max(tonumber(Array.Config.AutoHaki.UseDelay) or 0.12, 0.01)
Array.Config.AutoHaki.BusoLevelName = tostring(Array.Config.AutoHaki.BusoLevelName or "1")
Array.Config.AutoHaki.BusoNpcCFrame = typeof(Array.Config.AutoHaki.BusoNpcCFrame) == "CFrame"
	and Array.Config.AutoHaki.BusoNpcCFrame
	or CFrame.new(-2745.901123046875, 101.63304901123047, 2251.0966796875)
Array.Config.AutoHaki.BusoLoadCFrames = type(Array.Config.AutoHaki.BusoLoadCFrames) == "table" and Array.Config.AutoHaki.BusoLoadCFrames or {
	CFrame.new(-2472.894775390625, 55, 2253.22705078125),
	CFrame.new(-2722.894775390625, 55, 2253.22705078125),
	CFrame.new(-2972.894775390625, 55, 2253.22705078125),
	CFrame.new(-2679.924560546875, 45, 2042.1256103515625),
}
Array.Config.Sea2Quest = type(Array.Config.Sea2Quest) == "table" and Array.Config.Sea2Quest or {}
Array.Config.Sea2Quest.Enabled = Array.Config.Sea2Quest.Enabled ~= false
Array.Config.Sea2Quest.RequiredLevel = math.max(math.floor(tonumber(Array.Config.Sea2Quest.RequiredLevel) or 2200), 0)
Array.Config.Sea2Quest.RequiredSwordName = tostring(Array.Config.Sea2Quest.RequiredSwordName or "Shusui")
Array.Config.Sea2Quest.CheckDelay = math.max(tonumber(Array.Config.Sea2Quest.CheckDelay) or 3, 0.5)
Array.Config.Sea2Quest.RetryDelay = math.max(tonumber(Array.Config.Sea2Quest.RetryDelay) or 4, 0.5)
Array.Config.Sea2Quest.WaitInstanceTimeout = math.max(tonumber(Array.Config.Sea2Quest.WaitInstanceTimeout) or 12, 1)
Array.Config.Sea2Quest.WaitUnlockTimeout = math.max(tonumber(Array.Config.Sea2Quest.WaitUnlockTimeout) or 8, 1)
Array.Config.Sea2Quest.MoveOffset = typeof(Array.Config.Sea2Quest.MoveOffset) == "Vector3"
	and Array.Config.Sea2Quest.MoveOffset
	or Vector3.new(0, 3, 0)
Array.Config.Sea2Quest.ScrollModelName = tostring(Array.Config.Sea2Quest.ScrollModelName or "Poneglyph Scroll")
Array.Config.Sea2Quest.ScrollRemoteName = tostring(Array.Config.Sea2Quest.ScrollRemoteName or "Pick")
Array.Config.Sea2Quest.TeleporterFolderName = tostring(Array.Config.Sea2Quest.TeleporterFolderName or "Sea Teleporter")
Array.Config.Sea2Quest.TeleporterModelName = tostring(Array.Config.Sea2Quest.TeleporterModelName or "Sea 2")
Array.Config.Sea2Quest.UnlockRemoteName = tostring(Array.Config.Sea2Quest.UnlockRemoteName or "UnlockSea")
Array.Config.Sea2Quest.TeleportRemoteName = tostring(Array.Config.Sea2Quest.TeleportRemoteName or "Teleport")
Array.Config.World2AutoFarm = type(Array.Config.World2AutoFarm) == "table" and Array.Config.World2AutoFarm or {}
Array.Config.World2AutoFarm.Enabled = Array.Config.World2AutoFarm.Enabled ~= false
Array.Config.World2AutoFarm.ScriptUrls = type(Array.Config.World2AutoFarm.ScriptUrls) == "table"
	and Array.Config.World2AutoFarm.ScriptUrls
	or {
		"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/Haze%20Sea2.lua",
	}
Array.Config.World2AutoFarm.ScriptPaths = type(Array.Config.World2AutoFarm.ScriptPaths) == "table"
	and Array.Config.World2AutoFarm.ScriptPaths
	or {
		"Haze Seas/Haze Sea2.lua",
		"Haze Seas\\Haze Sea2.lua",
	}
Array.Config.World2AutoFarm.DirectLoadstring = Array.Config.World2AutoFarm.DirectLoadstring ~= false
Array.Config.World2AutoFarm.PreferTool = tostring(Array.Config.World2AutoFarm.PreferTool or "Shusui")
Array.Config.World2AutoFarm.RequirePreferTool = Array.Config.World2AutoFarm.RequirePreferTool ~= false
Array.Config.World2AutoFarm.AutoRefundStats = Array.Config.World2AutoFarm.AutoRefundStats ~= false
Array.Config.World2AutoFarm.RefundStatsCode = tostring(Array.Config.World2AutoFarm.RefundStatsCode or "STATREFUND")
Array.Config.World2AutoFarm.StatOrder = type(Array.Config.World2AutoFarm.StatOrder) == "table"
	and Array.Config.World2AutoFarm.StatOrder
	or {
		"Sword",
		"Defense",
		"Fruit",
	}
Array.Config.World2AutoFarm.StatOrder[1] = "Sword"
Array.Config.World2AutoFarm.StatOrder[2] = "Defense"
Array.Config.World2AutoFarm.StatOrder[3] = "Fruit"
Array.Config.World2AutoFarm.ForceFarmLevelEnabled = Array.Config.World2AutoFarm.ForceFarmLevelEnabled == true
Array.Config.World3Shrine = type(Array.Config.World3Shrine) == "table" and Array.Config.World3Shrine or {}
Array.Config.World3Shrine.Enabled = Array.Config.World3Shrine.Enabled ~= false
Array.Config.World3Shrine.PromptObjectText = tostring(Array.Config.World3Shrine.PromptObjectText or "Shrine of Three Swords")
Array.Config.World3Shrine.PromptActionText = tostring(Array.Config.World3Shrine.PromptActionText or "Interact")
Array.Config.World3Shrine.RequiredMastery = math.max(math.floor(tonumber(Array.Config.World3Shrine.RequiredMastery) or 300), 0)
Array.Config.World3Shrine.CheckDelay = math.max(tonumber(Array.Config.World3Shrine.CheckDelay) or 3, 0.5)
Array.Config.World3Shrine.RetryDelay = math.max(tonumber(Array.Config.World3Shrine.RetryDelay) or 4, 0.5)
Array.Config.World3Shrine.SearchDepth = math.max(1, math.floor(tonumber(Array.Config.World3Shrine.SearchDepth) or 12))
Array.Config.World3Shrine.MoveHeight = math.max(tonumber(Array.Config.World3Shrine.MoveHeight) or 3, 0)
Array.Config.World3Shrine.MoveDistance = math.max(tonumber(Array.Config.World3Shrine.MoveDistance) or 4, 0)
Array.Config.World3Shrine.AcceptTimeout = math.max(tonumber(Array.Config.World3Shrine.AcceptTimeout) or 4, 0.5)
Array.Config.World3Shrine.RequiredSwords = type(Array.Config.World3Shrine.RequiredSwords) == "table"
	and Array.Config.World3Shrine.RequiredSwords
	or {}
Array.Config.World3Shrine.RequiredSwords[1] = "Shusui"
Array.Config.World3Shrine.RequiredSwords[2] = "Enma"
Array.Config.World3Shrine.RequiredSwords[3] = "Zenith"
Array.Config.World3Shrine.RewardNames = type(Array.Config.World3Shrine.RewardNames) == "table"
	and Array.Config.World3Shrine.RewardNames
	or {
		"Three Swords",
		"Three Sword",
		"3 Swords",
		"3 Sword",
		"Three Sword Style",
		"Santoryu",
	}
Array.Config.RefundCodeNames = type(Array.Config.RefundCodeNames) == "table" and Array.Config.RefundCodeNames or {}
Array.Config.RefundCodeNames.statrefund = true
Array.Config.SwordName = "Combat"
Array.Config.SearchPlayDelay = tonumber(Array.Config.SearchPlayDelay) or 0.5
Array.Config.SearchPlayTimeout = tonumber(Array.Config.SearchPlayTimeout) or 60
Array.Config.RedeemDelay = tonumber(Array.Config.RedeemDelay) or 0.35
Array.Config.RedeemTimeout = tonumber(Array.Config.RedeemTimeout) or 30
Array.Config.FirstBuySwordTimeout = tonumber(Array.Config.FirstBuySwordTimeout) or 6
Array.Config.BuySwordDelay = tonumber(Array.Config.BuySwordDelay) or 0.75
Array.Config.BuySwordTimeout = tonumber(Array.Config.BuySwordTimeout) or 20
Array.Config.WaitToolTimeout = tonumber(Array.Config.WaitToolTimeout) or 10
Array.Config.WorldReadyTimeout = tonumber(Array.Config.WorldReadyTimeout) or 15
Array.Config.BypassTeleport = Array.Config.BypassTeleport ~= false
Array.Config.BypassTeleportMode = tostring(Array.Config.BypassTeleportMode or "Velocity")
Array.State.BypassTeleportModeLookup = string.lower(Array.Config.BypassTeleportMode)
Array.Config.BypassTeleportMode = (
	Array.State.BypassTeleportModeLookup == "velocity"
	or Array.State.BypassTeleportModeLookup == "bodyvelocity"
	or Array.State.BypassTeleportModeLookup == "velo"
) and "Velocity" or (
	Array.State.BypassTeleportModeLookup == "step"
	or Array.State.BypassTeleportModeLookup == "cframe"
	or Array.State.BypassTeleportModeLookup == "cframestep"
) and "Step" or "Motor6D"
Array.Config.BypassTeleportNoClip = Array.Config.BypassTeleportNoClip ~= false
Array.Config.BypassTeleportRestoreCollision = Array.Config.BypassTeleportRestoreCollision ~= false
Array.Config.BypassTeleportSpeed = math.max(tonumber(Array.Config.BypassTeleportSpeed) or 1200, 1200)
Array.Config.BypassTeleportMaxStep = math.max(tonumber(Array.Config.BypassTeleportMaxStep) or 80, 80)
Array.Config.BypassTeleportStepDelay = math.max(tonumber(Array.Config.BypassTeleportStepDelay) or 0.02, 0.01)
Array.Config.BypassTeleportSettleDelay = math.max(tonumber(Array.Config.BypassTeleportSettleDelay) or 0.12, 0)
Array.Config.BypassTeleportMotorHeight = math.max(tonumber(Array.Config.BypassTeleportMotorHeight) or 8, 0)
Array.Config.BypassTeleportMotorWait = math.max(tonumber(Array.Config.BypassTeleportMotorWait) or 0.2, 0.05)
Array.Config.BypassTeleportMotorAnchored = Array.Config.BypassTeleportMotorAnchored ~= false
Array.Config.BypassTeleportFinalSnap = Array.Config.BypassTeleportFinalSnap ~= false
Array.Config.BypassTeleportFinalSnapDistance = math.max(tonumber(Array.Config.BypassTeleportFinalSnapDistance) or 12, 1)
Array.Config.BypassTeleportFallback = Array.Config.BypassTeleportFallback == true
Array.Config.BypassTeleportVelocitySpeed = math.max(tonumber(Array.Config.BypassTeleportVelocitySpeed) or 2200, 200)
Array.Config.BypassTeleportVelocityReachDistance = math.max(tonumber(Array.Config.BypassTeleportVelocityReachDistance) or 8, 1)
Array.Config.BypassTeleportVelocityTimeout = math.max(tonumber(Array.Config.BypassTeleportVelocityTimeout) or 8, 1)
Array.Config.BypassTeleportVelocityTimeoutBuffer = math.max(tonumber(Array.Config.BypassTeleportVelocityTimeoutBuffer) or 1, 0)
Array.Config.BypassTeleportVelocityStepDelay = math.max(tonumber(Array.Config.BypassTeleportVelocityStepDelay) or 0.03, 0.01)
Array.Config.BypassTeleportVelocityMaxForce = math.max(tonumber(Array.Config.BypassTeleportVelocityMaxForce) or 100000000, 10000)
Array.Config.BypassTeleportVelocityPower = math.max(tonumber(Array.Config.BypassTeleportVelocityPower) or 12500, 1000)
Array.Config.SwordSellerOffset = CFrame.new(0, 4, -6)
Array.Config.AutoFarm = type(Array.Config.AutoFarm) == "table" and Array.Config.AutoFarm or {}
Array.Config.AutoFarm.Enabled = Array.Config.AutoFarm.Enabled ~= false
Array.Config.AutoFarm.StartDelay = math.max(tonumber(Array.Config.AutoFarm.StartDelay) or 1, 0)
Array.Config.AutoFarm.LoopDelay = math.max(tonumber(Array.Config.AutoFarm.LoopDelay) or 0.08, 0.05)
Array.Config.AutoFarm.SearchMobDelay = math.max(tonumber(Array.Config.AutoFarm.SearchMobDelay) or 0.45, 0.05)
Array.Config.AutoFarm.TargetRefreshDelay = math.max(tonumber(Array.Config.AutoFarm.TargetRefreshDelay) or 0.75, 0.1)
Array.Config.AutoFarm.QuestRetryDelay = math.max(tonumber(Array.Config.AutoFarm.QuestRetryDelay) or 2, 0.1)
Array.Config.AutoFarm.LevelReadyTimeout = math.max(tonumber(Array.Config.AutoFarm.LevelReadyTimeout) or 30, 1)
Array.Config.AutoFarm.LevelReadyPollDelay = math.max(tonumber(Array.Config.AutoFarm.LevelReadyPollDelay) or 0.25, 0.05)
Array.Config.AutoFarm.LevelOneSettleDelay = math.max(tonumber(Array.Config.AutoFarm.LevelOneSettleDelay) or 8, 0)
Array.Config.AutoFarm.StartupWaitTimeout = math.max(tonumber(Array.Config.AutoFarm.StartupWaitTimeout) or 15, 1)
Array.Config.AutoFarm.ContainerRefreshDelay = math.max(tonumber(Array.Config.AutoFarm.ContainerRefreshDelay) or 10, 1)
Array.Config.AutoFarm.TeleportDistance = math.max(tonumber(Array.Config.AutoFarm.TeleportDistance) or 55, 1)
Array.Config.AutoFarm.DirectLockDistance = math.max(tonumber(Array.Config.AutoFarm.DirectLockDistance) or 140, 10)
Array.Config.AutoFarm.SmoothTravel = Array.Config.AutoFarm.SmoothTravel ~= false
Array.Config.AutoFarm.FastTravel = Array.Config.AutoFarm.FastTravel ~= false
Array.Config.AutoFarm.TravelSpeed = math.max(tonumber(Array.Config.AutoFarm.TravelSpeed) or 650, 50)
Array.Config.AutoFarm.TravelStepDelay = math.max(tonumber(Array.Config.AutoFarm.TravelStepDelay) or 0.015, 0.01)
Array.Config.AutoFarm.TravelMaxStep = math.max(tonumber(Array.Config.AutoFarm.TravelMaxStep) or 22, 1)
Array.Config.AutoFarm.SafePositionFloor = tonumber(Array.Config.AutoFarm.SafePositionFloor) or -10000
Array.Config.AutoFarm.PreferTool = "Combat"
Array.Config.AutoFarm.PreferMelee = Array.Config.AutoFarm.PreferMelee ~= false
Array.Config.AutoFarm.MobSpawnProbeRandomScan = Array.Config.AutoFarm.MobSpawnProbeRandomScan ~= false
Array.Config.AutoFarm.MobSpawnProbeTeleportScan = Array.Config.AutoFarm.MobSpawnProbeTeleportScan ~= false
Array.Config.AutoFarm.MobSpawnProbeMoveDelay = math.max(tonumber(Array.Config.AutoFarm.MobSpawnProbeMoveDelay) or 0.75, 0.05)
Array.Config.AutoFarm.MobSpawnProbeBurstCount = math.max(1, math.floor(tonumber(Array.Config.AutoFarm.MobSpawnProbeBurstCount) or 8))
Array.Config.AutoFarm.MobSpawnProbeSettleDelay = math.max(tonumber(Array.Config.AutoFarm.MobSpawnProbeSettleDelay) or 0.22, 0.05)
Array.Config.AutoFarm.MobSpawnProbeIdleDelay = math.max(tonumber(Array.Config.AutoFarm.MobSpawnProbeIdleDelay) or 1.5, 0.1)
Array.Config.AutoFarm.MobSpawnProbeRetryDelay = math.max(tonumber(Array.Config.AutoFarm.MobSpawnProbeRetryDelay) or 0.45, 0.05)
Array.Config.AutoFarm.EquipRetryCount = math.max(1, math.floor(tonumber(Array.Config.AutoFarm.EquipRetryCount) or 6))
Array.Config.AutoFarm.EquipRetryDelay = math.max(tonumber(Array.Config.AutoFarm.EquipRetryDelay) or 0.12, 0.02)
Array.Config.AutoFarm.BackpackWait = math.max(tonumber(Array.Config.AutoFarm.BackpackWait) or 1, 0)
Array.Config.AutoFarm.NoClip = Array.Config.AutoFarm.NoClip ~= false
Array.Config.AutoFarm.QuestAcceptDelay = math.max(tonumber(Array.Config.AutoFarm.QuestAcceptDelay) or 0.25, 0.05)
Array.Config.AutoFarm.QuestAcceptAttempts = math.max(1, math.floor(tonumber(Array.Config.AutoFarm.QuestAcceptAttempts) or 16))
Array.Config.AutoFarm.QuestAcceptRetryDelay = math.max(tonumber(Array.Config.AutoFarm.QuestAcceptRetryDelay) or 0.15, 0.05)
Array.Config.AutoFarm.QuestCacheRefresh = math.max(tonumber(Array.Config.AutoFarm.QuestCacheRefresh) or 30, 5)
Array.Config.AutoFarm.MobSearchDepth = math.max(1, math.floor(tonumber(Array.Config.AutoFarm.MobSearchDepth) or 7))
Array.Config.AutoFarm.BossFallback = Array.Config.AutoFarm.BossFallback ~= false
Array.Config.AutoFarm.BossFallbackDelay = math.max(tonumber(Array.Config.AutoFarm.BossFallbackDelay) or 2, 0)
Array.Config.AutoFarm.BossFallbackSameGiver = Array.Config.AutoFarm.BossFallbackSameGiver ~= false
Array.Config.AutoFarm.BossFallbackSwitchToBoss = Array.Config.AutoFarm.BossFallbackSwitchToBoss ~= false
Array.Config.AutoFarm.BossFallbackAfterKill = Array.Config.AutoFarm.BossFallbackAfterKill ~= false
Array.Config.AutoFarm.BossFallbackCheckDelay = math.max(tonumber(Array.Config.AutoFarm.BossFallbackCheckDelay) or 1, 0)
Array.Config.AutoFarm.BossMissingCancelDelay = math.max(tonumber(Array.Config.AutoFarm.BossMissingCancelDelay) or 4, 0)
Array.Config.AutoFarm.BossFallbackRequireSpawnedMob = Array.Config.AutoFarm.BossFallbackRequireSpawnedMob ~= false
Array.Config.AutoFarm.BossFallbackFarmWithoutCancel = Array.Config.AutoFarm.BossFallbackFarmWithoutCancel == true
Array.Config.AutoFarm.CurrentQuestLock = Array.Config.AutoFarm.CurrentQuestLock ~= false
Array.Config.AutoFarm.BossQuestKillThreshold = math.max(tonumber(Array.Config.AutoFarm.BossQuestKillThreshold) or 1, 0)
Array.Config.AutoFarm.QuestCancelRetryDelay = math.max(tonumber(Array.Config.AutoFarm.QuestCancelRetryDelay) or 3, 0)
Array.Config.AutoFarm.QuestCancelWait = math.max(tonumber(Array.Config.AutoFarm.QuestCancelWait) or 1.5, 0.2)
Array.Config.AutoFarm.HoverHeight = math.max(tonumber(Array.Config.AutoFarm.HoverHeight) or 8, 0)
Array.Config.AutoFarm.HoverBackDistance = math.max(tonumber(Array.Config.AutoFarm.HoverBackDistance) or 6.8, 0)
Array.Config.AutoFarm.HoverAimHeight = math.max(tonumber(Array.Config.AutoFarm.HoverAimHeight) or 3.2, 0)
Array.Config.AutoFarm.BlackLegHoverHeight = math.max(tonumber(Array.Config.AutoFarm.BlackLegHoverHeight) or 4, 0)
Array.Config.AutoFarm.BlackLegBackDistance = math.max(tonumber(Array.Config.AutoFarm.BlackLegBackDistance) or 3.5, 0)
Array.Config.AutoFarm.BlackLegAimHeight = math.max(tonumber(Array.Config.AutoFarm.BlackLegAimHeight) or 1.2, 0)
if Array.Config.AutoFarm.BlackLegHoverHeight == 0 or Array.Config.AutoFarm.BlackLegHoverHeight == 3 then
	Array.Config.AutoFarm.BlackLegHoverHeight = 4
end
if Array.Config.AutoFarm.BlackLegBackDistance == 4.5
	or Array.Config.AutoFarm.BlackLegBackDistance == 5.2
	or Array.Config.AutoFarm.BlackLegBackDistance == 8
then
	Array.Config.AutoFarm.BlackLegBackDistance = 3.5
end
if Array.Config.AutoFarm.BlackLegAimHeight == 0 or Array.Config.AutoFarm.BlackLegAimHeight == 2.5 then
	Array.Config.AutoFarm.BlackLegAimHeight = 1.2
end
Array.Config.AutoFarm.HoverRepositionDistance = math.max(tonumber(Array.Config.AutoFarm.HoverRepositionDistance) or 70, 5)
Array.Config.AutoFarm.HoverVelocityMaxSpeed = math.max(tonumber(Array.Config.AutoFarm.HoverVelocityMaxSpeed) or 180, 20)
Array.Config.AutoFarm.HoverVelocityGain = math.max(tonumber(Array.Config.AutoFarm.HoverVelocityGain) or 16, 1)
Array.Config.AutoFarm.HoverVelocityMaxForce = math.max(tonumber(Array.Config.AutoFarm.HoverVelocityMaxForce) or 100000000, 10000)
Array.Config.AutoFarm.HoverGyroMaxTorque = math.max(tonumber(Array.Config.AutoFarm.HoverGyroMaxTorque) or 100000000, 10000)
Array.Config.AutoFarm.HoverLerpAlpha = math.clamp(tonumber(Array.Config.AutoFarm.HoverLerpAlpha) or 0.35, 0, 1)
Array.Config.AutoFarm.HoverStepDelay = math.max(tonumber(Array.Config.AutoFarm.HoverStepDelay) or 0.035, 0.01)
Array.Config.AutoFarm.AttackBurst = math.max(1, math.floor(tonumber(Array.Config.AutoFarm.AttackBurst) or 2))
Array.Config.AutoFarm.AttackBurstDelay = math.max(tonumber(Array.Config.AutoFarm.AttackBurstDelay) or 0.02, 0.01)
Array.Config.AutoFarm.AttackDelay = math.max(tonumber(Array.Config.AutoFarm.AttackDelay) or 0.06, 0.01)
Array.Config.AutoFarm.BlackLegAutoSkills = Array.Config.AutoFarm.BlackLegAutoSkills ~= false
Array.Config.AutoFarm.BlackLegSkillInputMode = tostring(Array.Config.AutoFarm.BlackLegSkillInputMode or "Remote")
Array.State.BlackLegSkillInputModeLookup = string.lower(Array.Config.AutoFarm.BlackLegSkillInputMode)
Array.Config.AutoFarm.BlackLegSkillInputMode = Array.State.BlackLegSkillInputModeLookup == "key" and "Key" or "Remote"
Array.Config.AutoFarm.BlackLegSkillAimMouse = Array.Config.AutoFarm.BlackLegSkillInputMode == "Key"
	and Array.Config.AutoFarm.BlackLegSkillAimMouse == true
Array.Config.AutoFarm.BlackLegSkillAimDelay = math.max(tonumber(Array.Config.AutoFarm.BlackLegSkillAimDelay) or 0.03, 0)
Array.Config.AutoFarm.BlackLegSkillAimOffset = typeof(Array.Config.AutoFarm.BlackLegSkillAimOffset) == "Vector3"
	and Array.Config.AutoFarm.BlackLegSkillAimOffset
	or Vector3.new(0, 1.5, 0)
Array.Config.AutoFarm.BlackLegSkillHoldTime = math.max(tonumber(Array.Config.AutoFarm.BlackLegSkillHoldTime) or 0.18, 0.03)
Array.Config.AutoFarm.BlackLegSkillGlobalDelay = math.max(tonumber(Array.Config.AutoFarm.BlackLegSkillGlobalDelay) or 0.35, 0.05)
Array.Config.AutoFarm.BlackLegSkillKeys = type(Array.Config.AutoFarm.BlackLegSkillKeys) == "table"
	and Array.Config.AutoFarm.BlackLegSkillKeys
	or {}
if #Array.Config.AutoFarm.BlackLegSkillKeys == 0 then
	Array.Config.AutoFarm.BlackLegSkillKeys = {
		{ Key = "V", AttackName = "DiabloMode", Cooldown = 9 },
		{ Key = "C", AttackName = "AirBarrage", Cooldown = 8, UseMousePosition = true },
		{ Key = "X", AttackName = "PartyTable", Cooldown = 7 },
		{ Key = "Z", AttackName = "GroundSmash", Cooldown = 6 },
	}
end
for _, SkillData in next, Array.Config.AutoFarm.BlackLegSkillKeys do
	if type(SkillData) == "table" then
		SkillData.Key = tostring(SkillData.Key or "")
		if SkillData.AttackName == nil or SkillData.AttackName == "" then
			SkillData.AttackName = ({
				V = "DiabloMode",
				C = "AirBarrage",
				X = "PartyTable",
				Z = "GroundSmash",
			})[SkillData.Key] or SkillData.Key
		end
		SkillData.AttackName = tostring(SkillData.AttackName or "")
		SkillData.UseMousePosition = SkillData.UseMousePosition == true or SkillData.AttackName == "AirBarrage"
		SkillData.Cooldown = math.max(tonumber(SkillData.Cooldown) or 6, 0.5)
	end
end
if Array.Config.AutoFarm.LoopDelay == 0.2 then
	Array.Config.AutoFarm.LoopDelay = 0.08
end
if Array.Config.AutoFarm.HoverHeight == 5 then
	Array.Config.AutoFarm.HoverHeight = 8
end
if Array.Config.AutoFarm.AttackBurst == 3
	and Array.Config.AutoFarm.AttackBurstDelay == 0.04
	and Array.Config.AutoFarm.AttackDelay == 0.01
then
	Array.Config.AutoFarm.AttackBurst = 2
	Array.Config.AutoFarm.AttackBurstDelay = 0.02
	Array.Config.AutoFarm.AttackDelay = 0.06
end
Array.Config.AutoFarm.FireActivatedSignal = Array.Config.AutoFarm.FireActivatedSignal ~= false
Array.Config.AutoFarm.UpdateMousePosition = Array.Config.AutoFarm.UpdateMousePosition ~= false
Array.Config.AutoFarm.HitOffset = typeof(Array.Config.AutoFarm.HitOffset) == "Vector3" and Array.Config.AutoFarm.HitOffset or Vector3.new(0, 1.5, 0)
Array.Config.AutoFarm.BossQuestNames = type(Array.Config.AutoFarm.BossQuestNames) == "table" and Array.Config.AutoFarm.BossQuestNames or {}
for Key, Value in next, {
	banditboss = true,
	clownboss = true,
	sharkboss = true,
	bombboss = true,
	kriegboss = true,
	kinggorilla = true,
	marinecaptain = true,
	minotaur = true,
	tashii = true,
	viceadmiral = true,
	iceadmiral = true,
	thundergod = true,
	revolutionaryboss = true,
	warden = true,
	vergo = true,
	snowharpy = true,
	neptune = true,
	shiryu = true,
	g4boss = true,
	ryummy = true,
} do
	Array.Config.AutoFarm.BossQuestNames[Key] = Array.Config.AutoFarm.BossQuestNames[Key] ~= false and Value
end
Array.Config.AutoFarm.RyummyShusui = type(Array.Config.AutoFarm.RyummyShusui) == "table" and Array.Config.AutoFarm.RyummyShusui or {}
Array.Config.AutoFarm.RyummyShusui.Enabled = Array.Config.AutoFarm.RyummyShusui.Enabled ~= false
Array.Config.AutoFarm.RyummyShusui.RequiredLevel = math.max(math.floor(tonumber(Array.Config.AutoFarm.RyummyShusui.RequiredLevel) or 2150), 0)
Array.Config.AutoFarm.RyummyShusui.BossName = tostring(Array.Config.AutoFarm.RyummyShusui.BossName or "Ryummy")
Array.Config.AutoFarm.RyummyShusui.SwordName = tostring(Array.Config.AutoFarm.RyummyShusui.SwordName or "Shusui")
Array.Config.AutoFarm.QuestZoneNames = type(Array.Config.AutoFarm.QuestZoneNames) == "table" and Array.Config.AutoFarm.QuestZoneNames or {}
for Key, Value in next, {
	Thief = "Starter Island",
	Bandit = "Starter Island",
	["Bandit Boss"] = "Starter Island",
	["Pirate Clown"] = "Clown Island",
	["Clown Boss"] = "Clown Island",
	Fishman = "Shark Park",
	["Shark Boss"] = "Shark Park",
	["Desert Thief"] = "Desert Ruins",
	["Bomb Boss"] = "Desert Ruins",
	["Krieg Pirate"] = "Sea Restaurant",
	["Krieg Boss"] = "Sea Restaurant",
	["Marine Recruit"] = "Logue Town",
	Tashii = "Logue Town",
	Monkey = "Tall Woods",
	Gorilla = "Tall Woods",
	["King Gorilla"] = "Tall Woods",
	["Marine Grunt"] = "Marine Base Town",
	["Marine Captain"] = "Marine Base Town",
} do
	if Array.Config.AutoFarm.QuestZoneNames[Key] == nil then
		Array.Config.AutoFarm.QuestZoneNames[Key] = Value
	end
end
Array.Config.AutoFarm.QuestIslandNames = type(Array.Config.AutoFarm.QuestIslandNames) == "table" and Array.Config.AutoFarm.QuestIslandNames or {}
for Key, Value in next, {
	Thief = "Starter Island",
	Bandit = "Starter Island",
	["Bandit Boss"] = "Starter Island",
	["Pirate Clown"] = "Clown Island",
	["Clown Boss"] = "Clown Island",
	Fishman = "Shark Park",
	["Shark Boss"] = "Shark Park",
	["Desert Thief"] = "Desert Ruins",
	["Bomb Boss"] = "Desert Ruins",
	["Krieg Pirate"] = "Sea Restaurant",
	["Krieg Boss"] = "Sea Restaurant",
	["Marine Recruit"] = "Logue Town",
	Tashii = "Logue Town",
	Monkey = "Tall Woods",
	Gorilla = "Tall Woods",
	["King Gorilla"] = "Tall Woods",
	["Marine Grunt"] = "Marine Base Town",
	["Marine Captain"] = "Marine Base Town",
	Samurai = "Flower Capital",
	["Strong Samurai"] = "Flower Capital",
	Shinobi = "Flower Capital",
	["Shinobi Elite"] = "Flower Capital",
	["Officer Guard"] = "Udon Prison",
	["Sergeant Guard"] = "Udon Prison",
	["Mammoth Boss"] = "Udon Prison",
	Graverobber = "Snowy Graveyard",
	["Elite Graverobber"] = "Snowy Graveyard",
	["3SS Boss"] = "Snowy Graveyard",
	["Desert Pirate"] = "Desert City",
	["Desert Captain"] = "Desert City",
	["Desert Boss"] = "Desert City",
	["Beast Pirate"] = "Dragon Island",
	["Elite Beast"] = "Dragon Island",
	["MaceV2 Boss"] = "Dragon Island",
	["Shadow Pirate"] = "Shadow Island",
	["Shadow Commander"] = "Shadow Island",
	["Shadow Boss"] = "Shadow Island",
	["Peanut Pirate"] = "Peanut Island",
	["Peanut Captain"] = "Peanut Island",
	["Peanut Boss"] = "Peanut Island",
	["Dough Pirate"] = "Dough Island",
	["Dough Captain"] = "Dough Island",
	["Tree Boss"] = "Dough Island",
	["Chocolate Pirate"] = "Cake Island",
	["Candy Guard"] = "Cake Island",
	["Soul Boss"] = "Cake Island",
	Baboon = "Foggy Castle",
	["Strong Baboon"] = "Foggy Castle",
	["Baboon Boss"] = "Foggy Castle",
	Snowman = "Winter Island",
	["Snow Elite"] = "Winter Island",
	["Snow Boss"] = "Winter Island",
	["Love Warrior"] = "Snake Amazon",
	["Snake Man"] = "Snake Amazon",
	["Love Boss"] = "Snake Amazon",
	["Venom Monster"] = "Venom Island",
	["Venom Poacher"] = "Venom Island",
	["Venom Boss"] = "Venom Island",
} do
	if Array.Config.AutoFarm.QuestIslandNames[Key] == nil then
		Array.Config.AutoFarm.QuestIslandNames[Key] = Value
	end
end
Array.Config.AutoFarm.QuestIslandLevelRanges = type(Array.Config.AutoFarm.QuestIslandLevelRanges) == "table" and Array.Config.AutoFarm.QuestIslandLevelRanges or {
	{ Min = 2200, Max = 2350, Island = "Flower Capital" },
	{ Min = 2400, Max = 2500, Island = "Udon Prison" },
	{ Min = 2550, Max = 2650, Island = "Snowy Graveyard" },
	{ Min = 2700, Max = 2800, Island = "Desert City" },
	{ Min = 2850, Max = 2950, Island = "Dragon Island" },
	{ Min = 3000, Max = 3100, Island = "Shadow Island" },
	{ Min = 3150, Max = 3250, Island = "Peanut Island" },
	{ Min = 3300, Max = 3400, Island = "Dough Island" },
	{ Min = 3450, Max = 3550, Island = "Cake Island" },
	{ Min = 3600, Max = 3700, Island = "Foggy Castle" },
	{ Min = 3750, Max = 3850, Island = "Winter Island" },
	{ Min = 3900, Max = 4000, Island = "Snake Amazon" },
	{ Min = 4050, Max = 4150, Island = "Venom Island" },
}
Array.Config.StatusPrint = Array.Config.StatusPrint ~= false
Array.Config.PlayBlockWords = type(Array.Config.PlayBlockWords) == "table" and Array.Config.PlayBlockWords or {
	"playtime",
	"afk reward",
	"teleport to afk",
}
Array.Config.PlaySignals = type(Array.Config.PlaySignals) == "table" and Array.Config.PlaySignals or {
	"Activated",
	"MouseButton1Click",
	"MouseButton1Down",
	"MouseButton1Up",
}
Array.Config.Codes = type(Array.Config.Codes) == "table" and Array.Config.Codes or {
	"DRAGONUPD",
	"OKUCHI",
	"Sub2XenoTy",
	"Sub2CaptainMaui",
	"PATCH",
	"FREECASH",
	"RELEASE",
	"FREEGEMS",
	"SUBSCRIBETOHAZEYT",
	"Sub2Nikkolapz",
	"Sub2BrosSiam",
	"Sub2BadiTubes",
	"Sub2BuilderboyTV",
	"HAZESEAS2026",
	"GROUPONLY",
}
Array.Config.Debug = Array.Config.Debug ~= false

_G.HSKaitun = Array

Array.Service.Players = game:GetService("Players")
Array.Service.TeleportService = game:GetService("TeleportService")
Array.Service.ReplicatedStorage = game:GetService("ReplicatedStorage")
Array.Service.HttpService = game:GetService("HttpService")
Array.Service.RunService = game:GetService("RunService")
Array.Service.VirtualInputManager = nil

pcall(function()
	Array.Service.VirtualInputManager = game:GetService("VirtualInputManager")
end)

Array.Service.Player = Array.Service.Players.LocalPlayer
Array.Service.PlayerGui = Array.Service.Player:WaitForChild("PlayerGui")

function Array.Function.DebugPrint(...)
	if Array.Config.Debug then
		print("[HS Kaitun]", ...)
	end
end

function Array.Function.SetStatus(Key, Value)
	Array.State.Status[Key] = Value
	Array.State.Status.UpdatedAt = tick()

	if Array.Config.StatusPrint then
		print("[HS Kaitun]", tostring(Key), tostring(Value))
	end
end

function Array.Function.IsRunning()
	return Array.Config.Enabled ~= false and _G.HSKaitunRunId == Array.State.RunId
end

function Array.Function.GetQueueOnTeleport()
	if type(queue_on_teleport) == "function" then
		return queue_on_teleport
	end

	if type(queueonteleport) == "function" then
		return queueonteleport
	end

	if type(syn) == "table" and type(syn.queue_on_teleport) == "function" then
		return syn.queue_on_teleport
	end

	if type(fluxus) == "table" and type(fluxus.queue_on_teleport) == "function" then
		return fluxus.queue_on_teleport
	end

	return nil
end

function Array.Function.GetQueueSource()
	Array.State.QueuePaths = {
		"Haze Seas/HS Kaitun.lua",
		"Haze Seas\\HS Kaitun.lua",
		"HS Kaitun.lua",
	}

	if type(readfile) == "function" then
		for _, Path in next, Array.State.QueuePaths do
			Array.State.QueueSourceSuccess, Array.State.QueueSource = pcall(function()
				return readfile(Path)
			end)

			if Array.State.QueueSourceSuccess
				and type(Array.State.QueueSource) == "string"
				and #Array.State.QueueSource > 0
				and string.find(Array.State.QueueSource, "HSKaitun", 1, true)
			then
				Array.Function.SetStatus("QueueSource", "file")
				Array.Function.SetStatus("QueueSourcePath", Path)

				return Array.State.QueueSource
			end
		end
	end

	if type(Array.Config.QueueUrls) == "table" then
		for _, Url in next, Array.Config.QueueUrls do
			Array.State.QueueSourceSuccess, Array.State.QueueSource = pcall(function()
				return game:HttpGet(Url)
			end)

			if not Array.State.QueueSourceSuccess
				or type(Array.State.QueueSource) ~= "string"
				or #Array.State.QueueSource == 0
			then
				Array.State.QueueSourceSuccess = false
				Array.State.QueueSource = nil

				if type(request) == "function" then
					Array.State.QueueSourceSuccess, Array.State.QueueSourceResponse = pcall(function()
						return request({
							Url = Url,
							Method = "GET",
						})
					end)

					Array.State.QueueSource = Array.State.QueueSourceResponse and Array.State.QueueSourceResponse.Body or nil
				elseif type(syn) == "table" and type(syn.request) == "function" then
					Array.State.QueueSourceSuccess, Array.State.QueueSourceResponse = pcall(function()
						return syn.request({
							Url = Url,
							Method = "GET",
						})
					end)

					Array.State.QueueSource = Array.State.QueueSourceResponse and Array.State.QueueSourceResponse.Body or nil
				end
			end

			if Array.State.QueueSourceSuccess
				and type(Array.State.QueueSource) == "string"
				and #Array.State.QueueSource > 0
				and string.find(Array.State.QueueSource, "HSKaitun", 1, true)
			then
				Array.Function.SetStatus("QueueSource", "url")
				Array.Function.SetStatus("QueueSourceUrl", Url)

				return Array.State.QueueSource
			end
		end
	end

	Array.Function.SetStatus("QueueSource", "stub")

	return Array.QueueCode
end

function Array.Function.QueueTargetRunner()
	if Array.State.Queued then
		return true
	end

	Array.State.QueueOnTeleport = Array.Function.GetQueueOnTeleport()

	if not Array.State.QueueOnTeleport then
		Array.Function.SetStatus("QueueOnTeleport", "missing")

		return false
	end

	Array.State.QueueSuccess = pcall(function()
		Array.State.QueueOnTeleport(Array.Function.GetQueueSource())
	end)

	Array.Function.SetStatus("QueueOnTeleport", Array.State.QueueSuccess and "queued" or "failed")

	if Array.State.QueueSuccess then
		Array.State.Queued = true
	end

	return Array.State.QueueSuccess
end

function Array.Function.TeleportToTarget()
	Array.Function.SetStatus("PlaceCheck", "source_place")
	Array.Function.SetStatus("CurrentPlaceId", game.PlaceId)
	Array.Function.SetStatus("TargetPlaceId", Array.Config.PlaceId.Target)
	Array.Function.QueueTargetRunner()

	Array.Config.Enabled = false
	Array.State.TeleportSuccess, Array.State.TeleportResult = pcall(function()
		return Array.Service.TeleportService:Teleport(Array.Config.PlaceId.Target, Array.Service.Player)
	end)

	Array.Function.SetStatus("PlaceTeleport", Array.State.TeleportSuccess and "teleporting" or "failed")
	Array.Function.SetStatus("PlaceTeleportResult", tostring(Array.State.TeleportResult))

	return true
end

function Array.Function.StartWorld1Script()
	if Array.State.World1Started then
		return true
	end

	Array.State.World1Started = true
	Array.Function.SetStatus("World", "World1")
	Array.Function.SetStatus("World1Script", "started")
	Array.Function.SetStatus("PlaceCheck", "target_place")
	Array.Function.SetStatus("PlaceTeleport", "skipped")

	task.spawn(Array.Function.ClickPlayWhenReady)
	Array.Function.StartAutoPlaytimeRewards()
	Array.Function.StartAutoQuestRewards()
	Array.Function.WaitWorldReady(Array.Config.WorldReadyTimeout)
	Array.Function.StartAutoStats()
	Array.Function.StartAutoHaki()
	Array.Function.StartAutoBlackLeg()
	Array.Function.StartSea2QuestLoop()
	Array.Function.RedeemCodes()

	Array.Function.StartWorld1AutoFarm()

	return true
end

function Array.Function.ConfigureWorld2AutoFarm()
	_G.HazeSeasAutoFarm = type(_G.HazeSeasAutoFarm) == "table" and _G.HazeSeasAutoFarm or {}
	Array.State.World2AutoFarmConfig = _G.HazeSeasAutoFarm
	Array.State.World2AutoFarmConfig.PreferTool = Array.Config.World2AutoFarm.PreferTool
	Array.State.World2AutoFarmConfig.RequirePreferTool = Array.Config.World2AutoFarm.RequirePreferTool
	Array.State.World2AutoFarmConfig.AutoStats = true
	Array.State.World2AutoFarmConfig.AutoRefundStats = Array.Config.World2AutoFarm.AutoRefundStats
	Array.State.World2AutoFarmConfig.RefundStatsCode = Array.Config.World2AutoFarm.RefundStatsCode
	Array.State.World2AutoFarmConfig.StatOrder = {
		Array.Config.World2AutoFarm.StatOrder[1],
		Array.Config.World2AutoFarm.StatOrder[2],
		Array.Config.World2AutoFarm.StatOrder[3],
	}
	Array.State.World2AutoFarmConfig.ForceFarmLevelEnabled = Array.Config.World2AutoFarm.ForceFarmLevelEnabled
	Array.State.World2AutoFarmConfig.ForceFarmStartTravel = false
	Array.State.World2AutoFarmConfig.PreferMelee = true
	Array.State.World2AutoFarmConfig.Debug = Array.Config.Debug == true
	Array.State.World2AutoFarmConfig.QueueSea3Source = Array.Function.GetQueueSource()

	Array.Function.SetStatus("World2AutoFarmTool", Array.State.World2AutoFarmConfig.PreferTool)
	Array.Function.SetStatus("World2AutoFarmStats", table.concat(Array.State.World2AutoFarmConfig.StatOrder, ">"))

	return Array.State.World2AutoFarmConfig
end

function Array.Function.IsWorld2AutoFarmSource(Source)
	if type(Source) ~= "string" or #Source == 0 then
		return false
	end

	if string.find(Source, "404: Not Found", 1, true)
		or string.find(string.lower(string.sub(Source, 1, 200)), "<html", 1, true)
	then
		return false
	end

	return string.find(Source, "HazeSeasAutoFarm", 1, true) ~= nil
		and string.find(Source, "14979402479", 1, true) ~= nil
end

function Array.Function.GetWorld2AutoFarmSource()
	if Array.Function.IsWorld2AutoFarmSource(_G.HazeSeasAutoFarmSource) then
		Array.Function.SetStatus("World2AutoFarmRead", "external_source")

		return _G.HazeSeasAutoFarmSource
	elseif type(_G.HazeSeasAutoFarmSource) == "string" and #_G.HazeSeasAutoFarmSource > 0 then
		Array.Function.SetStatus("World2AutoFarmExternalSource", "invalid")
	end

	if type(Array.Config.World2AutoFarm.ScriptUrls) == "table" then
		for _, Url in next, Array.Config.World2AutoFarm.ScriptUrls do
			Array.State.World2AutoFarmSource = nil
			Array.State.World2AutoFarmHttpSuccess = false

			Array.State.World2AutoFarmHttpSuccess, Array.State.World2AutoFarmSource = pcall(function()
				return game:HttpGet(Url)
			end)

			if not Array.State.World2AutoFarmHttpSuccess
				or type(Array.State.World2AutoFarmSource) ~= "string"
				or #Array.State.World2AutoFarmSource == 0
			then
				Array.State.World2AutoFarmHttpSuccess = false
				Array.State.World2AutoFarmSource = nil

				if type(request) == "function" then
					Array.State.World2AutoFarmHttpSuccess, Array.State.World2AutoFarmResponse = pcall(function()
						return request({
							Url = Url,
							Method = "GET",
						})
					end)

					Array.State.World2AutoFarmSource = Array.State.World2AutoFarmResponse and Array.State.World2AutoFarmResponse.Body or nil
				elseif type(syn) == "table" and type(syn.request) == "function" then
					Array.State.World2AutoFarmHttpSuccess, Array.State.World2AutoFarmResponse = pcall(function()
						return syn.request({
							Url = Url,
							Method = "GET",
						})
					end)

					Array.State.World2AutoFarmSource = Array.State.World2AutoFarmResponse and Array.State.World2AutoFarmResponse.Body or nil
				end
			end

			if (not Array.State.World2AutoFarmHttpSuccess
					or type(Array.State.World2AutoFarmSource) ~= "string"
					or #Array.State.World2AutoFarmSource == 0)
				and type(request) == "function"
			then
				Array.State.World2AutoFarmHttpSuccess, Array.State.World2AutoFarmResponse = pcall(function()
					return request({
						Url = Url,
						Method = "GET",
					})
				end)

				Array.State.World2AutoFarmSource = Array.State.World2AutoFarmResponse and Array.State.World2AutoFarmResponse.Body or nil
			end

			if Array.Function.IsWorld2AutoFarmSource(Array.State.World2AutoFarmSource) then
				Array.Function.SetStatus("World2AutoFarmRead", "url")
				Array.Function.SetStatus("World2AutoFarmUrl", Url)

				return Array.State.World2AutoFarmSource
			elseif type(Array.State.World2AutoFarmSource) == "string" and #Array.State.World2AutoFarmSource > 0 then
				Array.Function.SetStatus("World2AutoFarmUrlRejected", Url)
			end
		end
	end

	if Array.Function.IsWorld2AutoFarmSource(Array.World2AutoFarmCode) then
		Array.Function.SetStatus("World2AutoFarmRead", "embedded")

		return Array.World2AutoFarmCode
	end

	if type(readfile) == "function" then
		for _, Path in next, Array.Config.World2AutoFarm.ScriptPaths do
			Array.State.World2AutoFarmReadSuccess, Array.State.World2AutoFarmSource = pcall(function()
				return readfile(Path)
			end)

			if Array.Function.IsWorld2AutoFarmSource(Array.State.World2AutoFarmSource) then
				Array.Function.SetStatus("World2AutoFarmRead", "loaded")
				Array.Function.SetStatus("World2AutoFarmPath", Path)

				return Array.State.World2AutoFarmSource
			elseif type(Array.State.World2AutoFarmSource) == "string" and #Array.State.World2AutoFarmSource > 0 then
				Array.Function.SetStatus("World2AutoFarmPathRejected", Path)
			end
		end
	else
		Array.Function.SetStatus("World2AutoFarmRead", "missing_readfile")
	end

	Array.Function.SetStatus("World2AutoFarmRead", "missing_file")

	return nil
end

function Array.Function.FetchWorld2AutoFarmUrl(Url)
	Array.State.World2AutoFarmHttpSuccess, Array.State.World2AutoFarmSource = pcall(function()
		return game:HttpGet(Url)
	end)

	if Array.Function.IsWorld2AutoFarmSource(Array.State.World2AutoFarmSource) then
		return Array.State.World2AutoFarmSource
	end

	if type(request) == "function" then
		Array.State.World2AutoFarmHttpSuccess, Array.State.World2AutoFarmResponse = pcall(function()
			return request({
				Url = Url,
				Method = "GET",
			})
		end)

		Array.State.World2AutoFarmSource = Array.State.World2AutoFarmResponse and Array.State.World2AutoFarmResponse.Body or nil

		if Array.Function.IsWorld2AutoFarmSource(Array.State.World2AutoFarmSource) then
			return Array.State.World2AutoFarmSource
		end
	end

	if type(syn) == "table" and type(syn.request) == "function" then
		Array.State.World2AutoFarmHttpSuccess, Array.State.World2AutoFarmResponse = pcall(function()
			return syn.request({
				Url = Url,
				Method = "GET",
			})
		end)

		Array.State.World2AutoFarmSource = Array.State.World2AutoFarmResponse and Array.State.World2AutoFarmResponse.Body or nil

		if Array.Function.IsWorld2AutoFarmSource(Array.State.World2AutoFarmSource) then
			return Array.State.World2AutoFarmSource
		end
	end

	return nil
end

function Array.Function.RunWorld2AutoFarmSource(Source, ReadMode, SourceValue)
	if not Array.Function.IsWorld2AutoFarmSource(Source) then
		Array.Function.SetStatus("World2AutoFarm", "invalid_source")

		return false
	end

	Array.State.World2AutoFarmLoadSuccess, Array.State.World2AutoFarmChunk, Array.State.World2AutoFarmLoadError =
		pcall(loadstring, Source)

	if not Array.State.World2AutoFarmLoadSuccess or type(Array.State.World2AutoFarmChunk) ~= "function" then
		Array.Function.SetStatus("World2AutoFarm", "load_failed")
		Array.Function.SetStatus("World2AutoFarmError", tostring(Array.State.World2AutoFarmLoadError or Array.State.World2AutoFarmChunk))

		return false
	end

	Array.State.World2AutoFarmStarted = true
	Array.Function.SetStatus("World2AutoFarm", "starting")

	if ReadMode then
		Array.Function.SetStatus("World2AutoFarmRead", ReadMode)
	end

	if SourceValue then
		Array.Function.SetStatus("World2AutoFarmSource", SourceValue)
	end

	task.spawn(function()
		Array.State.World2AutoFarmRunSuccess, Array.State.World2AutoFarmRunError = pcall(Array.State.World2AutoFarmChunk)

		if not Array.State.World2AutoFarmRunSuccess then
			Array.Function.SetStatus("World2AutoFarm", "error")
			Array.Function.SetStatus("World2AutoFarmError", tostring(Array.State.World2AutoFarmRunError))
		else
			Array.Function.SetStatus("World2AutoFarm", "running")
		end
	end)

	return true
end

function Array.Function.StartWorld2DirectLoadstring()
	if not Array.Config.World2AutoFarm.DirectLoadstring or type(Array.Config.World2AutoFarm.ScriptUrls) ~= "table" then
		return false
	end

	Array.Function.SetStatus("World2AutoFarm", "direct_loadstring")

	for _, Url in next, Array.Config.World2AutoFarm.ScriptUrls do
		Array.Function.SetStatus("World2AutoFarmDirectUrl", Url)
		Array.State.World2AutoFarmDirectSource = Array.Function.FetchWorld2AutoFarmUrl(Url)

		if Array.Function.RunWorld2AutoFarmSource(Array.State.World2AutoFarmDirectSource, "direct_loadstring", Url) then
			return true
		end

		Array.Function.SetStatus("World2AutoFarmDirectRejected", Url)
	end

	return false
end

function Array.Function.StartWorld2AutoFarmScript()
	if Array.State.World2AutoFarmStarted or not Array.Config.World2AutoFarm.Enabled then
		return false
	end

	if game.PlaceId ~= Array.Config.PlaceId.World2 then
		Array.Function.SetStatus("World2AutoFarm", "wrong_place")

		return false
	end

	Array.Function.ConfigureWorld2AutoFarm()

	if Array.Function.StartWorld2DirectLoadstring() then
		return true
	end

	Array.State.World2AutoFarmSource = Array.Function.GetWorld2AutoFarmSource()

	if not Array.State.World2AutoFarmSource then
		Array.Function.SetStatus("World2AutoFarm", "missing_source")

		return false
	end

	return Array.Function.RunWorld2AutoFarmSource(Array.State.World2AutoFarmSource)
end

function Array.Function.StartWorld2Script()
	if Array.State.World2Started then
		return true
	end

	Array.State.World2Started = true
	Array.Function.SetStatus("World", "World2")
	Array.Function.SetStatus("World2Script", "started")
	Array.Function.SetStatus("PlaceCheck", "world2_place")
	Array.Function.SetStatus("BuyKatana", "disabled_combat")

	task.spawn(Array.Function.StartWorld2AutoFarmScript)
	task.spawn(Array.Function.ClickPlayWhenReady)
	Array.Function.StartAutoPlaytimeRewards()
	Array.Function.StartAutoQuestRewards()
	Array.Function.WaitWorldReady(Array.Config.WorldReadyTimeout)
	Array.Function.RedeemCodes()

	return true
end

function Array.Function.IsWorld3RewardName(Name)
	Array.State.World3RewardKey = Array.Function.NormalizeLookupName(Name)

	if Array.State.World3RewardKey == "" then
		return false
	end

	for _, RewardName in next, Array.Config.World3Shrine.RewardNames do
		Array.State.World3RewardTargetKey = Array.Function.NormalizeLookupName(RewardName)

		if Array.State.World3RewardKey == Array.State.World3RewardTargetKey
			or string.find(Array.State.World3RewardKey, Array.State.World3RewardTargetKey, 1, true)
		then
			return true
		end
	end

	return false
end

function Array.Function.FindWorld3RewardInPlayerData(Root, Depth)
	if not Root or Depth > 8 then
		return nil
	end

	if Array.Function.IsWorld3RewardName(Root.Name) then
		if Root:IsA("BoolValue") then
			return Root.Value == true and Root or nil
		end

		if Root:IsA("NumberValue") or Root:IsA("IntValue") then
			return tonumber(Root.Value) and tonumber(Root.Value) > 0 and Root or nil
		end

		return Root
	end

	if Root:IsA("StringValue") and Array.Function.IsWorld3RewardName(Root.Value) then
		return Root
	end

	for _, Child in next, Root:GetChildren() do
		Array.State.World3RewardSearchResult = Array.Function.FindWorld3RewardInPlayerData(Child, Depth + 1)

		if Array.State.World3RewardSearchResult then
			return Array.State.World3RewardSearchResult
		end
	end

	return nil
end

function Array.Function.HasWorld3ShrineReward()
	for _, RewardName in next, Array.Config.World3Shrine.RewardNames do
		if Array.Function.HasOwnedSword(RewardName) or Array.Function.FindToolByName(RewardName) then
			Array.Function.SetStatus("World3ShrineReward", RewardName)
			return true
		end
	end

	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.World3RewardData = Array.State.PlayerData and Array.Function.FindWorld3RewardInPlayerData(Array.State.PlayerData, 0)

	Array.Function.SetStatus(
		"World3ShrineReward",
		Array.State.World3RewardData and Array.State.World3RewardData:GetFullName() or nil
	)

	return Array.State.World3RewardData ~= nil
end

function Array.Function.CheckWorld3ShrineRequirements()
	Array.State.World3ShrineMissing = {}
	Array.State.World3ShrineRequiredMastery = Array.Config.World3Shrine.RequiredMastery

	Array.Function.SetStatus("World3ShrineRequiredMastery", Array.State.World3ShrineRequiredMastery)

	for _, SwordName in next, Array.Config.World3Shrine.RequiredSwords do
		Array.State.World3ShrineSwordName = tostring(SwordName)
		Array.State.World3ShrineSwordStatusName = Array.Function.GetSwordMasteryStatusName(Array.State.World3ShrineSwordName)
		Array.State.World3ShrineSwordOwned = Array.Function.HasOwnedSword(Array.State.World3ShrineSwordName)
		Array.State.World3ShrineSwordMastery = Array.Function.GetSwordMastery(Array.State.World3ShrineSwordName)

		Array.Function.SetStatus("World3ShrineOwned" .. Array.State.World3ShrineSwordStatusName, Array.State.World3ShrineSwordOwned)
		Array.Function.SetStatus("World3ShrineMastery" .. Array.State.World3ShrineSwordStatusName, Array.State.World3ShrineSwordMastery)

		if not Array.State.World3ShrineSwordOwned then
			table.insert(Array.State.World3ShrineMissing, Array.State.World3ShrineSwordName .. ":missing")
		elseif Array.State.World3ShrineSwordMastery < Array.State.World3ShrineRequiredMastery then
			table.insert(
				Array.State.World3ShrineMissing,
				Array.State.World3ShrineSwordName
					.. ":"
					.. tostring(Array.State.World3ShrineSwordMastery)
					.. "/"
					.. tostring(Array.State.World3ShrineRequiredMastery)
			)
		end
	end

	Array.State.World3ShrineReady = #Array.State.World3ShrineMissing == 0
	Array.Function.SetStatus("World3ShrineRequirementsReady", Array.State.World3ShrineReady)
	Array.Function.SetStatus(
		"World3ShrineMissingRequirements",
		Array.State.World3ShrineReady and nil or table.concat(Array.State.World3ShrineMissing, ", ")
	)

	return Array.State.World3ShrineReady
end

function Array.Function.InsertWorld3Text(TextArray, Text)
	if Text == nil then
		return
	end

	Array.State.World3TextValue = tostring(Text)

	if Array.State.World3TextValue ~= "" then
		table.insert(TextArray, Array.State.World3TextValue)
	end
end

function Array.Function.AddWorld3InstanceText(TextArray, InstanceData)
	if not InstanceData then
		return
	end

	Array.Function.InsertWorld3Text(TextArray, InstanceData.Name)

	if InstanceData:IsA("ProximityPrompt") then
		Array.Function.InsertWorld3Text(TextArray, InstanceData.ObjectText)
		Array.Function.InsertWorld3Text(TextArray, InstanceData.ActionText)
	elseif InstanceData:IsA("TextLabel") or InstanceData:IsA("TextButton") or InstanceData:IsA("TextBox") then
		Array.Function.InsertWorld3Text(TextArray, InstanceData.Text)
	elseif InstanceData:IsA("StringValue") then
		Array.Function.InsertWorld3Text(TextArray, InstanceData.Value)
	end
end

function Array.Function.AddWorld3ChildText(TextArray, Root, Depth)
	if not Root or Depth > 4 then
		return
	end

	Array.Function.AddWorld3InstanceText(TextArray, Root)

	for _, Child in next, Root:GetChildren() do
		Array.Function.AddWorld3ChildText(TextArray, Child, Depth + 1)
	end
end

function Array.Function.GetWorld3PromptContext(Prompt)
	Array.State.World3PromptTextArray = {}
	Array.Function.AddWorld3InstanceText(Array.State.World3PromptTextArray, Prompt)
	Array.State.World3PromptParent = Prompt and Prompt.Parent or nil

	if Array.State.World3PromptParent then
		Array.Function.AddWorld3ChildText(Array.State.World3PromptTextArray, Array.State.World3PromptParent, 0)
	end

	Array.State.World3PromptAncestor = Array.State.World3PromptParent

	for _ = 1, 6 do
		if not Array.State.World3PromptAncestor or Array.State.World3PromptAncestor == workspace then
			break
		end

		Array.Function.InsertWorld3Text(Array.State.World3PromptTextArray, Array.State.World3PromptAncestor.Name)
		Array.State.World3PromptAncestor = Array.State.World3PromptAncestor.Parent
	end

	return table.concat(Array.State.World3PromptTextArray, " ")
end

function Array.Function.GetWorld3ShrinePromptScore(Prompt)
	if not Prompt or not Prompt:IsA("ProximityPrompt") then
		return 0
	end

	Array.State.World3PromptScore = 0
	Array.State.World3PromptContext = Array.Function.GetWorld3PromptContext(Prompt)
	Array.State.World3PromptContextKey = Array.Function.NormalizeLookupName(Array.State.World3PromptContext)
	Array.State.World3PromptObjectKey = Array.Function.NormalizeLookupName(Array.Config.World3Shrine.PromptObjectText)
	Array.State.World3PromptActionKey = Array.Function.NormalizeLookupName(Array.Config.World3Shrine.PromptActionText)
	Array.State.World3PromptActualObjectKey = Array.Function.NormalizeLookupName(Prompt.ObjectText)
	Array.State.World3PromptActualActionKey = Array.Function.NormalizeLookupName(Prompt.ActionText)

	if Array.State.World3PromptActualObjectKey == Array.State.World3PromptObjectKey then
		Array.State.World3PromptScore = Array.State.World3PromptScore + 120
	elseif string.find(Array.State.World3PromptContextKey, Array.State.World3PromptObjectKey, 1, true) then
		Array.State.World3PromptScore = Array.State.World3PromptScore + 90
	end

	if Array.State.World3PromptActionKey ~= ""
		and (
			Array.State.World3PromptActualActionKey == Array.State.World3PromptActionKey
			or string.find(Array.State.World3PromptContextKey, Array.State.World3PromptActionKey, 1, true)
		)
	then
		Array.State.World3PromptScore = Array.State.World3PromptScore + 35
	end

	if string.find(Array.State.World3PromptContextKey, "shrineofthreeswords", 1, true) then
		Array.State.World3PromptScore = Array.State.World3PromptScore + 120
	elseif string.find(Array.State.World3PromptContextKey, "shrine", 1, true)
		and string.find(Array.State.World3PromptContextKey, "threeswords", 1, true)
	then
		Array.State.World3PromptScore = Array.State.World3PromptScore + 75
	elseif string.find(Array.State.World3PromptContextKey, "threeswords", 1, true) then
		Array.State.World3PromptScore = Array.State.World3PromptScore + 45
	end

	if Prompt.Enabled == false then
		Array.State.World3PromptScore = Array.State.World3PromptScore - 40
	end

	return math.max(Array.State.World3PromptScore, 0), Array.State.World3PromptContext
end

function Array.Function.ScanWorld3ShrinePrompts(Root, Depth)
	if not Root or Depth > Array.Config.World3Shrine.SearchDepth then
		return
	end

	Array.State.World3ShrineChildrenSuccess, Array.State.World3ShrineChildren = pcall(function()
		return Root:GetChildren()
	end)

	if not Array.State.World3ShrineChildrenSuccess then
		return
	end

	for _, Child in next, Array.State.World3ShrineChildren do
		if Child:IsA("ProximityPrompt") then
			Array.State.World3ShrinePromptScore, Array.State.World3ShrinePromptContext =
				Array.Function.GetWorld3ShrinePromptScore(Child)
			Array.State.World3ShrineScanCount = (Array.State.World3ShrineScanCount or 0) + 1

			if Array.State.World3ShrinePromptScore > (Array.State.World3ShrineBestScore or 0) then
				Array.State.World3ShrineBestPrompt = Child
				Array.State.World3ShrineBestScore = Array.State.World3ShrinePromptScore
				Array.State.World3ShrineBestContext = Array.State.World3ShrinePromptContext
			end
		end

		Array.Function.ScanWorld3ShrinePrompts(Child, Depth + 1)
	end
end

function Array.Function.FindWorld3ShrinePrompt()
	Array.State.World3ShrineBestPrompt = nil
	Array.State.World3ShrineBestScore = 0
	Array.State.World3ShrineBestContext = nil
	Array.State.World3ShrineScanCount = 0

	Array.Function.ScanWorld3ShrinePrompts(workspace, 0)
	Array.Function.SetStatus("World3ShrinePromptScanCount", Array.State.World3ShrineScanCount)
	Array.Function.SetStatus("World3ShrinePromptScore", Array.State.World3ShrineBestScore)
	Array.Function.SetStatus(
		"World3ShrinePrompt",
		Array.State.World3ShrineBestPrompt and Array.State.World3ShrineBestPrompt:GetFullName() or nil
	)

	if Array.State.World3ShrineBestScore >= 80 then
		return Array.State.World3ShrineBestPrompt
	end

	return nil
end

function Array.Function.GetWorld3ShrineMoveCFrame(Prompt)
	Array.State.World3ShrinePromptParent = Prompt and Prompt.Parent or nil
	Array.State.World3ShrinePromptCFrame = nil

	if Array.State.World3ShrinePromptParent and Array.State.World3ShrinePromptParent:IsA("Attachment") then
		Array.State.World3ShrinePromptCFrame = Array.State.World3ShrinePromptParent.WorldCFrame
	else
		Array.State.World3ShrinePromptCFrame = Array.Function.GetInstanceCFrame(Array.State.World3ShrinePromptParent)
	end

	if not Array.State.World3ShrinePromptCFrame then
		return nil
	end

	Array.State.World3ShrineLookVector = Array.State.World3ShrinePromptCFrame.LookVector

	if Array.State.World3ShrineLookVector.Magnitude < 0.1 then
		Array.State.World3ShrineLookVector = Vector3.new(0, 0, -1)
	end

	Array.State.World3ShrineMovePosition = Array.State.World3ShrinePromptCFrame.Position
		- (Array.State.World3ShrineLookVector.Unit * Array.Config.World3Shrine.MoveDistance)
		+ Vector3.new(0, Array.Config.World3Shrine.MoveHeight, 0)

	return CFrame.lookAt(Array.State.World3ShrineMovePosition, Array.State.World3ShrinePromptCFrame.Position)
end

function Array.Function.MoveToWorld3ShrinePrompt(Prompt)
	Array.State.World3ShrineMoveCFrame = Array.Function.GetWorld3ShrineMoveCFrame(Prompt)

	if not Array.State.World3ShrineMoveCFrame then
		Array.Function.SetStatus("World3ShrineMove", "missing_cframe")

		return false
	end

	Array.Function.SetStatus("World3ShrineMove", "moving")
	Array.State.World3ShrineMoveSuccess = Array.Function.BypassTeleportToCFrame(Array.State.World3ShrineMoveCFrame)
	Array.Function.SetStatus("World3ShrineMove", Array.State.World3ShrineMoveSuccess and "done" or "failed")

	return Array.State.World3ShrineMoveSuccess
end

function Array.Function.GetWorld3ShrineRemote(Root, Depth)
	if not Root or (Depth or 0) > 4 then
		return nil
	end

	for _, Child in next, Root:GetChildren() do
		if Child:IsA("RemoteEvent") or Child:IsA("RemoteFunction") then
			Array.State.World3ShrineRemoteKey = Array.Function.NormalizeLookupName(Child.Name)

			if Array.State.World3ShrineRemoteKey == "interact"
				or Array.State.World3ShrineRemoteKey == "claim"
				or Array.State.World3ShrineRemoteKey == "buy"
				or string.find(Array.State.World3ShrineRemoteKey, "threesword", 1, true)
				or string.find(Array.State.World3ShrineRemoteKey, "shrine", 1, true)
			then
				return Child
			end
		elseif Child:IsA("Folder") or Child:IsA("Model") then
			Array.State.World3ShrineNestedRemote = Array.Function.GetWorld3ShrineRemote(Child, (Depth or 0) + 1)

			if Array.State.World3ShrineNestedRemote then
				return Array.State.World3ShrineNestedRemote
			end
		end
	end

	return nil
end

function Array.Function.InvokeWorld3ShrineRemote(Prompt)
	Array.State.World3ShrineRemote = nil
	Array.State.World3ShrineRemoteRoot = Prompt and Prompt.Parent or nil

	for _ = 1, 5 do
		if not Array.State.World3ShrineRemoteRoot or Array.State.World3ShrineRemoteRoot == workspace then
			break
		end

		Array.State.World3ShrineRemote = Array.Function.GetWorld3ShrineRemote(Array.State.World3ShrineRemoteRoot, 0)

		if Array.State.World3ShrineRemote then
			break
		end

		Array.State.World3ShrineRemoteRoot = Array.State.World3ShrineRemoteRoot.Parent
	end

	if not Array.State.World3ShrineRemote then
		Array.Function.SetStatus("World3ShrineRemote", "missing")

		return false
	end

	Array.State.World3ShrineRemoteSuccess, Array.State.World3ShrineRemoteResult = pcall(function()
		if Array.State.World3ShrineRemote:IsA("RemoteFunction") then
			return Array.State.World3ShrineRemote:InvokeServer()
		end

		Array.State.World3ShrineRemote:FireServer()
		return true
	end)

	Array.Function.SetStatus("World3ShrineRemote", Array.State.World3ShrineRemoteSuccess and "fired" or "failed")
	Array.Function.SetStatus("World3ShrineRemoteResult", tostring(Array.State.World3ShrineRemoteResult))

	return Array.State.World3ShrineRemoteSuccess
end

function Array.Function.TriggerWorld3ShrinePrompt(Prompt)
	if not Prompt or not Prompt.Parent then
		Array.Function.SetStatus("World3ShrineInteract", "missing_prompt")

		return false
	end

	if Prompt.Enabled == false then
		Array.Function.SetStatus("World3ShrineInteract", "prompt_disabled")

		return false
	end

	Array.State.World3ShrinePromptFired = false
	Array.State.World3ShrineHoldDuration = math.max(tonumber(Prompt.HoldDuration) or 0, 0)

	Array.State.World3ShrineInputSuccess = pcall(function()
		Prompt:InputHoldBegin()
		task.wait(Array.State.World3ShrineHoldDuration + 0.12)
		Prompt:InputHoldEnd()
	end)

	Array.State.World3ShrinePromptFired = Array.State.World3ShrinePromptFired or Array.State.World3ShrineInputSuccess

	if type(firesignal) == "function" then
		Array.State.World3ShrineFireSignalSuccess = pcall(function()
			firesignal(Prompt.Triggered, Array.Service.Player)
		end)
		Array.State.World3ShrinePromptFired = Array.State.World3ShrinePromptFired or Array.State.World3ShrineFireSignalSuccess
	end

	if type(getconnections) == "function" then
		Array.State.World3ShrineConnectionsSuccess = pcall(function()
			for _, Connection in next, getconnections(Prompt.Triggered) do
				pcall(function()
					Connection:Fire(Array.Service.Player)
				end)

				Array.State.World3ShrinePromptFired = true
			end
		end)
	end

	if not Array.State.World3ShrinePromptFired then
		Array.State.World3ShrinePromptFired = Array.Function.InvokeWorld3ShrineRemote(Prompt)
	else
		Array.Function.InvokeWorld3ShrineRemote(Prompt)
	end

	Array.Function.SetStatus("World3ShrineInteract", Array.State.World3ShrinePromptFired and "fired" or "failed")

	return Array.State.World3ShrinePromptFired
end

function Array.Function.GetWorld3AcceptButtonScore(Button)
	if not Button or not Button:IsA("GuiButton") or not Array.Function.IsVisible(Button, Array.Service.PlayerGui) then
		return 0
	end

	Array.State.World3ButtonContext = Array.Function.GetButtonContext(Button, Array.Service.PlayerGui)
	Array.State.World3ButtonContextKey = Array.Function.NormalizeLookupName(Array.State.World3ButtonContext)
	Array.State.World3ButtonTextKey = Array.Function.NormalizeLookupName(Array.Function.GetButtonText(Button))
	Array.State.World3ButtonNameKey = Array.Function.NormalizeLookupName(Button.Name)
	Array.State.World3ButtonHasShrineText = string.find(Array.State.World3ButtonContextKey, "shrine", 1, true) ~= nil
		or string.find(Array.State.World3ButtonContextKey, "threesword", 1, true) ~= nil
	Array.State.World3ButtonIsAccept = Array.State.World3ButtonTextKey == "accept"
		or Array.State.World3ButtonTextKey == "yes"
		or Array.State.World3ButtonTextKey == "confirm"
		or Array.State.World3ButtonTextKey == "interact"
		or Array.State.World3ButtonTextKey == "claim"
		or Array.State.World3ButtonNameKey == "accept"
		or Array.State.World3ButtonNameKey == "yes"
		or Array.State.World3ButtonNameKey == "confirm"
		or Array.State.World3ButtonNameKey == "button"

	if Array.State.World3ButtonHasShrineText and Array.State.World3ButtonIsAccept then
		return 100
	end

	if Array.State.World3ButtonHasShrineText then
		return 65
	end

	if Array.State.World3ButtonIsAccept then
		return 25
	end

	return 0
end

function Array.Function.FindWorld3ShrineAcceptButton()
	Array.State.World3BestAcceptButton = nil
	Array.State.World3BestAcceptScore = 0

	Array.Function.WalkGui(Array.Service.PlayerGui, function(InstanceData)
		if InstanceData:IsA("TextButton") or InstanceData:IsA("ImageButton") then
			Array.State.World3AcceptScore = Array.Function.GetWorld3AcceptButtonScore(InstanceData)

			if Array.State.World3AcceptScore > Array.State.World3BestAcceptScore then
				Array.State.World3BestAcceptButton = InstanceData
				Array.State.World3BestAcceptScore = Array.State.World3AcceptScore
			end
		end
	end)

	Array.Function.SetStatus("World3ShrineAcceptScore", Array.State.World3BestAcceptScore)

	if Array.State.World3BestAcceptScore >= 25 then
		return Array.State.World3BestAcceptButton
	end

	return nil
end

function Array.Function.ClickWorld3ShrineAcceptButtons(Timeout)
	Array.State.World3AcceptStartedAt = os.clock()
	Array.State.World3AcceptClicked = false

	repeat
		Array.State.World3AcceptButton = Array.Function.FindWorld3ShrineAcceptButton()

		if Array.State.World3AcceptButton then
			Array.State.World3AcceptClicked = Array.Function.ClickButton(Array.State.World3AcceptButton) or Array.State.World3AcceptClicked
			Array.Function.SetStatus("World3ShrineAcceptClicked", Array.State.World3AcceptClicked)
			task.wait(0.25)
		else
			task.wait(0.2)
		end
	until not Array.Function.IsRunning()
		or game.PlaceId ~= Array.Config.PlaceId.World3
		or os.clock() - Array.State.World3AcceptStartedAt >= Timeout

	return Array.State.World3AcceptClicked
end

function Array.Function.TryWorld3ShrineInteraction()
	Array.State.World3ShrinePrompt = Array.Function.FindWorld3ShrinePrompt()

	if not Array.State.World3ShrinePrompt then
		Array.Function.SetStatus("World3ShrineState", "prompt_missing")

		return false
	end

	Array.Function.MoveToWorld3ShrinePrompt(Array.State.World3ShrinePrompt)
	task.wait(0.15)
	Array.State.World3ShrineTriggered = Array.Function.TriggerWorld3ShrinePrompt(Array.State.World3ShrinePrompt)
	Array.Function.ClickWorld3ShrineAcceptButtons(Array.Config.World3Shrine.AcceptTimeout)

	return Array.State.World3ShrineTriggered
end

function Array.Function.StartWorld3ShrineLoop()
	if Array.State.World3ShrineStarted or not Array.Config.World3Shrine.Enabled then
		return false
	end

	if game.PlaceId ~= Array.Config.PlaceId.World3 then
		Array.Function.SetStatus("World3Shrine", "wrong_place")

		return false
	end

	Array.State.World3ShrineStarted = true
	Array.Function.SetStatus("World3Shrine", "started")

	task.spawn(function()
		while Array.Function.IsRunning()
			and game.PlaceId == Array.Config.PlaceId.World3
			and Array.Config.World3Shrine.Enabled
		do
			if Array.Function.HasWorld3ShrineReward() then
				Array.Function.SetStatus("World3ShrineState", "reward_owned")
				break
			end

			if not Array.Function.CheckWorld3ShrineRequirements() then
				Array.Function.SetStatus("World3ShrineState", "waiting_requirements")
				task.wait(Array.Config.World3Shrine.CheckDelay)
				continue
			end

			Array.Function.SetStatus("World3ShrineState", "interacting")
			Array.Function.TryWorld3ShrineInteraction()

			if Array.Function.HasWorld3ShrineReward() then
				Array.Function.SetStatus("World3ShrineState", "reward_owned")
				break
			end

			task.wait(Array.Config.World3Shrine.RetryDelay)
		end
	end)

	return true
end

function Array.Function.StartWorld3Script()
	if Array.State.World3Started then
		return true
	end

	Array.State.World3Started = true
	Array.Function.SetStatus("World", "World3")
	Array.Function.SetStatus("World3Script", "started")
	Array.Function.SetStatus("PlaceCheck", "world3_place")

	task.spawn(Array.Function.ClickPlayWhenReady)
	Array.Function.StartAutoPlaytimeRewards()
	Array.Function.StartAutoQuestRewards()
	Array.Function.WaitWorldReady(Array.Config.WorldReadyTimeout)
	Array.Function.RedeemCodes()
	Array.Function.StartWorld3ShrineLoop()

	return true
end

function Array.Function.StartStartupFlow()
	Array.Function.SetStatus("CurrentPlaceId", game.PlaceId)

	if game.PlaceId == Array.Config.PlaceId.Source then
		return Array.Function.TeleportToTarget()
	end

	if game.PlaceId == Array.Config.PlaceId.World1 or game.PlaceId == Array.Config.PlaceId.Target then
		return Array.Function.StartWorld1Script()
	end

	if game.PlaceId == Array.Config.PlaceId.World2 then
		return Array.Function.StartWorld2Script()
	end

	if game.PlaceId == Array.Config.PlaceId.World3 then
		return Array.Function.StartWorld3Script()
	end

	Array.Function.SetStatus("PlaceCheck", "other_allowed_place")
	Array.Function.SetStatus("World1Script", "skipped")

	return false
end

function Array.Function.GetClientEvent(Name)
	Array.State.Replication = Array.Service.ReplicatedStorage:FindFirstChild("Replication")
	Array.State.ClientEvents = Array.State.Replication and Array.State.Replication:FindFirstChild("ClientEvents")

	return Array.State.ClientEvents and Array.State.ClientEvents:FindFirstChild(Name)
end

function Array.Function.IsWorldReady()
	return Array.Function.GetPlayerData() ~= nil
		or Array.Function.GetClientEvent("BuySword") ~= nil
		or Array.Function.GetClientEvent("ClaimCode") ~= nil
end

function Array.Function.WaitWorldReady(Timeout)
	Array.State.WaitWorldReadyStartedAt = os.clock()
	Array.Function.SetStatus("WorldReady", "waiting")

	repeat
		if Array.Function.IsWorldReady() then
			Array.Function.SetStatus("WorldReady", "ready")

			return true
		end

		task.wait(0.25)
	until not Array.Function.IsRunning() or os.clock() - Array.State.WaitWorldReadyStartedAt >= Timeout

	Array.Function.SetStatus("WorldReady", "timeout")

	return false
end

function Array.Function.WaitClientEvent(Name, Timeout)
	Array.State.WaitClientEventStartedAt = os.clock()

	repeat
		Array.State.WaitedClientEvent = Array.Function.GetClientEvent(Name)

		if Array.State.WaitedClientEvent then
			return Array.State.WaitedClientEvent
		end

		task.wait(0.25)
	until not Array.Function.IsRunning() or os.clock() - Array.State.WaitClientEventStartedAt >= Timeout

	return nil
end

function Array.Function.GetCharacter()
	Array.State.Character = Array.Service.Player.Character or Array.Service.Player.CharacterAdded:Wait()
	Array.State.Humanoid = Array.State.Character:FindFirstChildOfClass("Humanoid") or Array.State.Character:WaitForChild("Humanoid")
	Array.State.RootPart = Array.State.Character:FindFirstChild("HumanoidRootPart") or Array.State.Character:WaitForChild("HumanoidRootPart")

	return Array.State.Character, Array.State.Humanoid, Array.State.RootPart
end

function Array.Function.GetPlayerData()
	return Array.Service.Player:FindFirstChild("PlayerData")
end

function Array.Function.NormalizeLookupName(Name)
	return string.lower(tostring(Name or "")):gsub("[%s%p_]+", "")
end

function Array.Function.IsRefundCode(Code)
	Array.State.RefundCodeKey = Array.Function.NormalizeLookupName(Code)

	if Array.Config.RefundCodeNames[Array.State.RefundCodeKey] == true then
		return true
	end

	for RefundCodeName, Enabled in next, Array.Config.RefundCodeNames do
		if Enabled == true and Array.Function.NormalizeLookupName(RefundCodeName) == Array.State.RefundCodeKey then
			return true
		end
	end

	return false
end

function Array.Function.FilterRedeemCodes()
	Array.State.FilteredRedeemCodes = {}

	for _, Code in next, Array.Config.Codes do
		if not Array.Function.IsRefundCode(Code) then
			table.insert(Array.State.FilteredRedeemCodes, Code)
		end
	end

	Array.Config.Codes = Array.State.FilteredRedeemCodes

	return Array.Config.Codes
end

Array.Function.FilterRedeemCodes()

function Array.Function.IsQuestNameMatch(Left, Right)
	Array.State.LeftQuestNameKey = Array.Function.NormalizeLookupName(Left)
	Array.State.RightQuestNameKey = Array.Function.NormalizeLookupName(Right)

	if Array.State.LeftQuestNameKey == "" or Array.State.RightQuestNameKey == "" then
		return false
	end

	return Array.State.LeftQuestNameKey == Array.State.RightQuestNameKey
		or Array.State.LeftQuestNameKey .. "s" == Array.State.RightQuestNameKey
		or Array.State.RightQuestNameKey .. "s" == Array.State.LeftQuestNameKey
		or Array.State.LeftQuestNameKey:gsub("f$", "ves") == Array.State.RightQuestNameKey
		or Array.State.RightQuestNameKey:gsub("f$", "ves") == Array.State.LeftQuestNameKey
		or Array.State.LeftQuestNameKey:gsub("ves$", "f") == Array.State.RightQuestNameKey
		or Array.State.RightQuestNameKey:gsub("ves$", "f") == Array.State.LeftQuestNameKey
end

function Array.Function.FindToolByName(Name)
	if not Name or Name == "" then
		return nil
	end

	Array.State.ToolCharacter = Array.Service.Player.Character

	if Array.State.ToolCharacter then
		Array.State.FoundTool = Array.State.ToolCharacter:FindFirstChild(Name)

		if Array.State.FoundTool and Array.State.FoundTool:IsA("Tool") then
			return Array.State.FoundTool
		end
	end

	Array.State.Backpack = Array.Service.Player:FindFirstChild("Backpack")
	Array.State.FoundTool = Array.State.Backpack and Array.State.Backpack:FindFirstChild(Name)

	if Array.State.FoundTool and Array.State.FoundTool:IsA("Tool") then
		return Array.State.FoundTool
	end

	return nil
end

function Array.Function.WaitForTool(Name, Timeout)
	Array.State.WaitToolStartedAt = os.clock()

	repeat
		Array.State.WaitToolResult = Array.Function.FindToolByName(Name)

		if Array.State.WaitToolResult then
			return Array.State.WaitToolResult
		end

		task.wait(0.25)
	until not Array.Function.IsRunning() or os.clock() - Array.State.WaitToolStartedAt >= Timeout

	return nil
end

function Array.Function.GetCurrentSwordName()
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.SwordData = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("Sword")
	Array.State.CurrentSword = Array.State.SwordData and Array.State.SwordData:FindFirstChild("CurrentSword")

	if Array.State.CurrentSword then
		return tostring(Array.State.CurrentSword.Value or "")
	end

	return ""
end

function Array.Function.GetOwnedSwordArray()
	Array.State.OwnedSwordArray = {}
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.SwordData = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("Sword")
	Array.State.OwnedSwords = Array.State.SwordData and Array.State.SwordData:FindFirstChild("OwnedSwords")

	if not Array.State.OwnedSwords or tostring(Array.State.OwnedSwords.Value or "") == "" then
		return Array.State.OwnedSwordArray
	end

	Array.State.DecodeSwordSuccess, Array.State.DecodedSwords = pcall(function()
		return Array.Service.HttpService:JSONDecode(Array.State.OwnedSwords.Value)
	end)

	if Array.State.DecodeSwordSuccess and type(Array.State.DecodedSwords) == "table" then
		for _, SwordName in next, Array.State.DecodedSwords do
			table.insert(Array.State.OwnedSwordArray, tostring(SwordName))
		end
	end

	return Array.State.OwnedSwordArray
end

function Array.Function.HasOwnedSword(Name)
	if not Name or Name == "" then
		return false
	end

	if Array.Function.GetCurrentSwordName() == Name or Array.Function.FindToolByName(Name) then
		return true
	end

	Array.State.TargetSwordLookup = Array.Function.NormalizeLookupName(Name)

	for _, SwordName in next, Array.Function.GetOwnedSwordArray() do
		Array.State.OwnedSwordLookup = Array.Function.NormalizeLookupName(SwordName)

		if SwordName == Name or SwordName == Name .. " V2" or Array.State.OwnedSwordLookup == Array.State.TargetSwordLookup then
			return true
		end
	end

	return false
end

function Array.Function.GetSwordMasteryStatusName(Name)
	Array.State.SwordMasteryStatusName = tostring(Name or "Sword"):gsub("[^%w]", "")

	return Array.State.SwordMasteryStatusName ~= "" and Array.State.SwordMasteryStatusName or "Sword"
end

function Array.Function.GetSwordMastery(Name)
	if not Name or Name == "" then
		return 0
	end

	Array.State.TargetSwordMasteryName = tostring(Name)
	Array.State.TargetSwordMasteryKey = Array.Function.NormalizeLookupName(Array.State.TargetSwordMasteryName)
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.MasteryData = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("Mastery")
	Array.State.SwordMasteryData = Array.State.MasteryData and Array.State.MasteryData:FindFirstChild("Sword")
	Array.State.TargetSwordMasteryFolder = Array.State.SwordMasteryData
		and Array.State.SwordMasteryData:FindFirstChild(Array.State.TargetSwordMasteryName)

	if not Array.State.TargetSwordMasteryFolder and Array.State.SwordMasteryData then
		for _, Child in next, Array.State.SwordMasteryData:GetChildren() do
			if Array.Function.NormalizeLookupName(Child.Name) == Array.State.TargetSwordMasteryKey then
				Array.State.TargetSwordMasteryFolder = Child
				break
			end
		end
	end

	Array.State.TargetSwordMasteryValue = Array.State.TargetSwordMasteryFolder
		and (
			Array.State.TargetSwordMasteryFolder:FindFirstChild(Array.State.TargetSwordMasteryName .. "Level")
			or Array.State.TargetSwordMasteryFolder:FindFirstChild("Level")
		)

	if not Array.State.TargetSwordMasteryValue and Array.State.TargetSwordMasteryFolder then
		for _, Child in next, Array.State.TargetSwordMasteryFolder:GetChildren() do
			if Child:IsA("ValueBase") and string.find(Array.Function.NormalizeLookupName(Child.Name), "level", 1, true) then
				Array.State.TargetSwordMasteryValue = Child
				break
			end
		end
	end

	Array.State.TargetSwordMasteryLevel = tonumber(Array.State.TargetSwordMasteryValue and Array.State.TargetSwordMasteryValue.Value) or 0

	if Array.State.TargetSwordMasteryLevel < 0 then
		Array.State.TargetSwordMasteryLevel = 0
	end

	Array.State.TargetSwordMasteryStatusName = Array.Function.GetSwordMasteryStatusName(Array.State.TargetSwordMasteryName)
	Array.Function.SetStatus("SwordMastery" .. Array.State.TargetSwordMasteryStatusName, Array.State.TargetSwordMasteryLevel)
	Array.Function.SetStatus(
		"SwordMasteryPath" .. Array.State.TargetSwordMasteryStatusName,
		Array.State.TargetSwordMasteryValue and Array.State.TargetSwordMasteryValue:GetFullName() or nil
	)

	return Array.State.TargetSwordMasteryLevel
end

function Array.Function.SetSea2QuestStatus(Key, Value)
	Array.State.Sea2QuestStatus = type(Array.State.Sea2QuestStatus) == "table" and Array.State.Sea2QuestStatus or {}
	Array.State.Sea2QuestStatus[Key] = Value
	Array.State.Sea2QuestStatus.UpdatedAt = os.clock()

	if Key == "State" then
		Array.Function.SetStatus("Sea2QuestState", Value)
	end
end

function Array.Function.GetPlayerDataBool(Name)
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.PlayerDataBool = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild(Name)

	return Array.State.PlayerDataBool and Array.State.PlayerDataBool.Value == true or false
end

function Array.Function.GetSeaIndex()
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.SeaIndexValue = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("SeaIndex")

	return tonumber(Array.State.SeaIndexValue and Array.State.SeaIndexValue.Value) or tonumber(workspace:GetAttribute("Sea") or 0) or 0
end

function Array.Function.IsSea2Unlocked()
	return Array.Function.GetPlayerDataBool("Sea2Unlocked") or Array.Function.GetSeaIndex() >= 2
end

function Array.Function.ShouldRunSea2Quest()
	if not Array.Config.Sea2Quest.Enabled or game.PlaceId ~= Array.Config.PlaceId.World1 then
		return false
	end

	Array.State.Sea2WorkspaceIndex = tonumber(workspace:GetAttribute("Sea") or 1) or 1

	if Array.State.Sea2WorkspaceIndex ~= 1 then
		Array.Function.SetSea2QuestStatus("State", "not_sea_1")
		return false
	end

	Array.State.Sea2QuestLevel = Array.Function.GetPlayerLevel()
	Array.Function.SetSea2QuestStatus("Level", Array.State.Sea2QuestLevel)

	if Array.State.Sea2QuestLevel <= Array.Config.Sea2Quest.RequiredLevel then
		Array.Function.SetSea2QuestStatus("State", "level_wait")
		return false
	end

	if not Array.Function.HasOwnedSword(Array.Config.Sea2Quest.RequiredSwordName) then
		Array.Function.SetSea2QuestStatus("State", "shusui_wait")
		Array.Function.SetSea2QuestStatus("RequiredSword", Array.Config.Sea2Quest.RequiredSwordName)
		return false
	end

	return true
end

function Array.Function.WaitForSea2QuestInstance(Getter, Timeout)
	Array.State.Sea2WaitStartedAt = os.clock()

	repeat
		if not Array.Function.IsRunning() then
			return nil
		end

		Array.State.Sea2WaitInstance = Getter()

		if Array.State.Sea2WaitInstance then
			return Array.State.Sea2WaitInstance
		end

		task.wait(0.2)
	until Timeout and os.clock() - Array.State.Sea2WaitStartedAt >= Timeout

	return Getter()
end

function Array.Function.GetPointsOfInterest()
	Array.State.LogicFolder = workspace:FindFirstChild("Logic")

	return Array.State.LogicFolder and Array.State.LogicFolder:FindFirstChild("PointsOfInterest")
end

function Array.Function.GetPoneglyphScroll()
	Array.State.PointsOfInterest = Array.Function.GetPointsOfInterest()

	return Array.State.PointsOfInterest and Array.State.PointsOfInterest:FindFirstChild(Array.Config.Sea2Quest.ScrollModelName)
end

function Array.Function.GetSea2Teleporter()
	Array.State.NpcWorkspace = workspace:FindFirstChild("Npc_Workspace")
	Array.State.SeaTeleporterFolder = Array.State.NpcWorkspace and Array.State.NpcWorkspace:FindFirstChild(Array.Config.Sea2Quest.TeleporterFolderName)

	return Array.State.SeaTeleporterFolder and Array.State.SeaTeleporterFolder:FindFirstChild(Array.Config.Sea2Quest.TeleporterModelName)
end

function Array.Function.GetChildRemoteFunction(Parent, Name)
	Array.State.ChildRemoteFunction = Parent and Parent:FindFirstChild(Name)

	if Array.State.ChildRemoteFunction and Array.State.ChildRemoteFunction:IsA("RemoteFunction") then
		return Array.State.ChildRemoteFunction
	end

	return nil
end

function Array.Function.InvokeRemoteFunction(Remote)
	if not Remote or not Remote:IsA("RemoteFunction") then
		return false, "NoRemote"
	end

	Array.State.RemoteFunctionSuccess, Array.State.RemoteFunctionResult = pcall(function()
		return Remote:InvokeServer()
	end)

	if not Array.State.RemoteFunctionSuccess then
		return false, tostring(Array.State.RemoteFunctionResult)
	end

	return true, Array.State.RemoteFunctionResult
end

function Array.Function.MoveToSea2QuestInstance(InstanceData)
	Array.State.Sea2InstanceCFrame = Array.Function.GetInstanceCFrame(InstanceData)

	if not Array.State.Sea2InstanceCFrame then
		return false
	end

	return Array.Function.TravelToCFrame(Array.State.Sea2InstanceCFrame + Array.Config.Sea2Quest.MoveOffset)
end

function Array.Function.PickPoneglyphScroll()
	Array.State.PoneglyphScroll = Array.Function.WaitForSea2QuestInstance(
		Array.Function.GetPoneglyphScroll,
		Array.Config.Sea2Quest.WaitInstanceTimeout
	)

	if not Array.State.PoneglyphScroll then
		Array.Function.SetSea2QuestStatus("State", "scroll_missing")
		return false, "ScrollMissing"
	end

	Array.Function.SetSea2QuestStatus("State", "move_to_scroll")
	Array.Function.MoveToSea2QuestInstance(Array.State.PoneglyphScroll)
	task.wait(0.25)

	Array.State.PoneglyphPickRemote = Array.Function.GetChildRemoteFunction(
		Array.State.PoneglyphScroll,
		Array.Config.Sea2Quest.ScrollRemoteName
	)
	Array.State.PoneglyphPickSuccess, Array.State.PoneglyphPickResult = Array.Function.InvokeRemoteFunction(Array.State.PoneglyphPickRemote)
	Array.Function.SetSea2QuestStatus("LastPickSuccess", Array.State.PoneglyphPickSuccess)
	Array.Function.SetSea2QuestStatus("LastPickResult", tostring(Array.State.PoneglyphPickResult))

	if not Array.State.PoneglyphPickSuccess or Array.State.PoneglyphPickResult == false then
		Array.Function.SetSea2QuestStatus("State", "pick_failed")
		return false, Array.State.PoneglyphPickResult
	end

	Array.Function.SetSea2QuestStatus("State", "scroll_picked")
	task.wait(0.5)

	return true, Array.State.PoneglyphPickResult
end

function Array.Function.UnlockSea2()
	if Array.Function.IsSea2Unlocked() then
		return true, "AlreadyUnlocked"
	end

	Array.State.Sea2Teleporter = Array.Function.WaitForSea2QuestInstance(
		Array.Function.GetSea2Teleporter,
		Array.Config.Sea2Quest.WaitInstanceTimeout
	)

	if not Array.State.Sea2Teleporter then
		Array.Function.SetSea2QuestStatus("State", "teleporter_missing")
		return false, "TeleporterMissing"
	end

	Array.Function.SetSea2QuestStatus("State", "move_to_unlock_npc")
	Array.Function.MoveToSea2QuestInstance(Array.State.Sea2Teleporter)
	task.wait(0.25)

	Array.State.Sea2UnlockRemote = Array.Function.GetChildRemoteFunction(
		Array.State.Sea2Teleporter,
		Array.Config.Sea2Quest.UnlockRemoteName
	)
	Array.State.Sea2UnlockSuccess, Array.State.Sea2UnlockResult = Array.Function.InvokeRemoteFunction(Array.State.Sea2UnlockRemote)
	Array.Function.SetSea2QuestStatus("LastUnlockSuccess", Array.State.Sea2UnlockSuccess)
	Array.Function.SetSea2QuestStatus("LastUnlockResult", tostring(Array.State.Sea2UnlockResult))

	if not Array.State.Sea2UnlockSuccess then
		Array.Function.SetSea2QuestStatus("State", "unlock_failed")
		return false, Array.State.Sea2UnlockResult
	end

	Array.State.Sea2UnlockStartedAt = os.clock()

	repeat
		if Array.Function.IsSea2Unlocked() then
			Array.Function.SetSea2QuestStatus("State", "unlocked")
			return true, Array.State.Sea2UnlockResult
		end

		task.wait(0.25)
	until os.clock() - Array.State.Sea2UnlockStartedAt >= Array.Config.Sea2Quest.WaitUnlockTimeout

	if Array.State.Sea2UnlockResult == false then
		Array.Function.SetSea2QuestStatus("State", "unlock_denied")
		return false, Array.State.Sea2UnlockResult
	end

	Array.Function.SetSea2QuestStatus("State", "unlock_wait_timeout")
	return Array.Function.IsSea2Unlocked(), Array.State.Sea2UnlockResult
end

function Array.Function.TeleportToSea2()
	Array.State.Sea2Teleporter = Array.Function.WaitForSea2QuestInstance(
		Array.Function.GetSea2Teleporter,
		Array.Config.Sea2Quest.WaitInstanceTimeout
	)

	if not Array.State.Sea2Teleporter then
		Array.Function.SetSea2QuestStatus("State", "teleporter_missing")
		return false, "TeleporterMissing"
	end

	Array.Function.SetSea2QuestStatus("State", "move_to_teleporter")
	Array.Function.MoveToSea2QuestInstance(Array.State.Sea2Teleporter)
	task.wait(0.25)
	Array.Function.QueueTargetRunner()

	Array.State.Sea2TeleportRemote = Array.Function.GetChildRemoteFunction(
		Array.State.Sea2Teleporter,
		Array.Config.Sea2Quest.TeleportRemoteName
	)
	Array.State.Sea2TeleportSuccess, Array.State.Sea2TeleportResult = Array.Function.InvokeRemoteFunction(Array.State.Sea2TeleportRemote)
	Array.Function.SetSea2QuestStatus("LastTeleportSuccess", Array.State.Sea2TeleportSuccess)
	Array.Function.SetSea2QuestStatus("LastTeleportResult", tostring(Array.State.Sea2TeleportResult))

	if not Array.State.Sea2TeleportSuccess or Array.State.Sea2TeleportResult == false then
		Array.Function.SetSea2QuestStatus("State", "teleport_failed")
		return false, Array.State.Sea2TeleportResult
	end

	Array.Function.SetSea2QuestStatus("State", "teleport_requested")
	return true, Array.State.Sea2TeleportResult
end

function Array.Function.RunSea2QuestOnce()
	if not Array.Function.ShouldRunSea2Quest() then
		return false, "NotReady"
	end

	Array.State.DoingSea2Quest = true
	Array.State.CurrentTarget = nil
	Array.State.CurrentQuest = nil
	Array.State.ActiveBossFallbackQuest = nil
	Array.Function.SetSea2QuestStatus("State", "running")
	Array.Function.SetAutoFarmStatus("State", "sea2_quest")

	Array.State.Sea2QuestSuccess, Array.State.Sea2QuestResult, Array.State.Sea2QuestExtraResult = pcall(function()
		if Array.Function.HasActiveQuest() then
			Array.State.Sea2CancelQuest, Array.State.Sea2CancelQuestResult = Array.Function.CancelActiveQuest("sea2 quest")
			Array.Function.SetSea2QuestStatus("CancelQuestResult", tostring(Array.State.Sea2CancelQuestResult))
		end

		if not Array.Function.IsSea2Unlocked() then
			Array.Function.PickPoneglyphScroll()

			Array.State.Sea2UnlockedNow, Array.State.Sea2UnlockRunResult = Array.Function.UnlockSea2()

			if not Array.State.Sea2UnlockedNow then
				return false, Array.State.Sea2UnlockRunResult
			end
		end

		return Array.Function.TeleportToSea2()
	end)

	Array.State.DoingSea2Quest = false

	if not Array.State.Sea2QuestSuccess then
		Array.Function.SetSea2QuestStatus("State", "error")
		Array.Function.SetSea2QuestStatus("LastError", tostring(Array.State.Sea2QuestResult))
		return false, Array.State.Sea2QuestResult
	end

	return Array.State.Sea2QuestResult, Array.State.Sea2QuestExtraResult
end

function Array.Function.KeepSea2QuestRunning()
	Array.State.Sea2QuestKey = "__HSKaitunSea2QuestRunning"

	if _G[Array.State.Sea2QuestKey] == Array.State.RunId or not Array.Config.Sea2Quest.Enabled then
		return
	end

	_G[Array.State.Sea2QuestKey] = Array.State.RunId

	while Array.Function.IsRunning() and game.PlaceId == Array.Config.PlaceId.World1 and Array.Config.Sea2Quest.Enabled do
		if Array.Function.ShouldRunSea2Quest()
			and os.clock() - (Array.State.LastSea2QuestAttempt or 0) >= Array.Config.Sea2Quest.RetryDelay
		then
			Array.State.LastSea2QuestAttempt = os.clock()
			Array.State.Sea2RunSuccess, Array.State.Sea2RunResult = Array.Function.RunSea2QuestOnce()
			Array.Function.SetSea2QuestStatus("LastRunSuccess", Array.State.Sea2RunSuccess)
			Array.Function.SetSea2QuestStatus("LastRunResult", tostring(Array.State.Sea2RunResult))

			if Array.State.Sea2RunSuccess then
				task.wait(10)
			end
		end

		task.wait(Array.Config.Sea2Quest.CheckDelay)
	end

	Array.State.DoingSea2Quest = false

	if _G[Array.State.Sea2QuestKey] == Array.State.RunId then
		_G[Array.State.Sea2QuestKey] = nil
	end
end

function Array.Function.StartSea2QuestLoop()
	if Array.State.Sea2QuestStarted or not Array.Config.Sea2Quest.Enabled then
		return false
	end

	Array.State.Sea2QuestStarted = true
	task.spawn(Array.Function.KeepSea2QuestRunning)

	return true
end

function Array.Function.GetInventoryEquipRemote()
	Array.State.InventoryGui = Array.Service.PlayerGui and Array.Service.PlayerGui:FindFirstChild("Inventory")
	Array.State.InventoryEquipRemote = Array.State.InventoryGui and Array.State.InventoryGui:FindFirstChild("Equip")

	return Array.State.InventoryEquipRemote
end

function Array.Function.EquipInventoryItem(Name)
	if not Name or Name == "" then
		return nil
	end

	Array.State.InventoryEquipRemote = Array.Function.GetInventoryEquipRemote()

	if not Array.State.InventoryEquipRemote then
		Array.Function.SetStatus("InventoryEquip", "missing_remote")

		return nil
	end

	Array.State.InventoryEquipSuccess, Array.State.InventoryEquipResult = pcall(function()
		return Array.State.InventoryEquipRemote:InvokeServer(Name)
	end)

	Array.Function.SetStatus("InventoryEquip", Array.State.InventoryEquipSuccess and "called" or "failed")
	Array.Function.SetStatus("InventoryEquipResult", tostring(Array.State.InventoryEquipResult))
	task.wait(0.35)

	Array.State.InventoryEquippedTool = Array.Function.WaitForTool(Name, 2) or Array.Function.FindToolByName(Name)

	if Array.State.InventoryEquippedTool then
		Array.Function.EquipTool(Array.State.InventoryEquippedTool)
	end

	return Array.State.InventoryEquippedTool
end

function Array.Function.GetSwordSellerModel(SwordName)
	Array.State.NpcWorkspace = workspace:FindFirstChild("Npc_Workspace")
	Array.State.SwordSellers = Array.State.NpcWorkspace and Array.State.NpcWorkspace:FindFirstChild("Sword Sellers")

	if not Array.State.SwordSellers then
		Array.Function.SetStatus("SwordSellerFolder", "missing")

		return nil
	end

	Array.Function.SetStatus("SwordSellerFolder", "found")
	Array.State.SwordSeller = Array.State.SwordSellers:FindFirstChild(SwordName)

	if Array.State.SwordSeller then
		Array.Function.SetStatus("SwordSellerMatch", Array.State.SwordSeller.Name)

		return Array.State.SwordSeller
	end

	Array.State.TargetSellerLookup = Array.Function.NormalizeLookupName(SwordName)

	for _, Child in next, Array.State.SwordSellers:GetChildren() do
		Array.State.ChildSellerLookup = Array.Function.NormalizeLookupName(Child.Name)

		if Array.State.ChildSellerLookup == Array.State.TargetSellerLookup
			or string.find(Array.State.ChildSellerLookup, Array.State.TargetSellerLookup, 1, true)
		then
			Array.Function.SetStatus("SwordSellerMatch", Child.Name)

			return Child
		end
	end

	Array.Function.SetStatus("SwordSellerMatch", "missing")

	return nil
end

function Array.Function.FindFirstBasePart(Root)
	if not Root then
		return nil
	end

	if Root:IsA("BasePart") then
		return Root
	end

	for _, Child in next, Root:GetChildren() do
		Array.State.FirstBasePart = Array.Function.FindFirstBasePart(Child)

		if Array.State.FirstBasePart then
			return Array.State.FirstBasePart
		end
	end

	return nil
end

function Array.Function.GetInstanceCFrame(InstanceData)
	if not InstanceData then
		return nil
	end

	if InstanceData:IsA("BasePart") then
		return InstanceData.CFrame
	end

	if InstanceData:IsA("Model") then
		if InstanceData.PrimaryPart then
			return InstanceData.PrimaryPart.CFrame
		end

		Array.State.ModelBasePart = InstanceData:FindFirstChild("HumanoidRootPart") or Array.Function.FindFirstBasePart(InstanceData)

		return Array.State.ModelBasePart and Array.State.ModelBasePart.CFrame or nil
	end

	Array.State.InstanceBasePart = Array.Function.FindFirstBasePart(InstanceData)

	return Array.State.InstanceBasePart and Array.State.InstanceBasePart.CFrame or nil
end

function Array.Function.GetSwordSellerCFrame(Seller)
	Array.State.SwordSellerCFrame = Array.Function.GetInstanceCFrame(Seller)

	if Array.State.SwordSellerCFrame then
		return Array.State.SwordSellerCFrame * Array.Config.SwordSellerOffset
	end

	return nil
end

function Array.Function.ZeroCharacterVelocity()
	if not Array.State.Character then
		return
	end

	for _, Child in next, Array.State.Character:GetChildren() do
		if Child:IsA("BasePart") then
			pcall(function()
				Child.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				Child.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
				Child.Velocity = Vector3.new(0, 0, 0)
				Child.RotVelocity = Vector3.new(0, 0, 0)
			end)
		end

		Array.Function.ZeroChildVelocity(Child)
	end
end

function Array.Function.ZeroChildVelocity(Root)
	for _, Child in next, Root:GetChildren() do
		if Child:IsA("BasePart") then
			pcall(function()
				Child.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				Child.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
				Child.Velocity = Vector3.new(0, 0, 0)
				Child.RotVelocity = Vector3.new(0, 0, 0)
			end)
		end

		Array.Function.ZeroChildVelocity(Child)
	end
end

function Array.Function.SetChildCollision(Root, CanCollide)
	for _, Child in next, Root:GetChildren() do
		if Child:IsA("BasePart") then
			if Array.State.TeleportCollisionCache and Array.State.TeleportCollisionCache[Child] == nil then
				Array.State.TeleportCollisionCache[Child] = Child.CanCollide
			end

			Child.CanCollide = CanCollide
		end

		Array.Function.SetChildCollision(Child, CanCollide)
	end
end

function Array.Function.SetCharacterCollision(CanCollide)
	if not Array.State.Character then
		return
	end

	Array.State.TeleportCollisionCache = Array.State.TeleportCollisionCache or {}

	for _, Child in next, Array.State.Character:GetChildren() do
		if Child:IsA("BasePart") then
			if Array.State.TeleportCollisionCache[Child] == nil then
				Array.State.TeleportCollisionCache[Child] = Child.CanCollide
			end

			Child.CanCollide = CanCollide
		end

		Array.Function.SetChildCollision(Child, CanCollide)
	end
end

function Array.Function.RestoreCharacterCollision()
	if not Array.State.TeleportCollisionCache then
		return
	end

	for Part, CanCollide in next, Array.State.TeleportCollisionCache do
		if Part and Part.Parent then
			Part.CanCollide = CanCollide
		end
	end

	Array.State.TeleportCollisionCache = {}
end

function Array.Function.DirectTeleportToCFrame(TargetCFrame)
	Array.Function.GetCharacter()
	Array.Function.ZeroCharacterVelocity()
	Array.State.RootPart.CFrame = TargetCFrame
	Array.Function.ZeroCharacterVelocity()

	return true
end

function Array.Function.DestroyMotorBypass()
	if Array.State.BypassMotor then
		pcall(function()
			Array.State.BypassMotor:Destroy()
		end)
	end

	if Array.State.BypassPart then
		pcall(function()
			Array.State.BypassPart:Destroy()
		end)
	end

	Array.State.BypassMotor = nil
	Array.State.BypassPart = nil
end

function Array.Function.DestroyVelocityBypass()
	if Array.State.BypassVelocity then
		pcall(function()
			Array.State.BypassVelocity:Destroy()
		end)
	end

	if Array.State.BypassGyro then
		pcall(function()
			Array.State.BypassGyro:Destroy()
		end)
	end

	Array.State.BypassVelocity = nil
	Array.State.BypassGyro = nil
end

function Array.Function.VelocityBypassTeleportToCFrame(TargetCFrame)
	if typeof(TargetCFrame) ~= "CFrame" then
		return false
	end

	Array.Function.GetCharacter()
	Array.Function.DestroyVelocityBypass()

	Array.State.BypassTargetCFrame = TargetCFrame
	Array.State.BypassStartedAt = os.clock()
	Array.State.BypassVelocitySuccess, Array.State.BypassVelocityError = pcall(function()
		Array.Function.ZeroCharacterVelocity()
		Array.State.BypassInitialDistance = (TargetCFrame.Position - Array.State.RootPart.Position).Magnitude
		Array.State.BypassTimeout = math.max(
			Array.Config.BypassTeleportVelocityTimeout,
			(Array.State.BypassInitialDistance / Array.Config.BypassTeleportVelocitySpeed)
				+ Array.Config.BypassTeleportVelocityTimeoutBuffer
		)

		Array.State.BypassVelocity = Instance.new("BodyVelocity")
		Array.State.BypassVelocity.Name = "HSKaitunVelocityBypass"
		Array.State.BypassVelocity.MaxForce = Vector3.new(
			Array.Config.BypassTeleportVelocityMaxForce,
			Array.Config.BypassTeleportVelocityMaxForce,
			Array.Config.BypassTeleportVelocityMaxForce
		)
		Array.State.BypassVelocity.P = Array.Config.BypassTeleportVelocityPower
		Array.State.BypassVelocity.Velocity = Vector3.new(0, 0, 0)
		Array.State.BypassVelocity.Parent = Array.State.RootPart

		Array.State.BypassGyro = Instance.new("BodyGyro")
		Array.State.BypassGyro.Name = "HSKaitunVelocityGyro"
		Array.State.BypassGyro.MaxTorque = Vector3.new(
			Array.Config.BypassTeleportVelocityMaxForce,
			Array.Config.BypassTeleportVelocityMaxForce,
			Array.Config.BypassTeleportVelocityMaxForce
		)
		Array.State.BypassGyro.P = Array.Config.BypassTeleportVelocityPower
		Array.State.BypassGyro.CFrame = Array.State.RootPart.CFrame
		Array.State.BypassGyro.Parent = Array.State.RootPart

		if Array.Config.BypassTeleportNoClip then
			Array.Function.SetCharacterCollision(false)
		end

		Array.Function.SetStatus("BypassTeleport", "velocity")
		Array.Function.SetStatus("BypassTeleportTarget", tostring(TargetCFrame.Position))

		repeat
			if not Array.State.RootPart or not Array.State.RootPart.Parent then
				Array.Function.GetCharacter()
			end

			Array.State.BypassDelta = TargetCFrame.Position - Array.State.RootPart.Position
			Array.State.BypassDistance = Array.State.BypassDelta.Magnitude

			if Array.State.BypassDistance <= Array.Config.BypassTeleportVelocityReachDistance then
				break
			end

			Array.State.BypassDirection = Array.State.BypassDelta.Unit
			Array.State.BypassVelocityVector = Array.State.BypassDirection * Array.Config.BypassTeleportVelocitySpeed
			Array.State.BypassVelocity.Velocity = Array.State.BypassVelocityVector
			Array.State.RootPart.AssemblyLinearVelocity = Array.State.BypassVelocityVector
			Array.State.RootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
			Array.State.BypassGyro.CFrame = CFrame.lookAt(Array.State.RootPart.Position, TargetCFrame.Position)

			if Array.Config.BypassTeleportNoClip then
				Array.Function.SetCharacterCollision(false)
			end

			task.wait(Array.Config.BypassTeleportVelocityStepDelay)
		until not Array.Function.IsRunning()
			or os.clock() - Array.State.BypassStartedAt >= Array.State.BypassTimeout

		Array.State.BypassVelocity.Velocity = Vector3.new(0, 0, 0)
		Array.State.RootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
		Array.State.RootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
		Array.State.BypassFinalDistance = (Array.State.RootPart.Position - TargetCFrame.Position).Magnitude

		if Array.Config.BypassTeleportFinalSnap and Array.State.BypassFinalDistance <= Array.Config.BypassTeleportFinalSnapDistance then
			Array.State.RootPart.CFrame = TargetCFrame
			Array.Function.SetStatus("BypassTeleportFinalSnap", "near")
		elseif Array.Config.BypassTeleportFinalSnap then
			Array.Function.SetStatus("BypassTeleportFinalSnap", "skipped_far")
		end

		Array.Function.ZeroCharacterVelocity()
		task.wait(Array.Config.BypassTeleportSettleDelay)
	end)

	Array.Function.DestroyVelocityBypass()

	if Array.Config.BypassTeleportNoClip and Array.Config.BypassTeleportRestoreCollision then
		Array.Function.RestoreCharacterCollision()
	end

	if not Array.State.BypassVelocitySuccess then
		Array.Function.SetStatus("BypassTeleport", "velocity_failed")
		Array.Function.SetStatus("BypassTeleportError", tostring(Array.State.BypassVelocityError))

		return false
	end

	if not Array.State.RootPart or not Array.State.RootPart.Parent then
		return false
	end

	if (Array.State.RootPart.Position - TargetCFrame.Position).Magnitude > math.max(
		Array.Config.BypassTeleportVelocityReachDistance,
		Array.Config.BypassTeleportFinalSnapDistance
	) then
		Array.Function.SetStatus("BypassTeleport", "velocity_timeout")

		return false
	end

	Array.Function.SetStatus("BypassTeleport", "done")

	return true
end

function Array.Function.MotorBypassTeleportToCFrame(TargetCFrame)
	if typeof(TargetCFrame) ~= "CFrame" then
		return false
	end

	Array.Function.GetCharacter()
	Array.Function.DestroyMotorBypass()

	Array.State.BypassTargetCFrame = TargetCFrame
	Array.State.BypassMotorCFrame = TargetCFrame + Vector3.new(0, Array.Config.BypassTeleportMotorHeight, 0)

	Array.Function.SetStatus("BypassTeleport", "motor6d")
	Array.Function.SetStatus("BypassTeleportTarget", tostring(TargetCFrame.Position))

	if Array.Config.BypassTeleportNoClip then
		Array.Function.SetCharacterCollision(false)
	end

	Array.State.MotorBypassSuccess, Array.State.MotorBypassError = pcall(function()
		Array.Function.ZeroCharacterVelocity()

		Array.State.BypassPart = Instance.new("Part")
		Array.State.BypassPart.Name = "HSKaitunMotorBypass"
		Array.State.BypassPart.Size = Vector3.new(2, 2, 2)
		Array.State.BypassPart.CFrame = Array.State.BypassMotorCFrame
		Array.State.BypassPart.Transparency = 1
		Array.State.BypassPart.Anchored = Array.Config.BypassTeleportMotorAnchored
		Array.State.BypassPart.CanCollide = false
		Array.State.BypassPart.Massless = true

		pcall(function()
			Array.State.BypassPart.CanTouch = false
			Array.State.BypassPart.CanQuery = false
		end)

		Array.State.BypassPart.Parent = workspace

		Array.State.BypassMotor = Instance.new("Motor6D")
		Array.State.BypassMotor.Name = "HSKaitunMotor6D"
		Array.State.BypassMotor.Part0 = Array.State.BypassPart
		Array.State.BypassMotor.Part1 = Array.State.RootPart
		Array.State.BypassMotor.C0 = CFrame.new()
		Array.State.BypassMotor.C1 = CFrame.new(0, Array.Config.BypassTeleportMotorHeight, 0)
		Array.State.BypassMotor.Parent = Array.State.BypassPart

		task.wait(Array.Config.BypassTeleportMotorWait)

		if not Array.State.RootPart or not Array.State.RootPart.Parent then
			Array.Function.GetCharacter()
		end

		if Array.Config.BypassTeleportFinalSnap then
			Array.State.RootPart.CFrame = TargetCFrame
		end

		Array.Function.ZeroCharacterVelocity()
		task.wait(Array.Config.BypassTeleportSettleDelay)
	end)

	Array.Function.DestroyMotorBypass()

	if Array.Config.BypassTeleportNoClip and Array.Config.BypassTeleportRestoreCollision then
		Array.Function.RestoreCharacterCollision()
	end

	if not Array.State.MotorBypassSuccess then
		Array.Function.SetStatus("BypassTeleport", "motor6d_failed")
		Array.Function.SetStatus("BypassTeleportError", tostring(Array.State.MotorBypassError))

		return false
	end

	Array.Function.SetStatus("BypassTeleport", "done")

	return true
end

function Array.Function.StepBypassTeleportToCFrame(TargetCFrame)
	if typeof(TargetCFrame) ~= "CFrame" then
		return false
	end

	Array.Function.GetCharacter()

	if not Array.Config.BypassTeleport then
		return Array.Function.DirectTeleportToCFrame(TargetCFrame)
	end

	Array.State.BypassTargetCFrame = TargetCFrame
	Array.State.BypassTargetRotation = TargetCFrame.Rotation
	Array.State.BypassStartedAt = os.clock()
	Array.State.BypassStepDistance = math.min(
		Array.Config.BypassTeleportMaxStep,
		math.max(4, Array.Config.BypassTeleportSpeed * Array.Config.BypassTeleportStepDelay)
	)

	Array.Function.SetStatus("BypassTeleport", "moving")
	Array.Function.SetStatus("BypassTeleportTarget", tostring(TargetCFrame.Position))

	if Array.Config.BypassTeleportNoClip then
		Array.Function.SetCharacterCollision(false)
	end

	repeat
		if not Array.State.RootPart or not Array.State.RootPart.Parent then
			Array.Function.GetCharacter()
		end

		Array.State.BypassDelta = Array.State.BypassTargetCFrame.Position - Array.State.RootPart.Position
		Array.State.BypassDistance = Array.State.BypassDelta.Magnitude

		if Array.State.BypassDistance <= Array.State.BypassStepDistance then
			Array.State.RootPart.CFrame = Array.State.BypassTargetCFrame
			break
		end

		Array.State.BypassDirection = Array.State.BypassDelta.Unit
		Array.State.BypassNextPosition = Array.State.RootPart.Position + (Array.State.BypassDirection * Array.State.BypassStepDistance)
		Array.State.RootPart.CFrame = CFrame.new(Array.State.BypassNextPosition) * Array.State.BypassTargetRotation
		Array.Function.ZeroCharacterVelocity()
		task.wait(Array.Config.BypassTeleportStepDelay)
	until not Array.Function.IsRunning()

	Array.State.RootPart.CFrame = Array.State.BypassTargetCFrame
	Array.Function.ZeroCharacterVelocity()
	task.wait(Array.Config.BypassTeleportSettleDelay)

	if Array.Config.BypassTeleportNoClip and Array.Config.BypassTeleportRestoreCollision then
		Array.Function.RestoreCharacterCollision()
	end

	Array.Function.SetStatus("BypassTeleport", "done")

	return true
end

function Array.Function.BypassTeleportToCFrame(TargetCFrame)
	if typeof(TargetCFrame) ~= "CFrame" then
		return false
	end

	if not Array.Config.BypassTeleport then
		return Array.Function.DirectTeleportToCFrame(TargetCFrame)
	end

	if Array.Config.BypassTeleportMode == "Velocity" then
		if Array.Function.VelocityBypassTeleportToCFrame(TargetCFrame) then
			return true
		end

		if not Array.Config.BypassTeleportFallback then
			Array.Function.SetStatus("BypassTeleport", "velocity_failed_no_fallback")

			return false
		end

		Array.Function.SetStatus("BypassTeleport", "motor6d_fallback")
	end

	if Array.Config.BypassTeleportMode == "Velocity" or Array.Config.BypassTeleportMode == "Motor6D" then
		if Array.Function.MotorBypassTeleportToCFrame(TargetCFrame) then
			return true
		end

		Array.Function.SetStatus("BypassTeleport", "step_fallback")
	end

	return Array.Function.StepBypassTeleportToCFrame(TargetCFrame)
end

function Array.Function.MoveToInstance(InstanceData)
	Array.State.TargetCFrame = Array.Function.GetInstanceCFrame(InstanceData)

	if not Array.State.TargetCFrame then
		return false
	end

	return Array.Function.BypassTeleportToCFrame(Array.State.TargetCFrame * Array.Config.SwordSellerOffset)
end

function Array.Function.MoveToSwordSeller(Seller)
	Array.State.SwordSellerMoveCFrame = Array.Function.GetSwordSellerCFrame(Seller)

	if not Array.State.SwordSellerMoveCFrame then
		Array.Function.SetStatus("MoveToSwordSeller", "missing_cframe")

		return false
	end

	Array.Function.SetStatus("MoveToSwordSeller", "moving")

	return Array.Function.BypassTeleportToCFrame(Array.State.SwordSellerMoveCFrame)
end

function Array.Function.EquipTool(Tool)
	if not Tool then
		return false
	end

	Array.Function.GetCharacter()

	if Tool.Parent ~= Array.State.Character then
		pcall(function()
			Array.State.Humanoid:EquipTool(Tool)
		end)

		task.wait(0.1)
	end

	Array.State.EquippedTool = Array.State.Character:FindFirstChild(Tool.Name)

	return Array.State.EquippedTool ~= nil
end

function Array.Function.InvokeBuySword(Seller, Reason)
	if not Seller then
		Array.Function.SetStatus("BuyKatanaInvoke", "missing_seller")

		return false
	end

	Array.State.BuySword = Array.Function.GetClientEvent("BuySword")
	Array.Function.SetStatus("BuySwordRemote", Array.State.BuySword and "found" or "missing")

	if not Array.State.BuySword then
		return false
	end

	Array.Function.SetStatus("BuyKatanaInvokeReason", Reason or "buy")
	Array.State.BuyKatanaSuccess, Array.State.BuyKatanaResult = pcall(function()
		return Array.State.BuySword:InvokeServer(Seller)
	end)

	Array.Function.SetStatus("BuyKatanaInvoke", Array.State.BuyKatanaSuccess and "success" or "failed")
	Array.Function.SetStatus("BuyKatanaResult", tostring(Array.State.BuyKatanaResult))

	return Array.State.BuyKatanaSuccess
end

function Array.Function.BuyKatana()
	if Array.State.KatanaDone then
		return true
	end

	Array.Function.SetStatus("BuyKatana", "checking")
	Array.Function.SetStatus("BuyKatanaPlaceId", game.PlaceId)

	if Array.Function.HasOwnedSword(Array.Config.SwordName) then
		Array.State.KatanaTool = Array.Function.WaitForTool(Array.Config.SwordName, 1) or Array.Function.FindToolByName(Array.Config.SwordName)
		Array.Function.EquipTool(Array.State.KatanaTool)
		Array.State.KatanaDone = true
		Array.Function.SetStatus("BuyKatana", "owned")

		return true
	end

	Array.State.KatanaBuyStartedAt = os.clock()

	repeat
		Array.State.KatanaSeller = Array.Function.GetSwordSellerModel(Array.Config.SwordName)
		Array.State.BuySword = Array.Function.GetClientEvent("BuySword")
		Array.Function.SetStatus("KatanaSeller", Array.State.KatanaSeller and Array.State.KatanaSeller:GetFullName() or "missing")
		Array.Function.SetStatus("BuySwordRemote", Array.State.BuySword and "found" or "missing")

		if Array.State.KatanaSeller and Array.State.BuySword then
			Array.Function.SetStatus("BuyKatana", "buying")
			Array.Function.InvokeBuySword(Array.State.KatanaSeller, "before_move")
			task.wait(math.max(Array.Config.BuySwordDelay, 0.05))

			if Array.Function.HasOwnedSword(Array.Config.SwordName) then
				Array.State.KatanaTool = Array.Function.WaitForTool(Array.Config.SwordName, Array.Config.WaitToolTimeout)
					or Array.Function.FindToolByName(Array.Config.SwordName)

				Array.Function.EquipTool(Array.State.KatanaTool)
				Array.State.KatanaDone = true
				Array.Function.SetStatus("BuyKatana", "done")

				return true
			end

			Array.Function.MoveToSwordSeller(Array.State.KatanaSeller)
			task.wait(math.max(Array.Config.BuySwordDelay, 0.05))
			Array.Function.InvokeBuySword(Array.State.KatanaSeller, "after_move")
			task.wait(math.max(Array.Config.BuySwordDelay, 0.05))

			if Array.Function.HasOwnedSword(Array.Config.SwordName) then
				Array.State.KatanaTool = Array.Function.WaitForTool(Array.Config.SwordName, Array.Config.WaitToolTimeout)
					or Array.Function.FindToolByName(Array.Config.SwordName)

				Array.Function.EquipTool(Array.State.KatanaTool)
				Array.State.KatanaDone = true
				Array.Function.SetStatus("BuyKatana", "done")

				return true
			end
		else
			Array.Function.SetStatus("BuyKatana", Array.State.KatanaSeller and "missing_remote" or "missing_seller")
		end

		task.wait(0.5)
	until not Array.Function.IsRunning() or os.clock() - Array.State.KatanaBuyStartedAt >= Array.Config.BuySwordTimeout

	Array.Function.SetStatus("BuyKatana", "timeout")

	return false
end

function Array.Function.GetCurrentFightingStyleName()
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.FightingStyleValue = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("FightingStyle")

	return tostring(Array.State.FightingStyleValue and Array.State.FightingStyleValue.Value or "")
end

function Array.Function.GetOwnedFightingStyleArray()
	Array.State.OwnedFightingStyleArray = {}
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.OwnedFightingStyles = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("OwnedFightingStyles")

	if not Array.State.OwnedFightingStyles or tostring(Array.State.OwnedFightingStyles.Value or "") == "" then
		return Array.State.OwnedFightingStyleArray
	end

	Array.State.DecodeFightingStyleSuccess, Array.State.DecodedFightingStyles = pcall(function()
		return Array.Service.HttpService:JSONDecode(Array.State.OwnedFightingStyles.Value)
	end)

	if Array.State.DecodeFightingStyleSuccess and type(Array.State.DecodedFightingStyles) == "table" then
		for _, StyleName in next, Array.State.DecodedFightingStyles do
			table.insert(Array.State.OwnedFightingStyleArray, tostring(StyleName))
		end
	end

	return Array.State.OwnedFightingStyleArray
end

function Array.Function.HasOwnedFightingStyle(Name)
	if not Name or Name == "" then
		return false
	end

	Array.State.TargetFightingStyleLookup = Array.Function.NormalizeLookupName(Name)

	if Array.Function.NormalizeLookupName(Array.Function.GetCurrentFightingStyleName()) == Array.State.TargetFightingStyleLookup
		or Array.Function.FindToolByName(Name)
	then
		return true
	end

	for _, StyleName in next, Array.Function.GetOwnedFightingStyleArray() do
		Array.State.OwnedFightingStyleLookup = Array.Function.NormalizeLookupName(StyleName)

		if StyleName == Name or StyleName == Name .. " V2" or Array.State.OwnedFightingStyleLookup == Array.State.TargetFightingStyleLookup then
			return true
		end
	end

	return false
end

function Array.Function.GetChangeFightingStyleRemote()
	return Array.Function.GetClientEvent("ChangeFightingStyle")
end

function Array.Function.GetBuyFightingStyleRemote()
	return Array.Function.GetClientEvent("BuyFightingStyle")
end

function Array.Function.GetFightingStyleTrainer(StyleName)
	Array.State.NpcWorkspace = workspace:FindFirstChild("Npc_Workspace")
	Array.State.FightingStyleTrainers = Array.State.NpcWorkspace and Array.State.NpcWorkspace:FindFirstChild("FightingStyle")

	if not Array.State.FightingStyleTrainers then
		Array.Function.SetStatus("BlackLegTrainer", "missing_folder")

		return nil
	end

	Array.State.FightingStyleTrainer = Array.State.FightingStyleTrainers:FindFirstChild(StyleName)

	if Array.State.FightingStyleTrainer then
		Array.Function.SetStatus("BlackLegTrainer", Array.State.FightingStyleTrainer.Name)

		return Array.State.FightingStyleTrainer
	end

	Array.State.TargetTrainerLookup = Array.Function.NormalizeLookupName(StyleName)

	for _, Trainer in next, Array.State.FightingStyleTrainers:GetChildren() do
		Array.State.TrainerLookup = Array.Function.NormalizeLookupName(Trainer.Name)

		if Array.State.TrainerLookup == Array.State.TargetTrainerLookup then
			Array.Function.SetStatus("BlackLegTrainer", Trainer.Name)

			return Trainer
		end
	end

	Array.Function.SetStatus("BlackLegTrainer", "missing")

	return nil
end

function Array.Function.MoveToBlackLegTrainer()
	Array.State.BlackLegTrainer = Array.Function.GetFightingStyleTrainer(Array.Config.AutoBlackLeg.StyleName)

	if Array.State.BlackLegTrainer then
		return true
	end

	Array.Function.SetStatus("AutoBlackLeg", "loading_npc")
	Array.Function.BypassTeleportToCFrame(Array.Config.AutoBlackLeg.NpcCFrame * Array.Config.AutoBlackLeg.NpcOffset)
	task.wait(Array.Config.AutoBlackLeg.NpcLoadDelay)

	return Array.Function.GetFightingStyleTrainer(Array.Config.AutoBlackLeg.StyleName) ~= nil
end

function Array.Function.WaitForBlackLegTrainer()
	Array.State.BlackLegTrainerStartedAt = os.clock()

	repeat
		if Array.Function.MoveToBlackLegTrainer() then
			return true
		end

		task.wait(Array.Config.AutoBlackLeg.NpcLoadDelay)
	until not Array.Function.IsRunning() or os.clock() - Array.State.BlackLegTrainerStartedAt >= Array.Config.AutoBlackLeg.NpcLoadTimeout

	return false
end

function Array.Function.InvokeBuyFightingStyle(StyleName, Reason)
	Array.State.BuyFightingStyle = Array.Function.GetBuyFightingStyleRemote()
	Array.Function.SetStatus("BuyFightingStyleRemote", Array.State.BuyFightingStyle and "found" or "missing")

	if not Array.State.BuyFightingStyle then
		return false
	end

	Array.Function.SetStatus("BuyFightingStyleReason", Reason or "buy")
	Array.Function.SetStatus("BuyFightingStyleTarget", StyleName)
	Array.State.BuyFightingStyleSuccess, Array.State.BuyFightingStyleResult = pcall(function()
		return Array.State.BuyFightingStyle:InvokeServer(StyleName)
	end)

	Array.Function.SetStatus("BuyFightingStyle", Array.State.BuyFightingStyleSuccess and "success" or "failed")
	Array.Function.SetStatus("BuyFightingStyleResult", tostring(Array.State.BuyFightingStyleResult))

	return Array.State.BuyFightingStyleSuccess and Array.State.BuyFightingStyleResult ~= false
end

function Array.Function.InvokeChangeFightingStyle(StyleName, Reason)
	Array.State.ChangeFightingStyle = Array.Function.GetChangeFightingStyleRemote()
	Array.Function.SetStatus("ChangeFightingStyleRemote", Array.State.ChangeFightingStyle and "found" or "missing")

	if not Array.State.ChangeFightingStyle then
		return false
	end

	Array.Function.SetStatus("ChangeFightingStyleReason", Reason or "change")
	Array.Function.SetStatus("ChangeFightingStyleTarget", StyleName)
	Array.State.ChangeFightingStyleSuccess, Array.State.ChangeFightingStyleResult = pcall(function()
		return Array.State.ChangeFightingStyle:InvokeServer(StyleName)
	end)

	Array.Function.SetStatus("ChangeFightingStyle", Array.State.ChangeFightingStyleSuccess and "success" or "failed")
	Array.Function.SetStatus("ChangeFightingStyleResult", tostring(Array.State.ChangeFightingStyleResult))

	return Array.State.ChangeFightingStyleSuccess
end

function Array.Function.WaitForFightingStyle(StyleName, Timeout)
	Array.State.WaitFightingStyleStartedAt = os.clock()
	Array.State.WaitFightingStyleLookup = Array.Function.NormalizeLookupName(StyleName)

	repeat
		if Array.Function.NormalizeLookupName(Array.Function.GetCurrentFightingStyleName()) == Array.State.WaitFightingStyleLookup
			or Array.Function.FindToolByName(StyleName)
		then
			return true
		end

		task.wait(0.25)
	until not Array.Function.IsRunning() or os.clock() - Array.State.WaitFightingStyleStartedAt >= Timeout

	return false
end

function Array.Function.WaitForOwnedFightingStyle(StyleName, Timeout)
	Array.State.WaitOwnedFightingStyleStartedAt = os.clock()

	repeat
		if Array.Function.HasOwnedFightingStyle(StyleName) then
			return true
		end

		task.wait(0.25)
	until not Array.Function.IsRunning() or os.clock() - Array.State.WaitOwnedFightingStyleStartedAt >= Timeout

	return false
end

function Array.Function.ShouldBuyBlackLeg()
	if not Array.Config.AutoBlackLeg.Enabled then
		return false
	end

	Array.State.BlackLegLevel = Array.Function.GetPlayerLevel()
	Array.State.BlackLegCurrency = Array.Function.GetCurrency()
	Array.Function.SetStatus("BlackLegLevel", Array.State.BlackLegLevel)
	Array.Function.SetStatus("BlackLegCurrency", Array.State.BlackLegCurrency)

	if Array.State.BlackLegLevel < Array.Config.AutoBlackLeg.RequiredLevel then
		Array.Function.SetStatus("AutoBlackLeg", "waiting_level")

		return false
	end

	if Array.Function.NormalizeLookupName(Array.Function.GetCurrentFightingStyleName()) == Array.Function.NormalizeLookupName(Array.Config.AutoBlackLeg.StyleName) then
		Array.Config.AutoFarm.PreferTool = Array.Config.AutoBlackLeg.StyleName
		Array.Function.SetStatus("AutoBlackLeg", "equipped")

		return false
	end

	Array.State.HasBlackLegStyle = Array.Function.HasOwnedFightingStyle(Array.Config.AutoBlackLeg.StyleName)

	if Array.State.HasBlackLegStyle then
		return true
	end

	if Array.State.BlackLegCurrency < Array.Config.AutoBlackLeg.RequiredBeli then
		Array.Function.SetStatus("AutoBlackLeg", "waiting_beli")

		return false
	end

	return true
end

function Array.Function.BuyBlackLeg()
	if not Array.Function.ShouldBuyBlackLeg() then
		return false
	end

	if os.clock() - (Array.State.LastBlackLegBuyAttempt or 0) < Array.Config.AutoBlackLeg.BuyRetryDelay then
		return false
	end

	Array.State.LastBlackLegBuyAttempt = os.clock()
	Array.State.BuyingBlackLeg = true
	Array.State.BlackLegBuySuccess, Array.State.BlackLegBuyResult = pcall(function()
		Array.State.BlackLegOwned = Array.Function.HasOwnedFightingStyle(Array.Config.AutoBlackLeg.StyleName)

		if not Array.State.BlackLegOwned then
			if not Array.Function.WaitForBlackLegTrainer() then
				Array.Function.SetStatus("AutoBlackLeg", "npc_missing")

				return false
			end

			Array.Function.SetStatus("AutoBlackLeg", "buying")

			if not Array.Function.InvokeBuyFightingStyle(Array.Config.AutoBlackLeg.StyleName, "auto_black_leg") then
				Array.Function.SetStatus("AutoBlackLeg", "buy_failed")

				return false
			end

			Array.Function.SetStatus("AutoBlackLeg", "waiting_owned")

			if not Array.Function.WaitForOwnedFightingStyle(Array.Config.AutoBlackLeg.StyleName, Array.Config.AutoBlackLeg.BuyTimeout) then
				Array.Function.SetStatus("AutoBlackLeg", "owned_confirm_timeout")

				return false
			end

			Array.State.BlackLegOwned = true
		end

		Array.Function.SetStatus("AutoBlackLeg", "equipping")

		if not Array.Function.InvokeChangeFightingStyle(Array.Config.AutoBlackLeg.StyleName, "auto_black_leg") then
			Array.Function.SetStatus("AutoBlackLeg", "equip_failed")

			return false
		end

		task.wait(Array.Config.AutoBlackLeg.EquipDelay)

		if Array.Function.WaitForFightingStyle(Array.Config.AutoBlackLeg.StyleName, Array.Config.AutoBlackLeg.BuyTimeout) then
			Array.Config.AutoFarm.PreferTool = Array.Config.AutoBlackLeg.StyleName
			Array.Function.SetStatus("AutoBlackLeg", "done")

			return true
		end

		Array.Function.SetStatus("AutoBlackLeg", "waiting_confirm")

		return false
	end)

	Array.State.BuyingBlackLeg = false

	if not Array.State.BlackLegBuySuccess then
		Array.Function.SetStatus("AutoBlackLeg", "error")
		Array.Function.SetStatus("AutoBlackLegError", tostring(Array.State.BlackLegBuyResult))

		return false
	end

	return Array.State.BlackLegBuyResult == true
end

function Array.Function.StartAutoBlackLeg()
	if Array.State.AutoBlackLegStarted or not Array.Config.AutoBlackLeg.Enabled then
		return false
	end

	Array.State.AutoBlackLegStarted = true

	task.spawn(function()
		Array.Function.SetStatus("AutoBlackLeg", "started")

		while Array.Function.IsRunning() and Array.Config.AutoBlackLeg.Enabled do
			Array.State.AutoBlackLegSuccess, Array.State.AutoBlackLegResult = pcall(Array.Function.BuyBlackLeg)

			if not Array.State.AutoBlackLegSuccess then
				Array.State.AutoBlackLegError = tostring(Array.State.AutoBlackLegResult)
				Array.Function.SetStatus("AutoBlackLeg", "error")
				Array.Function.SetStatus("AutoBlackLegError", Array.State.AutoBlackLegError)
			else
				Array.State.AutoBlackLegError = nil
			end

			task.wait(Array.Config.AutoBlackLeg.CheckDelay)
		end

		Array.State.AutoBlackLegStarted = false
		Array.Function.SetStatus("AutoBlackLeg", "stopped")
	end)

	return true
end

function Array.Function.GetValue(Parent, Name, Fallback)
	Array.State.ValueObject = Parent and Parent:FindFirstChild(Name)

	if Array.State.ValueObject and Array.State.ValueObject:IsA("ValueBase") then
		return Array.State.ValueObject.Value
	end

	return Fallback
end

function Array.Function.GetPlayerLevelValue()
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.ExperienceData = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("Experience")
	Array.State.LevelData = Array.State.ExperienceData and Array.State.ExperienceData:FindFirstChild("Level")
	Array.State.PlayerLevelValue = tonumber(Array.State.LevelData and Array.State.LevelData.Value)

	if Array.State.PlayerLevelValue and Array.State.PlayerLevelValue >= 1 then
		Array.State.LastKnownPlayerLevel = Array.State.PlayerLevelValue

		return Array.State.PlayerLevelValue, true
	end

	return nil, false
end

function Array.Function.IsPlayerLevelReady()
	Array.State.ReadyPlayerLevel, Array.State.ReadyPlayerLevelFound = Array.Function.GetPlayerLevelValue()

	return Array.State.ReadyPlayerLevelFound == true, Array.State.ReadyPlayerLevel
end

function Array.Function.WaitPlayerLevelReady(Timeout)
	Array.State.LevelReadyStartedAt = os.clock()
	Array.State.LevelOneSeenAt = nil
	Array.Function.SetStatus("PlayerLevelReady", "waiting")

	repeat
		Array.State.WaitedPlayerLevel, Array.State.WaitedPlayerLevelFound = Array.Function.GetPlayerLevelValue()

		if Array.State.WaitedPlayerLevelFound then
			Array.Function.SetStatus("PlayerLevelValue", Array.State.WaitedPlayerLevel)

			if Array.State.WaitedPlayerLevel > 1 then
				Array.Function.SetStatus("PlayerLevelReady", "ready")

				return Array.State.WaitedPlayerLevel
			end

			Array.State.LevelOneSeenAt = Array.State.LevelOneSeenAt or os.clock()

			if os.clock() - Array.State.LevelOneSeenAt >= Array.Config.AutoFarm.LevelOneSettleDelay then
				Array.Function.SetStatus("PlayerLevelReady", "ready_level_1")

				return Array.State.WaitedPlayerLevel
			end
		else
			Array.State.LevelOneSeenAt = nil
			Array.Function.SetStatus("PlayerLevelValue", "missing")
		end

		task.wait(Array.Config.AutoFarm.LevelReadyPollDelay)
	until not Array.Function.IsRunning() or os.clock() - Array.State.LevelReadyStartedAt >= Timeout

	Array.Function.SetStatus("PlayerLevelReady", "timeout")

	return nil
end

function Array.Function.GetPlayerLevel()
	Array.State.PlayerLevelValue, Array.State.PlayerLevelFound = Array.Function.GetPlayerLevelValue()

	return Array.State.PlayerLevelValue or tonumber(Array.State.LastKnownPlayerLevel) or 1
end

function Array.Function.GetExperienceFolder()
	Array.State.PlayerData = Array.Function.GetPlayerData()

	return Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("Experience")
end

function Array.Function.GetStatValue(Name)
	Array.State.ExperienceData = Array.Function.GetExperienceFolder()
	Array.State.StatValue = Array.State.ExperienceData and Array.State.ExperienceData:FindFirstChild(Name)

	return tonumber(Array.State.StatValue and Array.State.StatValue.Value) or 0
end

function Array.Function.GetPointValue()
	Array.State.ExperienceData = Array.Function.GetExperienceFolder()
	Array.State.PointValue = Array.State.ExperienceData and Array.State.ExperienceData:FindFirstChild("Points")

	return tonumber(Array.State.PointValue and Array.State.PointValue.Value) or 0
end

function Array.Function.GetCurrency()
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.CurrencyValue = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("Currency")

	return tonumber(Array.State.CurrencyValue and Array.State.CurrencyValue.Value) or 0
end

function Array.Function.BuildStatSpendPlan()
	Array.State.StatSpendPlan = {}
	Array.State.StatPoints = Array.Function.GetPointValue()
	Array.State.StatRatio = Array.Config.AutoStats.Ratio
	Array.State.StatRatioTotal = (tonumber(Array.State.StatRatio.Combat) or 0) + (tonumber(Array.State.StatRatio.Defense) or 0)

	if Array.State.StatPoints <= 0 then
		return Array.State.StatSpendPlan
	end

	if Array.State.StatRatioTotal <= 0 then
		Array.State.StatRatio.Combat = 80
		Array.State.StatRatio.Defense = 20
		Array.State.StatRatioTotal = 100
	end

	Array.State.CurrentStat = {
		Combat = Array.Function.GetStatValue("Combat"),
		Defense = Array.Function.GetStatValue("Defense"),
	}
	Array.State.StatLimit = {
		Combat = math.max(Array.Config.AutoStats.StatMax - Array.State.CurrentStat.Combat, 0),
		Defense = math.max(Array.Config.AutoStats.StatMax - Array.State.CurrentStat.Defense, 0),
	}
	Array.State.StatSpend = {
		Combat = 0,
		Defense = 0,
	}
	Array.State.DesiredCombatStat = math.floor(
		(((Array.State.CurrentStat.Combat + Array.State.CurrentStat.Defense) + Array.State.StatPoints)
			* ((tonumber(Array.State.StatRatio.Combat) or 0) / Array.State.StatRatioTotal)) + 0.5
	)

	Array.State.StatSpend.Combat = math.clamp(
		Array.State.DesiredCombatStat - Array.State.CurrentStat.Combat,
		0,
		math.min(Array.State.StatPoints, Array.State.StatLimit.Combat)
	)
	Array.State.StatSpend.Defense = math.min(Array.State.StatPoints - Array.State.StatSpend.Combat, Array.State.StatLimit.Defense)
	Array.State.StatLeft = Array.State.StatPoints - Array.State.StatSpend.Combat - Array.State.StatSpend.Defense

	if Array.State.StatLeft > 0 then
		Array.State.AddCombatStat = math.min(Array.State.StatLeft, math.max(Array.State.StatLimit.Combat - Array.State.StatSpend.Combat, 0))
		Array.State.StatSpend.Combat = Array.State.StatSpend.Combat + Array.State.AddCombatStat
		Array.State.StatLeft = Array.State.StatLeft - Array.State.AddCombatStat
	end

	if Array.State.StatLeft > 0 then
		Array.State.AddDefenseStat = math.min(Array.State.StatLeft, math.max(Array.State.StatLimit.Defense - Array.State.StatSpend.Defense, 0))
		Array.State.StatSpend.Defense = Array.State.StatSpend.Defense + Array.State.AddDefenseStat
	end

	if Array.State.StatSpend.Combat > 0 then
		table.insert(Array.State.StatSpendPlan, {
			Name = "Combat",
			Amount = Array.State.StatSpend.Combat,
		})
	end

	if Array.State.StatSpend.Defense > 0 then
		table.insert(Array.State.StatSpendPlan, {
			Name = "Defense",
			Amount = Array.State.StatSpend.Defense,
		})
	end

	return Array.State.StatSpendPlan
end

function Array.Function.SpendStatPoints()
	Array.State.StatsEvent = Array.Function.GetClientEvent("Stats_Event")
	Array.State.StatSpendPlan = Array.Function.BuildStatSpendPlan()

	if not Array.State.StatsEvent or #Array.State.StatSpendPlan == 0 then
		Array.Function.SetStatus("AutoStats", Array.State.StatsEvent and "no_points" or "missing_remote")

		return false
	end

	Array.Function.SetStatus("AutoStats", "spending")

	for _, Entry in next, Array.State.StatSpendPlan do
		Array.State.StatRemaining = Entry.Amount

		while Array.State.StatRemaining > 0 and Array.Function.IsRunning() and Array.Config.AutoStats.Enabled do
			Array.State.StatChunk = math.min(Array.State.StatRemaining, Array.Config.AutoStats.StatChunk, Array.Function.GetPointValue())

			if Array.State.StatChunk <= 0 then
				break
			end

			Array.State.StatSpendSuccess, Array.State.StatSpendError = pcall(function()
				Array.State.StatsEvent:FireServer(Entry.Name, Array.State.StatChunk)
			end)

			Array.Function.SetStatus("AutoStatsLast", Entry.Name .. ":" .. tostring(Array.State.StatChunk))
			Array.Function.SetStatus("AutoStatsLastSuccess", Array.State.StatSpendSuccess)
			Array.State.StatRemaining = Array.State.StatRemaining - Array.State.StatChunk
			Array.State.LastStatSpendAt = os.clock()
			task.wait(Array.Config.AutoStats.StatDelay)
		end
	end

	Array.Function.SetStatus("AutoStats", "done")

	return true
end

function Array.Function.StartAutoStats()
	if Array.State.AutoStatsStarted or not Array.Config.AutoStats.Enabled then
		return false
	end

	Array.State.AutoStatsStarted = true

	task.spawn(function()
		Array.Function.SetStatus("AutoStats", "started")

		while Array.Function.IsRunning() and Array.Config.AutoStats.Enabled do
			if Array.Function.GetPointValue() > 0 then
				Array.Function.SpendStatPoints()
			else
				Array.Function.SetStatus("AutoStats", "no_points")
			end

			task.wait(Array.Config.AutoStats.StatLoopDelay)
		end

		Array.State.AutoStatsStarted = false
		Array.Function.SetStatus("AutoStats", "stopped")
	end)

	return true
end

function Array.Function.GetBusoLevel()
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.BusoData = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("Buso")
	Array.State.BusoLevelData = Array.State.BusoData and Array.State.BusoData:FindFirstChild("BusoLevel")

	return tonumber(Array.State.BusoLevelData and Array.State.BusoLevelData.Value) or 0
end

function Array.Function.HasBusoHaki()
	return Array.Function.GetBusoLevel() >= 1
end

function Array.Function.GetBusoFolder()
	Array.State.NpcWorkspace = workspace:FindFirstChild("Npc_Workspace")

	return Array.State.NpcWorkspace and Array.State.NpcWorkspace:FindFirstChild("Buso")
end

function Array.Function.GetBusoTrainerModel()
	Array.State.BusoFolder = Array.Function.GetBusoFolder()

	if not Array.State.BusoFolder then
		return nil
	end

	Array.State.BusoTrainer = Array.State.BusoFolder:FindFirstChild(Array.Config.AutoHaki.BusoLevelName)

	if Array.State.BusoTrainer then
		return Array.State.BusoTrainer
	end

	Array.State.SelectedBusoTrainer = nil
	Array.State.SelectedBusoLevel = math.huge

	for _, Child in next, Array.State.BusoFolder:GetChildren() do
		Array.State.ChildBusoLevel = tonumber(Child.Name)

		if Array.State.ChildBusoLevel and Array.State.ChildBusoLevel < Array.State.SelectedBusoLevel then
			Array.State.SelectedBusoTrainer = Child
			Array.State.SelectedBusoLevel = Array.State.ChildBusoLevel
		end
	end

	return Array.State.SelectedBusoTrainer
end

function Array.Function.GetBusoTrainerCFrame()
	Array.State.BusoTrainer = Array.Function.GetBusoTrainerModel()
	Array.State.BusoTrainerCFrame = Array.Function.GetInstanceCFrame(Array.State.BusoTrainer)

	if Array.State.BusoTrainerCFrame then
		return Array.State.BusoTrainerCFrame * CFrame.new(0, 4, -6)
	end

	return Array.Config.AutoHaki.BusoNpcCFrame
end

function Array.Function.WaitForBusoTrainer(Timeout)
	Array.State.WaitBusoTrainerStartedAt = os.clock()
	Array.State.WaitBusoTrainerTimeout = tonumber(Timeout) or Array.Config.AutoHaki.BuyTimeout

	repeat
		if not Array.Function.IsRunning() then
			return nil
		end

		Array.State.BusoTrainer = Array.Function.GetBusoTrainerModel()

		if Array.State.BusoTrainer then
			Array.Function.SetStatus("AutoHakiTrainer", Array.State.BusoTrainer:GetFullName())

			return Array.State.BusoTrainer
		end

		for _, TargetCFrame in next, Array.Config.AutoHaki.BusoLoadCFrames do
			if typeof(TargetCFrame) == "CFrame" then
				Array.Function.SetStatus("AutoHakiLoadTrainer", tostring(TargetCFrame.Position))
				Array.Function.BypassTeleportToCFrame(TargetCFrame)
				Array.State.BusoLoadHoldStartedAt = os.clock()

				repeat
					Array.State.BusoTrainer = Array.Function.GetBusoTrainerModel()

					if Array.State.BusoTrainer then
						Array.Function.SetStatus("AutoHakiTrainer", Array.State.BusoTrainer:GetFullName())

						return Array.State.BusoTrainer
					end

					task.wait(0.25)
				until os.clock() - Array.State.BusoLoadHoldStartedAt >= Array.Config.AutoHaki.LoadHoldTime
					or os.clock() - Array.State.WaitBusoTrainerStartedAt >= Array.State.WaitBusoTrainerTimeout
			end

			if os.clock() - Array.State.WaitBusoTrainerStartedAt >= Array.State.WaitBusoTrainerTimeout then
				break
			end
		end

		task.wait(0.2)
	until os.clock() - Array.State.WaitBusoTrainerStartedAt >= Array.State.WaitBusoTrainerTimeout

	return Array.Function.GetBusoTrainerModel()
end

function Array.Function.ShouldBuyBusoHaki()
	if not Array.Config.AutoHaki.Enabled or Array.State.StartupHakiDone or Array.State.BuyingHaki then
		return false
	end

	if Array.Function.HasBusoHaki() then
		Array.State.StartupHakiDone = true
		Array.Function.SetStatus("AutoHaki", "owned")

		return false
	end

	Array.State.HakiLevel = Array.Function.GetPlayerLevel()
	Array.State.HakiCurrency = Array.Function.GetCurrency()
	Array.Function.SetStatus("AutoHakiLevel", Array.State.HakiLevel)
	Array.Function.SetStatus("AutoHakiCurrency", Array.State.HakiCurrency)

	if Array.State.HakiLevel < Array.Config.AutoHaki.RequiredLevel then
		Array.Function.SetStatus("AutoHaki", "level_wait")

		return false
	end

	if Array.State.HakiCurrency < Array.Config.AutoHaki.RequiredBeli then
		Array.Function.SetStatus("AutoHaki", "beli_wait")

		return false
	end

	return os.clock() - (Array.State.LastHakiBuyAttempt or 0) >= Array.Config.AutoHaki.BuyRetryDelay
end

function Array.Function.UseBusoHaki(Force)
	if not Array.Config.AutoHaki.UseBeforeAttack or not Array.Function.HasBusoHaki() then
		return false
	end

	Array.Function.GetCharacter()
	Array.State.BusoEnabled = Array.State.Character and Array.State.Character:FindFirstChild("BusoEnabled")

	if Array.State.BusoEnabled and Array.State.BusoEnabled.Value == true then
		return true
	end

	if not Force and os.clock() - (Array.State.LastBusoUseAt or 0) < Array.Config.AutoHaki.UseCooldown then
		return false
	end

	Array.State.BusoPlayerGui = Array.Service.Player:FindFirstChildOfClass("PlayerGui")
	Array.State.FormerStarterCharacterScripts = Array.State.BusoPlayerGui and Array.State.BusoPlayerGui:FindFirstChild("FormerStarterCharacterScripts")
	Array.State.BusoServer = Array.State.FormerStarterCharacterScripts and Array.State.FormerStarterCharacterScripts:FindFirstChild("Buso_Server")
	Array.State.BusoCommunication = Array.State.BusoServer and Array.State.BusoServer:FindFirstChild("Comunication")

	if not Array.State.BusoCommunication then
		Array.Function.SetStatus("AutoHakiUse", "missing_communication")

		return false
	end

	Array.State.LastBusoUseAt = os.clock()
	Array.State.BusoUseSuccess = pcall(function()
		Array.State.BusoCommunication:FireServer()
	end)

	Array.Function.SetStatus("AutoHakiUse", Array.State.BusoUseSuccess and "called" or "failed")
	task.wait(Array.Config.AutoHaki.UseDelay)

	return Array.State.BusoEnabled and Array.State.BusoEnabled.Value == true or Array.State.BusoUseSuccess
end

function Array.Function.BuyBusoHaki()
	if not Array.Config.AutoHaki.Enabled then
		return false
	end

	if Array.Function.HasBusoHaki() then
		Array.State.StartupHakiDone = true
		Array.Function.UseBusoHaki(true)
		Array.Function.SetStatus("AutoHaki", "owned")

		return true
	end

	if Array.Function.GetPlayerLevel() < Array.Config.AutoHaki.RequiredLevel or Array.Function.GetCurrency() < Array.Config.AutoHaki.RequiredBeli then
		return false
	end

	Array.State.BuyingHaki = true
	Array.State.LastHakiBuyAttempt = os.clock()
	Array.State.BuyBusoSuccess = false
	Array.Function.SetStatus("AutoHaki", "buying")

	Array.State.BuyBusoRunSuccess, Array.State.BuyBusoError = pcall(function()
		Array.State.BusoTrainer = Array.Function.WaitForBusoTrainer(Array.Config.AutoHaki.BuyTimeout)
		Array.State.BusoRemote = Array.Function.GetClientEvent("Buso")

		if not Array.State.BusoTrainer or not Array.State.BusoRemote then
			Array.State.LastHakiBuyResponse = "MissingTrainerOrRemote"
			Array.Function.SetStatus("AutoHakiResult", Array.State.LastHakiBuyResponse)

			return
		end

		Array.Function.BypassTeleportToCFrame(Array.Function.GetBusoTrainerCFrame())
		task.wait(Array.Config.AutoHaki.BuyDelay)

		Array.State.BusoInvokeSuccess, Array.State.BusoInvokeResult = pcall(function()
			return Array.State.BusoRemote:InvokeServer(Array.State.BusoTrainer)
		end)

		Array.State.LastHakiBuyResponse = Array.State.BusoInvokeSuccess and tostring(Array.State.BusoInvokeResult) or "InvokeFailed"
		Array.Function.SetStatus("AutoHakiResult", Array.State.LastHakiBuyResponse)

		if not Array.State.BusoInvokeSuccess then
			return
		end

		Array.State.WaitBusoOwnedStartedAt = os.clock()

		repeat
			if Array.Function.HasBusoHaki() then
				Array.State.StartupHakiDone = true
				Array.Function.UseBusoHaki(true)
				Array.State.BuyBusoSuccess = true

				return
			end

			task.wait(0.25)
		until os.clock() - Array.State.WaitBusoOwnedStartedAt >= 3
	end)

	if not Array.State.BuyBusoRunSuccess then
		Array.State.LastHakiBuyResponse = tostring(Array.State.BuyBusoError)
		Array.Function.SetStatus("AutoHakiResult", Array.State.LastHakiBuyResponse)
	end

	Array.State.BuyingHaki = false
	Array.Function.SetStatus("AutoHaki", Array.State.BuyBusoSuccess and "bought" or "buy_failed")

	return Array.State.BuyBusoSuccess
end

function Array.Function.StartAutoHaki()
	if Array.State.AutoHakiStarted or not Array.Config.AutoHaki.Enabled or game.PlaceId ~= Array.Config.PlaceId.World1 then
		return false
	end

	Array.State.AutoHakiStarted = true

	task.spawn(function()
		Array.Function.SetStatus("AutoHaki", "started")

		while Array.Function.IsRunning() and Array.Config.AutoHaki.Enabled and game.PlaceId == Array.Config.PlaceId.World1 do
			if Array.Function.ShouldBuyBusoHaki() then
				Array.Function.BuyBusoHaki()
			elseif Array.Function.HasBusoHaki() then
				Array.Function.UseBusoHaki()
			end

			task.wait(Array.Config.AutoHaki.CheckDelay)
		end

		Array.State.AutoHakiStarted = false
		Array.Function.SetStatus("AutoHaki", "stopped")
	end)

	return true
end

function Array.Function.GetQuestGui()
	Array.State.QuestGui = Array.Service.PlayerGui and Array.Service.PlayerGui:FindFirstChild("QuestGui")

	if not Array.State.QuestGui and Array.Service.PlayerGui then
		Array.State.QuestGui = Array.Service.PlayerGui:WaitForChild("QuestGui", 5)
	end

	return Array.State.QuestGui
end

function Array.Function.GetQuestFunction()
	Array.State.QuestGui = Array.Function.GetQuestGui()
	Array.State.QuestFunction = Array.State.QuestGui and Array.State.QuestGui:FindFirstChild("QuestFunction")

	if not Array.State.QuestFunction and Array.State.QuestGui then
		Array.State.QuestFunction = Array.State.QuestGui:WaitForChild("QuestFunction", 5)
	end

	return Array.State.QuestFunction
end

function Array.Function.GetQuestGivers()
	Array.State.NpcWorkspace = workspace:FindFirstChild("Npc_Workspace")

	if not Array.State.NpcWorkspace then
		Array.State.NpcWorkspace = workspace:WaitForChild("Npc_Workspace", 5)
	end

	return Array.State.NpcWorkspace and Array.State.NpcWorkspace:FindFirstChild("QuestGivers")
		or (Array.State.NpcWorkspace and Array.State.NpcWorkspace:WaitForChild("QuestGivers", 5))
end

function Array.Function.GetNpcZones()
	Array.State.NpcZones = workspace:FindFirstChild("NPC Zones")

	if not Array.State.NpcZones then
		Array.State.NpcZones = workspace:WaitForChild("NPC Zones", 5)
	end

	return Array.State.NpcZones
end

function Array.Function.GetQuestFolder()
	Array.State.PlayerQuest = Array.Service.Player:FindFirstChild("Quest")

	if Array.State.PlayerQuest then
		return Array.State.PlayerQuest
	end

	Array.State.QuestGui = Array.Function.GetQuestGui()
	Array.State.QuestHandler = Array.State.QuestGui and Array.State.QuestGui:FindFirstChild("QuestHandler")

	return Array.State.QuestHandler and Array.State.QuestHandler:FindFirstChild("Quest") or nil
end

function Array.Function.GetGuiText(Parent, Name)
	Array.State.GuiTextObject = Parent and Parent:FindFirstChild(Name)

	if Array.State.GuiTextObject
		and (
			Array.State.GuiTextObject:IsA("TextLabel")
			or Array.State.GuiTextObject:IsA("TextButton")
			or Array.State.GuiTextObject:IsA("TextBox")
		)
	then
		return tostring(Array.State.GuiTextObject.Text or "")
	end

	return ""
end

function Array.Function.CleanQuestMobText(Text)
	Array.State.CleanQuestMobText = tostring(Text or "")
	Array.State.CleanQuestMobText = Array.State.CleanQuestMobText:gsub("^%s*Quest:%s*", "")
	Array.State.CleanQuestMobText = Array.State.CleanQuestMobText:gsub("^%s*Kill%s+%d+%s+", "")
	Array.State.CleanQuestMobText = Array.State.CleanQuestMobText:gsub("%s+$", ""):gsub("^%s+", "")
	Array.State.CleanQuestMobLower = string.lower(Array.State.CleanQuestMobText)

	if Array.State.CleanQuestMobLower == "thieves" or Array.State.CleanQuestMobLower == "theives" then
		return "Thief"
	end

	if Array.State.CleanQuestMobText ~= ""
		and string.sub(Array.State.CleanQuestMobLower, -1) == "s"
		and string.sub(Array.State.CleanQuestMobLower, -2) ~= "ss"
	then
		Array.State.CleanQuestMobText = string.sub(Array.State.CleanQuestMobText, 1, -2)
	end

	return Array.State.CleanQuestMobText
end

function Array.Function.ApplyQuestGuiState(QuestState)
	Array.State.QuestGui = Array.Function.GetQuestGui()
	Array.State.QuestMainFrame = Array.State.QuestGui and Array.State.QuestGui:FindFirstChild("MainFrame")

	if not Array.State.QuestMainFrame or not Array.State.QuestMainFrame.Visible then
		return QuestState
	end

	Array.State.GuiQuestNameText = Array.Function.GetGuiText(Array.State.QuestMainFrame, "QuestName")
	Array.State.GuiQuestObjectiveText = Array.Function.GetGuiText(Array.State.QuestMainFrame, "QuestObjective")
	Array.State.GuiQuestAmountText = Array.Function.GetGuiText(Array.State.QuestMainFrame, "AmountMobs")
	Array.State.GuiQuestName = Array.Function.CleanQuestMobText(Array.State.GuiQuestNameText)
	Array.State.GuiQuestObjective = Array.Function.CleanQuestMobText(Array.State.GuiQuestObjectiveText)
	Array.State.GuiQuestProgressText, Array.State.GuiQuestTargetText = string.match(
		Array.State.GuiQuestAmountText,
		"(%d+)%s*/%s*(%d+)"
	)

	QuestState.Progress = tonumber(Array.State.GuiQuestProgressText) or QuestState.Progress or 0
	QuestState.Target = tonumber(Array.State.GuiQuestTargetText) or QuestState.Target or 0

	if QuestState.QuestName == "" and Array.State.GuiQuestName ~= "" then
		QuestState.QuestName = Array.State.GuiQuestName
	end

	if QuestState.Objective == "" then
		QuestState.Objective = Array.State.GuiQuestName ~= "" and Array.State.GuiQuestName or Array.State.GuiQuestObjective
	end

	return QuestState
end

function Array.Function.GetQuestState()
	Array.State.QuestFolder = Array.Function.GetQuestFolder()
	Array.State.QuestState = {
		NPCName = tostring(Array.Function.GetValue(Array.State.QuestFolder, "NPCName", "") or ""),
		Objective = tostring(Array.Function.GetValue(Array.State.QuestFolder, "Objective", "") or ""),
		QuestName = tostring(Array.Function.GetValue(Array.State.QuestFolder, "QuestName", "") or ""),
		Progress = tonumber(Array.Function.GetValue(Array.State.QuestFolder, "Progress", 0)) or 0,
		Target = tonumber(Array.Function.GetValue(Array.State.QuestFolder, "Target", 0)) or 0,
	}

	if Array.State.QuestState.NPCName ~= "" then
		Array.State.QuestState.Objective = Array.State.QuestState.NPCName
	end

	return Array.Function.ApplyQuestGuiState(Array.State.QuestState)
end

function Array.Function.HasActiveQuest()
	Array.State.ActiveQuestState = Array.Function.GetQuestState()

	return Array.State.ActiveQuestState.Objective ~= ""
end

function Array.Function.IsQuestMatch(Quest)
	if not Quest then
		return false
	end

	Array.State.MatchQuestState = Array.Function.GetQuestState()

	return Array.Function.IsQuestNameMatch(Array.State.MatchQuestState.Objective, Quest.MobName)
		or Array.Function.IsQuestNameMatch(Array.State.MatchQuestState.NPCName, Quest.MobName)
		or Array.Function.IsQuestNameMatch(Array.State.MatchQuestState.QuestName, Quest.MobName)
end

function Array.Function.IsBossQuest(Quest)
	if not Quest then
		return false
	end

	Array.State.BossQuestNameKey = Array.Function.NormalizeLookupName(Quest.MobName)
	Array.State.BossQuestRequiredKills = tonumber(Quest.RequiredKills) or 0

	return Quest.IsBoss == true
		or Array.Config.AutoFarm.BossQuestNames[Array.State.BossQuestNameKey] == true
		or string.find(string.lower(tostring(Quest.MobName or "")), "boss", 1, true) ~= nil
		or (
			Array.Config.AutoFarm.BossQuestKillThreshold > 0
			and Array.State.BossQuestRequiredKills > 0
			and Array.State.BossQuestRequiredKills <= Array.Config.AutoFarm.BossQuestKillThreshold
		)
end

function Array.Function.IsSameQuest(Left, Right)
	return Left
		and Right
		and Left.Level == Right.Level
		and Left.MobName == Right.MobName
		and Left.Giver == Right.Giver
end

function Array.Function.BuildWorld1QuestCache()
	Array.State.World1QuestCache = {}
	Array.State.QuestGivers = Array.Function.GetQuestGivers()

	if not Array.State.QuestGivers then
		Array.Function.SetStatus("AutoFarmQuestCache", "missing_givers")

		return Array.State.World1QuestCache
	end

	for _, Giver in next, Array.State.QuestGivers:GetChildren() do
		Array.State.GiverConfiguration = Giver:FindFirstChild("Configuration")
		Array.State.GiverQuestRoot = Array.State.GiverConfiguration and Array.State.GiverConfiguration:FindFirstChild("Quests")

		if Array.State.GiverQuestRoot then
			for _, LevelFolder in next, Array.State.GiverQuestRoot:GetChildren() do
				Array.State.QuestLevel = tonumber(tostring(LevelFolder.Name):match("%d+"))

				if Array.State.QuestLevel then
					for _, ObjectiveFolder in next, LevelFolder:GetChildren() do
						Array.State.QuestNumber = ObjectiveFolder:FindFirstChild("Number")

						if ObjectiveFolder:IsA("Folder") and Array.State.QuestNumber then
							Array.State.QuestMobName = tostring(ObjectiveFolder.Name)
							Array.State.QuestRequiredKills = tonumber(Array.State.QuestNumber.Value) or 0
							Array.State.QuestMobKey = Array.Function.NormalizeLookupName(Array.State.QuestMobName)

							table.insert(Array.State.World1QuestCache, {
								Level = Array.State.QuestLevel,
								LevelName = LevelFolder.Name,
								Giver = Giver,
								GiverName = Giver.Name,
								MobName = Array.State.QuestMobName,
								MobKey = Array.State.QuestMobKey,
								RequiredKills = Array.State.QuestRequiredKills,
								IsBoss = Array.Config.AutoFarm.BossQuestNames[Array.State.QuestMobKey] == true
									or string.find(string.lower(Array.State.QuestMobName), "boss", 1, true) ~= nil
									or (
										Array.Config.AutoFarm.BossQuestKillThreshold > 0
										and Array.State.QuestRequiredKills > 0
										and Array.State.QuestRequiredKills <= Array.Config.AutoFarm.BossQuestKillThreshold
									),
							})
						end
					end
				end
			end
		end
	end

	table.sort(Array.State.World1QuestCache, function(Left, Right)
		if Left.Level == Right.Level then
			return Left.MobName < Right.MobName
		end

		return Left.Level > Right.Level
	end)

	Array.State.LastWorld1QuestCacheBuild = os.clock()
	Array.Function.SetStatus("AutoFarmQuestCache", #Array.State.World1QuestCache)

	return Array.State.World1QuestCache
end

function Array.Function.GetWorld1QuestCache(Force)
	if Force
		or type(Array.State.World1QuestCache) ~= "table"
		or #Array.State.World1QuestCache == 0
		or not Array.State.LastWorld1QuestCacheBuild
		or os.clock() - Array.State.LastWorld1QuestCacheBuild >= Array.Config.AutoFarm.QuestCacheRefresh
	then
		return Array.Function.BuildWorld1QuestCache()
	end

	return Array.State.World1QuestCache
end

function Array.Function.GetQuestForLevel(Level)
	Array.State.SelectLevel = tonumber(Level) or Array.Function.GetPlayerLevel()

	for _, Quest in next, Array.Function.GetWorld1QuestCache(false) do
		if Quest.Level <= Array.State.SelectLevel then
			return Quest
		end
	end

	return nil
end

function Array.Function.GetFallbackQuestForBoss(BossQuest)
	if not BossQuest then
		return nil
	end

	if Array.Config.AutoFarm.BossFallbackSameGiver then
		for _, Quest in next, Array.Function.GetWorld1QuestCache(false) do
			if Quest.Level < BossQuest.Level and Quest.Giver == BossQuest.Giver and not Array.Function.IsBossQuest(Quest) then
				return Quest
			end
		end
	end

	for _, Quest in next, Array.Function.GetWorld1QuestCache(false) do
		if Quest.Level < BossQuest.Level and not Array.Function.IsBossQuest(Quest) then
			return Quest
		end
	end

	return nil
end

function Array.Function.SelectWorld1FarmQuest()
	Array.State.AutoFarmLevel = Array.Function.GetPlayerLevel()
	Array.State.AutoFarmWantedQuest = Array.Function.GetQuestForLevel(Array.State.AutoFarmLevel)

	if not Array.State.AutoFarmWantedQuest then
		return nil
	end

	Array.State.SelectQuestState = Array.Function.GetQuestState()

	if Array.State.LockedBossFallbackQuest then
		if Array.Function.IsQuestStateComplete(Array.State.SelectQuestState)
			and Array.Function.IsQuestStateMatch(Array.State.SelectQuestState, Array.State.LockedBossFallbackQuest)
		then
			Array.Function.ClearLockedBossFallback("fallback_complete")
		elseif not Array.Function.IsQuestStateMatch(Array.State.SelectQuestState, Array.State.LockedBossQuest) then
			Array.Function.SetStatus(
				"AutoFarmQuestLock",
				"boss_fallback:" .. Array.State.LockedBossFallbackQuest.LevelName .. " " .. Array.State.LockedBossFallbackQuest.MobName
			)

			return Array.State.LockedBossFallbackQuest
		end
	end

	if Array.Config.AutoFarm.CurrentQuestLock then
		Array.State.ActiveFarmQuest = Array.Function.GetActiveFarmQuest()

		if Array.State.ActiveFarmQuest then
			Array.State.ActiveFarmQuestIsBoss = Array.Function.IsBossQuest(Array.State.ActiveFarmQuest)

			if Array.State.ActiveFarmQuestIsBoss then
				Array.State.ActiveBossTarget = Array.Function.FindMob(Array.State.ActiveFarmQuest.MobName)

				if Array.State.ActiveBossTarget then
					Array.State.BossMissingSince = nil
					Array.Function.SetStatus("AutoFarmBossFallback", "boss_spawned")
				else
					Array.State.BossMissingSince = Array.State.BossMissingSince or os.clock()

					if os.clock() - Array.State.BossMissingSince >= Array.Config.AutoFarm.BossFallbackDelay then
						Array.State.ActiveBossFallbackQuest = Array.Function.GetFallbackQuestForBoss(Array.State.ActiveFarmQuest)

						if Array.State.ActiveBossFallbackQuest then
							Array.Function.SetStatus(
								"AutoFarmBossFallback",
								"active_boss_to_" .. Array.State.ActiveBossFallbackQuest.LevelName .. " " .. Array.State.ActiveBossFallbackQuest.MobName
							)

							Array.State.BossCancelSuccess, Array.State.BossCancelResult = Array.Function.CancelActiveQuest("boss missing")
							Array.Function.SetStatus("AutoFarmBossCancelResult", tostring(Array.State.BossCancelResult))

							if Array.State.BossCancelSuccess then
								Array.State.BossMissingSince = nil
								Array.Function.LockBossFallbackQuest(Array.State.ActiveFarmQuest, "boss_missing")

								return Array.State.ActiveBossFallbackQuest
							end
						end
					else
						Array.Function.SetStatus("AutoFarmBossFallback", "waiting_active_boss")
					end
				end
			end

			if not Array.Function.IsSameQuest(Array.State.ActiveFarmQuest, Array.State.AutoFarmWantedQuest) then
				Array.Function.SetStatus(
					"AutoFarmQuestLock",
					Array.State.ActiveFarmQuest.LevelName .. " " .. Array.State.ActiveFarmQuest.MobName
				)
			elseif Array.State.LockedBossFallbackQuest
				and Array.Function.IsSameQuest(Array.State.LockedBossFallbackQuest, Array.State.ActiveFarmQuest)
			then
				Array.Function.SetStatus("AutoFarmQuestLock", "boss_fallback_until_done")
			else
				Array.Function.SetStatus("AutoFarmQuestLock", "current")
			end

			return Array.State.ActiveFarmQuest
		end
	end

	if not Array.Config.AutoFarm.BossFallback or not Array.Function.IsBossQuest(Array.State.AutoFarmWantedQuest) then
		Array.State.BossMissingSince = nil
		Array.Function.ClearLockedBossFallback("normal_quest")

		return Array.State.AutoFarmWantedQuest
	end

	Array.State.BossTarget = Array.Function.FindMob(Array.State.AutoFarmWantedQuest.MobName)

	if Array.State.BossTarget then
		Array.State.BossMissingSince = nil
		Array.Function.SetStatus("AutoFarmBossFallback", "boss_spawned")

		return Array.State.AutoFarmWantedQuest
	end

	Array.State.BossMissingSince = Array.State.BossMissingSince or os.clock()

	if os.clock() - Array.State.BossMissingSince < Array.Config.AutoFarm.BossFallbackDelay then
		Array.Function.SetStatus("AutoFarmBossFallback", "waiting_boss")

		return Array.State.AutoFarmWantedQuest
	end

	Array.State.BossFallbackQuest = Array.Function.GetFallbackQuestForBoss(Array.State.AutoFarmWantedQuest)

	if Array.State.BossFallbackQuest then
		Array.State.LockedBossFallbackQuest = Array.State.BossFallbackQuest
		Array.State.LockedBossQuest = Array.State.AutoFarmWantedQuest
		Array.Function.SetStatus("AutoFarmBossFallback", Array.State.BossFallbackQuest.LevelName .. " " .. Array.State.BossFallbackQuest.MobName)

		return Array.State.BossFallbackQuest
	end

	Array.Function.SetStatus("AutoFarmBossFallback", "missing_fallback")

	return Array.State.AutoFarmWantedQuest
end

function Array.Function.FindQuestByObjective(Objective)
	if not Objective or Objective == "" then
		return nil
	end

	Array.State.FindQuestBest = nil

	for _, Quest in next, Array.Function.GetWorld1QuestCache(false) do
		if Array.Function.IsQuestNameMatch(Quest.MobName, Objective) and Quest.Level <= Array.Function.GetPlayerLevel() then
			if not Array.State.FindQuestBest or Quest.Level > Array.State.FindQuestBest.Level then
				Array.State.FindQuestBest = Quest
			end
		end
	end

	return Array.State.FindQuestBest
end

function Array.Function.FindQuestByMobName(Name, MaxLevel)
	if not Name or Name == "" then
		return nil
	end

	Array.State.FindMobQuestBest = nil
	Array.State.FindMobQuestMaxLevel = tonumber(MaxLevel) or Array.Function.GetPlayerLevel()

	for _, Quest in next, Array.Function.GetWorld1QuestCache(false) do
		if Quest.Level <= Array.State.FindMobQuestMaxLevel and Array.Function.IsQuestNameMatch(Quest.MobName, Name) then
			if not Array.State.FindMobQuestBest or Quest.Level > Array.State.FindMobQuestBest.Level then
				Array.State.FindMobQuestBest = Quest
			end
		end
	end

	return Array.State.FindMobQuestBest
end

function Array.Function.ShouldPrioritizeRyummyShusui(Level)
	if not Array.Config.AutoFarm.RyummyShusui.Enabled or game.PlaceId ~= Array.Config.PlaceId.World1 then
		return false
	end

	Array.State.RyummyShusuiLevel = tonumber(Level) or Array.Function.GetPlayerLevel()

	if Array.State.RyummyShusuiLevel < Array.Config.AutoFarm.RyummyShusui.RequiredLevel then
		Array.Function.SetAutoFarmStatus("RyummyShusui", "level_wait")
		return false
	end

	if Array.Function.HasOwnedSword(Array.Config.AutoFarm.RyummyShusui.SwordName) then
		Array.Function.SetAutoFarmStatus("RyummyShusui", "sword_owned")
		return false
	end

	Array.Function.SetAutoFarmStatus("RyummyShusui", "hunting")
	return true
end

function Array.Function.SelectRyummyShusuiQuest(Level)
	if not Array.Function.ShouldPrioritizeRyummyShusui(Level) then
		return nil, nil
	end

	Array.State.RyummyShusuiQuest = Array.Function.FindQuestByMobName(
		Array.Config.AutoFarm.RyummyShusui.BossName,
		tonumber(Level) or Array.Function.GetPlayerLevel()
	)

	if not Array.State.RyummyShusuiQuest then
		Array.Function.SetAutoFarmStatus("RyummyShusuiQuest", "missing")
		return nil, nil
	end

	Array.Function.SetAutoFarmStatus(
		"RyummyShusuiQuest",
		Array.State.RyummyShusuiQuest.LevelName .. " " .. Array.State.RyummyShusuiQuest.MobName
	)
	Array.State.RyummyShusuiBoss = Array.Function.FindMob(Array.State.RyummyShusuiQuest.MobName)

	if Array.State.RyummyShusuiBoss then
		Array.Function.SetAutoFarmStatus("LastFarmQuestReason", "ryummy_shusui_boss_spawned")
		return Array.State.RyummyShusuiQuest, "ryummy_shusui_boss_spawned"
	end

	Array.State.RyummyShusuiFallbackQuest = Array.Function.GetFallbackQuestForBoss(Array.State.RyummyShusuiQuest)

	if Array.State.RyummyShusuiFallbackQuest then
		Array.Function.SetAutoFarmStatus("LastFarmQuestReason", "ryummy_shusui_wait_fallback")
		return Array.State.RyummyShusuiFallbackQuest, "ryummy_shusui_wait_fallback"
	end

	Array.Function.SetAutoFarmStatus("LastFarmQuestReason", "ryummy_shusui_no_fallback")
	return Array.State.RyummyShusuiQuest, "ryummy_shusui_no_fallback"
end

function Array.Function.ShouldSwitchFarmQuest(CurrentQuest, ExpectedQuest, ExpectedReason)
	if not CurrentQuest or not ExpectedQuest or Array.Function.IsSameQuest(CurrentQuest, ExpectedQuest) then
		return false
	end

	Array.State.ExpectedReasonText = tostring(ExpectedReason or "")

	if string.find(Array.State.ExpectedReasonText, "ryummy_shusui", 1, true) then
		return true
	end

	return CurrentQuest.Level < ExpectedQuest.Level
end

function Array.Function.IsQuestStateComplete(QuestState)
	return QuestState
		and tonumber(QuestState.Target) ~= nil
		and tonumber(QuestState.Target) > 0
		and tonumber(QuestState.Progress) ~= nil
		and tonumber(QuestState.Progress) >= tonumber(QuestState.Target)
end

function Array.Function.IsQuestStateMatch(QuestState, Quest)
	return QuestState
		and Quest
		and (
			Array.Function.IsQuestNameMatch(QuestState.Objective, Quest.MobName)
			or Array.Function.IsQuestNameMatch(QuestState.NPCName, Quest.MobName)
			or Array.Function.IsQuestNameMatch(QuestState.QuestName, Quest.MobName)
		)
end

function Array.Function.LockBossFallbackQuest(BossQuest, Reason)
	if not Array.Config.AutoFarm.BossFallback or not BossQuest or not Array.Function.IsBossQuest(BossQuest) then
		return nil
	end

	Array.State.LockedBossFallbackQuest = Array.Function.GetFallbackQuestForBoss(BossQuest)

	if Array.State.LockedBossFallbackQuest then
		Array.State.LockedBossQuest = BossQuest
		Array.State.LockedBossFallbackReason = tostring(Reason or "boss")
		Array.State.LockedBossFallbackStartedAt = os.clock()
		Array.Function.SetStatus(
			"AutoFarmBossFallback",
			Array.State.LockedBossFallbackReason .. ":" .. Array.State.LockedBossFallbackQuest.LevelName .. " " .. Array.State.LockedBossFallbackQuest.MobName
		)
	end

	return Array.State.LockedBossFallbackQuest
end

function Array.Function.ClearLockedBossFallback(Reason)
	if Array.State.LockedBossFallbackQuest then
		Array.Function.SetStatus("AutoFarmBossFallbackDone", tostring(Reason or "done"))
	end

	Array.State.LockedBossFallbackQuest = nil
	Array.State.LockedBossQuest = nil
	Array.State.LockedBossFallbackReason = nil
	Array.State.LockedBossFallbackStartedAt = nil
end

function Array.Function.GetActiveFarmQuest()
	Array.State.ActiveFarmQuestState = Array.Function.GetQuestState()

	if not Array.State.ActiveFarmQuestState
		or Array.State.ActiveFarmQuestState.Objective == ""
		or Array.Function.IsQuestStateComplete(Array.State.ActiveFarmQuestState)
	then
		return nil
	end

	Array.State.ActiveFarmQuest = Array.Function.FindQuestByObjective(Array.State.ActiveFarmQuestState.Objective)

	if Array.State.ActiveFarmQuest then
		Array.Function.SetStatus(
			"AutoFarmCurrentQuest",
			Array.State.ActiveFarmQuest.LevelName .. " " .. Array.State.ActiveFarmQuest.MobName
		)
	end

	return Array.State.ActiveFarmQuest
end

function Array.Function.GetQuestCloseButton()
	Array.State.QuestGui = Array.Function.GetQuestGui()
	Array.State.QuestMainFrame = Array.State.QuestGui and Array.State.QuestGui:FindFirstChild("MainFrame")

	return Array.State.QuestMainFrame and Array.State.QuestMainFrame:FindFirstChild("CloseButton") or nil
end

function Array.Function.WaitForQuestClear(Timeout)
	Array.State.WaitQuestClearStartedAt = os.clock()

	repeat
		if not Array.Function.HasActiveQuest() then
			return true
		end

		task.wait(0.1)
	until os.clock() - Array.State.WaitQuestClearStartedAt >= Timeout

	return not Array.Function.HasActiveQuest()
end

function Array.Function.CancelActiveQuest(Reason)
	if not Array.Function.HasActiveQuest() then
		return true, "NoActiveQuest"
	end

	if Array.State.LastQuestCancelAttempt
		and os.clock() - Array.State.LastQuestCancelAttempt < Array.Config.AutoFarm.QuestCancelRetryDelay
	then
		return false, "Cooldown"
	end

	Array.State.LastQuestCancelAttempt = os.clock()
	Array.State.QuestCloseButton = Array.Function.GetQuestCloseButton()

	if not Array.State.QuestCloseButton then
		return false, "NoCloseButton"
	end

	Array.Function.SetStatus("AutoFarmCancelQuest", tostring(Reason or "manual"))
	Array.State.CancelQuestClicked = Array.Function.ClickButton(Array.State.QuestCloseButton)

	if not Array.State.CancelQuestClicked then
		Array.Function.SetStatus("AutoFarmCancelQuestResult", "ClickFailed")

		return false, "ClickFailed"
	end

	Array.State.CancelQuestCleared = Array.Function.WaitForQuestClear(Array.Config.AutoFarm.QuestCancelWait)
	Array.Function.SetStatus("AutoFarmCancelQuestResult", Array.State.CancelQuestCleared and "Canceled" or "StillActive")

	return Array.State.CancelQuestCleared, Array.State.CancelQuestCleared and "Canceled" or "StillActive"
end

function Array.Function.AcceptQuest(Quest)
	if not Quest then
		return false
	end

	Array.State.QuestFunction = Array.Function.GetQuestFunction()

	if not Array.State.QuestFunction then
		Array.Function.SetStatus("AutoFarmAcceptQuest", "missing_quest_function")

		return false
	end

	Array.State.QuestGiverCFrame = Array.Function.GetInstanceCFrame(Quest.Giver)

	if Array.State.QuestGiverCFrame then
		Array.Function.BypassTeleportToCFrame(Array.State.QuestGiverCFrame * CFrame.new(0, 4, -6))
		task.wait(Array.Config.AutoFarm.QuestAcceptDelay)
	end

	Array.Function.SetStatus("AutoFarmAcceptQuest", Quest.LevelName .. " " .. Quest.MobName)
	Array.State.AcceptQuestSuccess, Array.State.AcceptQuestResult = pcall(function()
		return Array.State.QuestFunction:InvokeServer(Quest.Giver, Quest.LevelName)
	end)

	Array.Function.SetStatus("AutoFarmAcceptQuestResult", tostring(Array.State.AcceptQuestResult))

	if not Array.State.AcceptQuestSuccess then
		return false
	end

	for _ = 1, Array.Config.AutoFarm.QuestAcceptAttempts do
		if Array.Function.IsQuestMatch(Quest) then
			return true
		end

		task.wait(Array.Config.AutoFarm.QuestAcceptRetryDelay)
	end

	return Array.Function.IsQuestMatch(Quest)
end

function Array.Function.MoveNearQuestGiver(Quest)
	if not Quest or not Quest.Giver then
		return false
	end

	Array.State.QuestGiverMoveCFrame = Array.Function.GetInstanceCFrame(Quest.Giver)

	if not Array.State.QuestGiverMoveCFrame then
		return false
	end

	return Array.Function.BypassTeleportToCFrame(Array.State.QuestGiverMoveCFrame * CFrame.new(0, 6, -8))
end

function Array.Function.EnsureFarmQuest(Quest)
	if not Quest then
		return false
	end

	if Array.Function.IsQuestMatch(Quest) then
		return true
	end

	return Array.Function.AcceptQuest(Quest)
end

function Array.Function.GetMobHumanoid(Mob)
	return Mob and Mob:FindFirstChildOfClass("Humanoid") or nil
end

function Array.Function.GetMobRoot(Mob)
	if not Mob then
		return nil
	end

	return Mob:FindFirstChild("HumanoidRootPart")
		or Mob.PrimaryPart
		or Array.Function.FindFirstBasePart(Mob)
end

function Array.Function.IsAliveMob(Mob)
	Array.State.MobHumanoid = Array.Function.GetMobHumanoid(Mob)
	Array.State.MobRoot = Array.Function.GetMobRoot(Mob)

	return Mob
		and Mob:IsA("Model")
		and Array.State.MobHumanoid ~= nil
		and Array.State.MobRoot ~= nil
		and Array.Function.IsSafePosition(Array.State.MobRoot.Position)
		and Array.State.MobHumanoid.Health > 0
end

function Array.Function.GetMobDisplayName(Mob)
	if not Mob then
		return ""
	end

	Array.State.MobNPCName = Mob:FindFirstChild("NPCName")

	if Array.State.MobNPCName and Array.State.MobNPCName:IsA("ValueBase") and tostring(Array.State.MobNPCName.Value or "") ~= "" then
		return tostring(Array.State.MobNPCName.Value)
	end

	return tostring(Mob.Name):gsub("%d+$", ""):gsub("%s+$", "")
end

function Array.Function.IsMobNameMatch(Mob, TargetName)
	if not Mob or not TargetName or TargetName == "" then
		return false
	end

	Array.State.MobDisplayName = Array.Function.GetMobDisplayName(Mob)
	Array.State.TargetMobKey = Array.Function.NormalizeLookupName(TargetName)
	Array.State.DisplayMobKey = Array.Function.NormalizeLookupName(Array.State.MobDisplayName)

	return Array.State.MobDisplayName == TargetName or Array.State.DisplayMobKey == Array.State.TargetMobKey
end

function Array.Function.FindMobInContainer(Root, TargetName, Depth)
	if not Root or Depth > Array.Config.AutoFarm.MobSearchDepth then
		return nil
	end

	for _, Child in next, Root:GetChildren() do
		if Child:IsA("Model") and Array.Function.IsAliveMob(Child) and Array.Function.IsMobNameMatch(Child, TargetName) then
			return Child
		end

		Array.State.FoundMobInChild = Array.Function.FindMobInContainer(Child, TargetName, Depth + 1)

		if Array.State.FoundMobInChild then
			return Array.State.FoundMobInChild
		end
	end

	return nil
end

function Array.Function.FindMob(TargetName)
	Array.State.NpcZones = Array.Function.GetNpcZones()

	if not Array.State.NpcZones then
		Array.Function.SetStatus("AutoFarmMobFolder", "missing")

		return nil
	end

	Array.State.FoundMob = Array.Function.FindMobInContainer(Array.State.NpcZones, TargetName, 0)
	Array.Function.SetStatus("AutoFarmMob", Array.State.FoundMob and Array.Function.GetMobDisplayName(Array.State.FoundMob) or "missing:" .. tostring(TargetName))

	return Array.State.FoundMob
end

function Array.Function.GetMobBaseCFrame(Mob)
	Array.State.MobRoot = Array.Function.GetMobRoot(Mob)

	return Array.State.MobRoot and Array.State.MobRoot.CFrame or Array.Function.GetInstanceCFrame(Mob)
end

function Array.Function.GetMobHitPosition(Mob)
	Array.State.HitPart = Mob and (Mob:FindFirstChild("Head") or Mob:FindFirstChild("HumanoidRootPart") or Array.Function.GetMobRoot(Mob))

	if Array.State.HitPart and Array.State.HitPart:IsA("BasePart") then
		return Array.State.HitPart.Position + Array.Config.AutoFarm.HitOffset
	end

	Array.State.MobCFrame = Array.Function.GetMobBaseCFrame(Mob)

	return Array.State.MobCFrame and (Array.State.MobCFrame.Position + Array.Config.AutoFarm.HitOffset) or nil
end

function Array.Function.GetActiveFarmToolName()
	Array.State.ActiveFarmCharacter = Array.Service.Player.Character
	Array.State.ActiveFarmTool = Array.State.ActiveFarmCharacter and Array.State.ActiveFarmCharacter:FindFirstChildOfClass("Tool")

	return Array.State.ActiveFarmTool and Array.State.ActiveFarmTool.Name
		or Array.Config.AutoFarm.PreferTool
		or Array.Config.SwordName
		or Array.Config.AutoBlackLeg.FallbackStyleName
end

function Array.Function.IsBlackLegFarmTool(ToolName)
	return Array.Function.NormalizeLookupName(ToolName) == Array.Function.NormalizeLookupName(Array.Config.AutoBlackLeg.StyleName)
end

function Array.Function.GetFarmHoverSettings()
	Array.State.FarmHoverToolName = Array.Function.GetActiveFarmToolName()

	if Array.Function.IsBlackLegFarmTool(Array.State.FarmHoverToolName) then
		return Array.Config.AutoFarm.BlackLegHoverHeight, Array.Config.AutoFarm.BlackLegBackDistance, Array.Config.AutoFarm.BlackLegAimHeight, "black_leg"
	end

	return Array.Config.AutoFarm.HoverHeight, Array.Config.AutoFarm.HoverBackDistance, Array.Config.AutoFarm.HoverAimHeight, "default"
end

function Array.Function.GetFarmHoverCFrame(Mob)
	Array.State.MobCFrame = Array.Function.GetMobBaseCFrame(Mob)

	if not Array.State.MobCFrame then
		return nil
	end

	Array.State.HoverHeightValue, Array.State.HoverBackDistanceValue, Array.State.HoverAimHeightValue, Array.State.HoverMode = Array.Function.GetFarmHoverSettings()

	Array.State.HoverLookVector = Array.State.MobCFrame.LookVector
	Array.State.HoverFlatLookVector = Vector3.new(Array.State.HoverLookVector.X, 0, Array.State.HoverLookVector.Z)

	if Array.State.HoverFlatLookVector.Magnitude <= 0.001 then
		Array.State.HoverFlatLookVector = Vector3.new(0, 0, -1)
	else
		Array.State.HoverFlatLookVector = Array.State.HoverFlatLookVector.Unit
	end

	Array.State.HoverPosition = Array.State.MobCFrame.Position
		+ Vector3.new(0, Array.State.HoverHeightValue, 0)
		- (Array.State.HoverFlatLookVector * Array.State.HoverBackDistanceValue)
	Array.State.HoverLookPosition = Array.State.MobCFrame.Position + Vector3.new(0, Array.State.HoverAimHeightValue, 0)
	Array.Function.SetAutoFarmStatus("LastHoverMode", Array.State.HoverMode)

	return CFrame.lookAt(Array.State.HoverPosition, Array.State.HoverLookPosition)
end

function Array.Function.ClearFarmHoverVelocity()
	if Array.State.FarmHoverVelocity then
		pcall(function()
			Array.State.FarmHoverVelocity:Destroy()
		end)
	end

	if Array.State.FarmHoverGyro then
		pcall(function()
			Array.State.FarmHoverGyro:Destroy()
		end)
	end

	Array.State.FarmHoverVelocity = nil
	Array.State.FarmHoverGyro = nil
end

function Array.Function.UpdateFarmHoverVelocity(TargetCFrame)
	if typeof(TargetCFrame) ~= "CFrame" then
		return false
	end

	Array.Function.GetCharacter()

	if Array.Config.BypassTeleportNoClip then
		Array.Function.SetCharacterCollision(false)
	end

	if Array.State.FarmHoverVelocity and Array.State.FarmHoverVelocity.Parent ~= Array.State.RootPart then
		Array.Function.ClearFarmHoverVelocity()
	end

	if Array.State.FarmHoverGyro and Array.State.FarmHoverGyro.Parent ~= Array.State.RootPart then
		Array.Function.ClearFarmHoverVelocity()
	end

	if not Array.State.FarmHoverVelocity then
		Array.State.FarmHoverVelocity = Instance.new("BodyVelocity")
		Array.State.FarmHoverVelocity.Name = "HSKaitunFarmHoverVelocity"
		Array.State.FarmHoverVelocity.MaxForce = Vector3.new(
			Array.Config.AutoFarm.HoverVelocityMaxForce,
			Array.Config.AutoFarm.HoverVelocityMaxForce,
			Array.Config.AutoFarm.HoverVelocityMaxForce
		)
		Array.State.FarmHoverVelocity.P = Array.Config.BypassTeleportVelocityPower
		Array.State.FarmHoverVelocity.Parent = Array.State.RootPart
	end

	if not Array.State.FarmHoverGyro then
		Array.State.FarmHoverGyro = Instance.new("BodyGyro")
		Array.State.FarmHoverGyro.Name = "HSKaitunFarmHoverGyro"
		Array.State.FarmHoverGyro.MaxTorque = Vector3.new(
			Array.Config.AutoFarm.HoverGyroMaxTorque,
			Array.Config.AutoFarm.HoverGyroMaxTorque,
			Array.Config.AutoFarm.HoverGyroMaxTorque
		)
		Array.State.FarmHoverGyro.P = Array.Config.BypassTeleportVelocityPower
		Array.State.FarmHoverGyro.Parent = Array.State.RootPart
	end

	Array.State.HoverDelta = TargetCFrame.Position - Array.State.RootPart.Position
	Array.State.HoverDistance = Array.State.HoverDelta.Magnitude
	Array.State.HoverVelocityVector = Vector3.new(0, 0, 0)

	if Array.State.HoverDistance > 0.5 then
		Array.State.HoverSpeed = math.min(
			Array.Config.AutoFarm.HoverVelocityMaxSpeed,
			Array.State.HoverDistance * Array.Config.AutoFarm.HoverVelocityGain
		)
		Array.State.HoverVelocityVector = Array.State.HoverDelta.Unit * Array.State.HoverSpeed
	end

	Array.State.FarmHoverVelocity.Velocity = Array.State.HoverVelocityVector
	Array.State.FarmHoverGyro.CFrame = TargetCFrame
	Array.State.RootPart.AssemblyLinearVelocity = Array.State.HoverVelocityVector
	Array.State.RootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
	Array.State.RootPart.CFrame = Array.State.RootPart.CFrame:Lerp(TargetCFrame, Array.Config.AutoFarm.HoverLerpAlpha)

	return true
end

function Array.Function.StopFarmHover()
	Array.Function.ClearFarmHoverVelocity()

	if Array.State.RootPart and Array.State.RootPart.Parent then
		Array.State.RootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
		Array.State.RootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
	end

	if Array.Config.BypassTeleportRestoreCollision then
		Array.Function.RestoreCharacterCollision()
	end
end

function Array.Function.MoveToMob(Mob)
	Array.State.FarmHoverCFrame = Array.Function.GetFarmHoverCFrame(Mob)

	if not Array.State.FarmHoverCFrame then
		return false
	end

	Array.Function.GetCharacter()
	Array.State.FarmMoveDistance = (Array.State.RootPart.Position - Array.State.FarmHoverCFrame.Position).Magnitude

	if Array.State.FarmMoveDistance > Array.Config.AutoFarm.HoverRepositionDistance then
		if not Array.Function.BypassTeleportToCFrame(Array.State.FarmHoverCFrame) then
			return false
		end
	end

	return Array.Function.UpdateFarmHoverVelocity(Array.State.FarmHoverCFrame)
end

function Array.Function.GetAutoFarmTool()
	Array.State.AutoFarmToolName = Array.Config.AutoFarm.PreferTool or Array.Config.SwordName or Array.Config.AutoBlackLeg.FallbackStyleName
	Array.State.AutoFarmTool = Array.Function.FindToolByName(Array.State.AutoFarmToolName)

	if Array.State.AutoFarmTool then
		return Array.State.AutoFarmTool
	end

	if Array.Function.HasOwnedSword(Array.State.AutoFarmToolName) then
		Array.State.AutoFarmTool = Array.Function.EquipInventoryItem(Array.State.AutoFarmToolName)

		if Array.State.AutoFarmTool then
			return Array.State.AutoFarmTool
		end
	end

	Array.State.ToolCharacter = Array.Service.Player.Character

	if Array.State.ToolCharacter then
		for _, Tool in next, Array.State.ToolCharacter:GetChildren() do
			if Tool:IsA("Tool") and Array.Function.GetToolScore(Tool) > 0 then
				return Tool
			end
		end
	end

	Array.State.Backpack = Array.Service.Player:FindFirstChild("Backpack")

	if Array.State.Backpack then
		for _, Tool in next, Array.State.Backpack:GetChildren() do
			if Tool:IsA("Tool") and Array.Function.GetToolScore(Tool) > 0 then
				return Tool
			end
		end
	end

	return nil
end

function Array.Function.EquipAutoFarmTool()
	Array.State.AutoFarmTool = Array.Function.GetAutoFarmTool()

	if not Array.State.AutoFarmTool then
		Array.Function.SetStatus("AutoFarmTool", "missing")

		return nil
	end

	Array.Function.EquipTool(Array.State.AutoFarmTool)

	return Array.Function.FindToolByName(Array.State.AutoFarmTool.Name) or Array.State.AutoFarmTool
end

function Array.Function.FireToolMousePosition(Tool, Mob)
	if not Array.Config.AutoFarm.UpdateMousePosition or not Tool then
		return false
	end

	Array.State.SwordServer = Tool:FindFirstChild("SwordServer")
	Array.State.UpdateMousePosition = Array.State.SwordServer and Array.State.SwordServer:FindFirstChild("UpdateMousePosition")
	Array.State.MobHitPosition = Array.Function.GetMobHitPosition(Mob)

	if not Array.State.UpdateMousePosition or not Array.State.MobHitPosition then
		return false
	end

	Array.State.UpdateMouseSuccess = pcall(function()
		Array.State.UpdateMousePosition:FireServer(Array.State.MobHitPosition)
	end)

	return Array.State.UpdateMouseSuccess
end

function Array.Function.ActivateAutoFarmTool(Tool)
	if not Tool then
		return false
	end

	Array.State.ToolActivated = false

	pcall(function()
		Tool:Activate()
		Array.State.ToolActivated = true
	end)

	if Array.Config.AutoFarm.FireActivatedSignal and type(firesignal) == "function" then
		pcall(function()
			firesignal(Tool.Activated)
			Array.State.ToolActivated = true
		end)
	end

	return Array.State.ToolActivated
end

function Array.Function.AttackMob(Mob)
	if not Array.Function.IsAliveMob(Mob) then
		return false
	end

	Array.State.AutoFarmTool = Array.Function.EquipAutoFarmTool()

	if not Array.State.AutoFarmTool then
		return false
	end

	Array.Function.UseBusoHaki()

	Array.State.FarmHoverCFrame = Array.Function.GetFarmHoverCFrame(Mob)

	if Array.State.FarmHoverCFrame then
		Array.Function.UpdateFarmHoverVelocity(Array.State.FarmHoverCFrame)
	end

	for _ = 1, Array.Config.AutoFarm.AttackBurst do
		if not Array.Function.IsRunning() or not Array.Function.IsAliveMob(Mob) then
			return false
		end

		Array.State.FarmHoverCFrame = Array.Function.GetFarmHoverCFrame(Mob)

		if Array.State.FarmHoverCFrame then
			Array.Function.UpdateFarmHoverVelocity(Array.State.FarmHoverCFrame)
		end

		Array.Function.UseBusoHaki()
		Array.Function.FireToolMousePosition(Array.State.AutoFarmTool, Mob)
		Array.Function.ActivateAutoFarmTool(Array.State.AutoFarmTool)
		Array.Function.FireToolMousePosition(Array.State.AutoFarmTool, Mob)
		task.wait(Array.Config.AutoFarm.AttackBurstDelay)
	end

	task.wait(Array.Config.AutoFarm.AttackDelay)

	return true
end

function Array.Function.FarmQuestMob(Quest, Mob)
	if not Quest or not Mob then
		return false
	end

	Array.Function.SetStatus("AutoFarmTarget", Quest.LevelName .. " " .. Quest.MobName)

	repeat
		if not Array.Function.IsAliveMob(Mob) then
			break
		end

		if not Array.Function.MoveToMob(Mob) then
			task.wait(Array.Config.AutoFarm.SearchMobDelay)
		else
			Array.Function.AttackMob(Mob)
		end

		task.wait(Array.Config.AutoFarm.HoverStepDelay)
	until not Array.Function.IsRunning()
		or not Array.Config.AutoFarm.Enabled
		or game.PlaceId ~= Array.Config.PlaceId.World1

	if Array.Config.AutoFarm.BossFallbackAfterKill and Array.Function.IsBossQuest(Quest) and not Array.Function.IsAliveMob(Mob) then
		Array.Function.LockBossFallbackQuest(Quest, "boss_killed")
	end

	if Array.State.LockedBossFallbackQuest and Array.Function.IsSameQuest(Quest, Array.State.LockedBossFallbackQuest) then
		Array.State.FallbackQuestState = Array.Function.GetQuestState()

		if Array.Function.IsQuestStateComplete(Array.State.FallbackQuestState)
			or not Array.Function.HasActiveQuest()
		then
			Array.Function.ClearLockedBossFallback("fallback_farmed")
		end
	end

	Array.Function.StopFarmHover()

	return true
end

function Array.Function.SetAutoFarmStatus(Key, Value)
	Array.State.AutoFarmStatus = type(Array.State.AutoFarmStatus) == "table" and Array.State.AutoFarmStatus or {}
	Array.State.AutoFarmStatus[Key] = Value
	Array.State.AutoFarmStatus.UpdatedAt = os.clock()
end

function Array.Function.GetRoot()
	Array.State.Character = Array.Service.Player.Character
	Array.State.RootPart = Array.State.Character and Array.State.Character:FindFirstChild("HumanoidRootPart")

	return Array.State.RootPart
end

function Array.Function.IsSafePosition(Position)
	return Position and Position.Y > Array.Config.AutoFarm.SafePositionFloor
end

function Array.Function.SetCharacterCFrame(TargetCFrame)
	Array.Function.GetCharacter()

	if not Array.State.Character or not Array.State.Humanoid or not Array.State.RootPart or typeof(TargetCFrame) ~= "CFrame" then
		return false
	end

	if not Array.Function.IsSafePosition(TargetCFrame.Position) then
		Array.Function.SetAutoFarmStatus("LastUnsafeCFrame", tostring(TargetCFrame.Position))

		return false
	end

	if Array.Config.AutoFarm.NoClip then
		Array.Function.SetCharacterCollision(false)
	end

	Array.State.Humanoid.PlatformStand = false

	pcall(function()
		Array.State.RootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
		Array.State.RootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
	end)

	Array.State.RootPart.CFrame = TargetCFrame

	return true
end

function Array.Function.SetCharacterCFrameNoYield(TargetCFrame)
	if typeof(TargetCFrame) ~= "CFrame" then
		return false
	end

	if not Array.Function.IsSafePosition(TargetCFrame.Position) then
		Array.Function.SetAutoFarmStatus("LastUnsafeCFrame", tostring(TargetCFrame.Position))

		return false
	end

	Array.State.Character = Array.Service.Player.Character
	Array.State.Humanoid = Array.State.Character and Array.State.Character:FindFirstChildOfClass("Humanoid")
	Array.State.RootPart = Array.State.Character and Array.State.Character:FindFirstChild("HumanoidRootPart")

	if not Array.State.Character or not Array.State.Humanoid or not Array.State.RootPart then
		return false
	end

	if Array.Config.AutoFarm.NoClip then
		for _, Child in next, Array.State.Character:GetChildren() do
			if Child:IsA("BasePart") then
				Child.CanCollide = false
			end
		end
	end

	Array.State.Humanoid.PlatformStand = false

	pcall(function()
		Array.State.RootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
		Array.State.RootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
	end)

	Array.State.RootPart.CFrame = TargetCFrame

	return true
end

function Array.Function.GetHoverCFrame(TargetRoot)
	if not TargetRoot then
		return nil
	end

	Array.State.World1HoverHeight, Array.State.World1HoverBackDistance, Array.State.World1HoverAimHeight, Array.State.World1HoverMode = Array.Function.GetFarmHoverSettings()

	if Array.State.World1HoverMode == "black_leg" then
		Array.State.World1HoverDirection = nil
		Array.State.World1TargetLook = TargetRoot.CFrame.LookVector
		Array.State.World1TargetFlatLook = Vector3.new(Array.State.World1TargetLook.X, 0, Array.State.World1TargetLook.Z)

		if Array.State.World1TargetFlatLook.Magnitude > 0.1 then
			Array.State.World1TargetFlatLook = Array.State.World1TargetFlatLook.Unit
			Array.State.World1HoverDirection = -Array.State.World1TargetFlatLook
		else
			Array.State.World1RootPart = Array.Function.GetRoot()

			if Array.State.World1RootPart then
				Array.State.World1HoverDelta = Vector3.new(
					Array.State.World1RootPart.Position.X - TargetRoot.Position.X,
					0,
					Array.State.World1RootPart.Position.Z - TargetRoot.Position.Z
				)

				if Array.State.World1HoverDelta.Magnitude > 0.1 then
					Array.State.World1HoverDirection = Array.State.World1HoverDelta.Unit
				end
			end
		end

		if not Array.State.World1HoverDirection then
			Array.State.World1HoverDirection = Vector3.new(0, 0, -1)
		end

		Array.State.World1HoverPosition = TargetRoot.Position
			+ Vector3.new(0, Array.State.World1HoverHeight, 0)
			+ (Array.State.World1HoverDirection * Array.State.World1HoverBackDistance)
		Array.State.World1HoverLookPosition = TargetRoot.Position + Vector3.new(0, Array.State.World1HoverAimHeight, 0)
		Array.Function.SetAutoFarmStatus("LastHoverMode", Array.State.World1HoverMode)
		Array.Function.SetAutoFarmStatus(
			"LastHoverBehindDot",
			Array.State.World1TargetFlatLook.Magnitude > 0.1 and Array.State.World1HoverDirection:Dot(Array.State.World1TargetFlatLook) or nil
		)
		Array.Function.SetAutoFarmStatus("LastHoverYOffset", Array.State.World1HoverPosition.Y - TargetRoot.Position.Y)

		return CFrame.lookAt(Array.State.World1HoverPosition, Array.State.World1HoverLookPosition)
	end

	Array.State.World1HoverPosition = TargetRoot.Position + Vector3.new(0, Array.Config.AutoFarm.HoverHeight, 0)
	Array.Function.SetAutoFarmStatus("LastHoverMode", Array.State.World1HoverMode)

	return CFrame.new(Array.State.World1HoverPosition) * CFrame.Angles(math.rad(-90), 0, 0)
end

function Array.Function.TravelToCFrame(Destination)
	if typeof(Destination) ~= "CFrame" then
		return false
	end

	if not Array.Function.IsSafePosition(Destination.Position) then
		Array.State.CurrentTraveling = false
		Array.Function.SetAutoFarmStatus("LastTravelResult", "unsafe_destination")
		Array.Function.SetAutoFarmStatus("LastTravelDestination", tostring(Destination.Position))

		return false
	end

	if not Array.Config.AutoFarm.SmoothTravel then
		return Array.Function.SetCharacterCFrame(Destination)
	end

	Array.State.CurrentTraveling = true
	Array.Function.GetCharacter()
	Array.State.TravelReached = false
	Array.State.TravelStartedAt = os.clock()
	Array.State.TravelLastProgressAt = Array.State.TravelStartedAt
	Array.State.TravelLastDistance = math.huge

	while Array.Function.IsRunning()
		and game.PlaceId == Array.Config.PlaceId.World1
		and Array.State.Humanoid
		and Array.State.Humanoid.Health > 0
		and Array.State.RootPart
	do
		Array.State.TravelDelta = Destination.Position - Array.State.RootPart.Position
		Array.State.TravelDistance = Array.State.TravelDelta.Magnitude

		if Array.State.TravelDistance < (Array.State.TravelLastDistance - 1) then
			Array.State.TravelLastDistance = Array.State.TravelDistance
			Array.State.TravelLastProgressAt = os.clock()
		elseif os.clock() - Array.State.TravelLastProgressAt >= 2 then
			Array.Function.SetAutoFarmStatus("LastTravelResult", "stuck")
			Array.Function.SetAutoFarmStatus("LastTravelDestination", tostring(Destination.Position))
			break
		end

		if Array.State.TravelDistance <= Array.Config.AutoFarm.TeleportDistance then
			Array.State.TravelReached = true
			break
		end

		Array.State.TravelStep = Array.Config.AutoFarm.TravelSpeed * Array.Config.AutoFarm.TravelStepDelay

		if Array.Config.AutoFarm.FastTravel then
			Array.State.TravelStep = math.min(Array.State.TravelDistance, Array.Config.AutoFarm.TravelMaxStep, Array.State.TravelStep)
		else
			Array.State.TravelStep = math.min(Array.State.TravelDistance, Array.State.TravelStep)
		end

		if Array.State.TravelDistance <= 0 then
			break
		end

		Array.State.TravelNextPosition = Array.State.RootPart.Position + Array.State.TravelDelta.Unit * Array.State.TravelStep
		Array.Function.SetCharacterCFrame(CFrame.new(Array.State.TravelNextPosition, Destination.Position))
		task.wait(Array.Config.AutoFarm.TravelStepDelay)
		Array.Function.GetCharacter()
	end

	if Array.State.TravelReached then
		Array.Function.SetCharacterCFrame(Destination)
	end

	Array.State.CurrentTraveling = false

	return Array.State.TravelReached
end

function Array.Function.MoveNearInstance(InstanceData)
	Array.State.MoveNearCFrame = Array.Function.GetInstanceCFrame(InstanceData)

	if not Array.State.MoveNearCFrame then
		return false
	end

	return Array.Function.TravelToCFrame(Array.State.MoveNearCFrame + Vector3.new(0, Array.Config.AutoFarm.HoverHeight, 0))
end

function Array.Function.GetMobHumanoid(Mob)
	return Mob and Mob:FindFirstChildWhichIsA("Humanoid", true) or nil
end

function Array.Function.GetMobRoot(Mob)
	if not Mob then
		return nil
	end

	return Mob:FindFirstChild("HumanoidRootPart")
		or Mob.PrimaryPart
		or Mob:FindFirstChildWhichIsA("BasePart", true)
end

function Array.Function.TrimName(Name)
	Array.State.TrimmedName = tostring(Name or "")
	Array.State.TrimmedName = string.gsub(Array.State.TrimmedName, "^%s+", "")
	Array.State.TrimmedName = string.gsub(Array.State.TrimmedName, "%s+$", "")

	return Array.State.TrimmedName
end

function Array.Function.GetMobName(Mob)
	Array.State.MobNPCName = Mob and Mob:FindFirstChild("NPCName")

	if Array.State.MobNPCName and Array.State.MobNPCName:IsA("ValueBase") and tostring(Array.State.MobNPCName.Value or "") ~= "" then
		return tostring(Array.State.MobNPCName.Value)
	end

	Array.State.MobMonsterName = Mob and Mob:GetAttribute("Monster")

	if typeof(Array.State.MobMonsterName) == "string" and Array.State.MobMonsterName ~= "" then
		return Array.State.MobMonsterName
	end

	return Mob and string.gsub(Mob.Name, "%d+$", "") or ""
end

function Array.Function.MatchesMob(Mob, TargetName)
	Array.State.TargetMobName = Array.Function.TrimName(TargetName)

	if Array.State.TargetMobName == "" or not Mob then
		return false
	end

	Array.State.MobName = Array.Function.TrimName(Array.Function.GetMobName(Mob))

	if Array.Function.IsQuestNameMatch(Array.State.MobName, Array.State.TargetMobName) then
		return true
	end

	Array.State.StrippedMobName = Array.Function.TrimName(string.gsub(Mob.Name, "%d+$", ""))

	if Array.Function.IsQuestNameMatch(Array.State.StrippedMobName, Array.State.TargetMobName) then
		return true
	end

	if string.sub(Mob.Name, 1, #Array.State.TargetMobName) == Array.State.TargetMobName then
		Array.State.NextMobNameCharacter = string.sub(Mob.Name, #Array.State.TargetMobName + 1, #Array.State.TargetMobName + 1)

		return Array.State.NextMobNameCharacter == "" or tonumber(Array.State.NextMobNameCharacter) ~= nil
	end

	return false
end

function Array.Function.IsAliveMob(Mob)
	Array.State.MobHumanoid = Array.Function.GetMobHumanoid(Mob)
	Array.State.MobRoot = Array.Function.GetMobRoot(Mob)

	return Mob
		and Mob:IsDescendantOf(workspace)
		and Array.State.MobHumanoid
		and Array.State.MobRoot
		and Array.Function.IsSafePosition(Array.State.MobRoot.Position)
		and Array.State.MobHumanoid.Health > 0
end

function Array.Function.RefreshNpcContainers(Force)
	Array.State.NpcContainers = type(Array.State.NpcContainers) == "table" and Array.State.NpcContainers or {}
	Array.State.LastContainerScan = Array.State.LastContainerScan or 0

	if not Force
		and #Array.State.NpcContainers > 0
		and os.clock() - Array.State.LastContainerScan < Array.Config.AutoFarm.ContainerRefreshDelay
	then
		return
	end

	Array.State.NpcContainers = {}
	Array.State.LastContainerScan = os.clock()
	Array.State.NpcZones = Array.Function.GetNpcZones()

	if not Array.State.NpcZones then
		Array.Function.SetAutoFarmStatus("NpcContainerCount", 0)
		return
	end

	local function Scan(Container, Depth)
		if not Container or Depth > Array.Config.AutoFarm.MobSearchDepth then
			return
		end

		for _, Child in next, Container:GetChildren() do
			if Child.Name == "NPCS" then
				table.insert(Array.State.NpcContainers, Child)
			end

			if Child:IsA("Folder") or Child:IsA("Model") then
				Scan(Child, Depth + 1)
			end
		end
	end

	Scan(Array.State.NpcZones, 0)
	Array.Function.SetAutoFarmStatus("NpcContainerCount", #Array.State.NpcContainers)
end

function Array.Function.FindMob(TargetName)
	Array.Function.RefreshNpcContainers(false)
	Array.State.PlayerRoot = Array.Function.GetRoot()
	Array.State.ClosestMob = nil
	Array.State.ClosestMobDistance = math.huge

	if not Array.State.PlayerRoot then
		return nil
	end

	for _, Container in next, Array.State.NpcContainers do
		if Container and Container:IsDescendantOf(workspace) then
			for _, Mob in next, Container:GetChildren() do
				if Mob:IsA("Model") and Array.Function.MatchesMob(Mob, TargetName) and Array.Function.IsAliveMob(Mob) then
					Array.State.FindMobRoot = Array.Function.GetMobRoot(Mob)

					if Array.State.FindMobRoot then
						Array.State.FindMobDistance = (Array.State.FindMobRoot.Position - Array.State.PlayerRoot.Position).Magnitude

						if Array.State.FindMobDistance < Array.State.ClosestMobDistance then
							Array.State.ClosestMobDistance = Array.State.FindMobDistance
							Array.State.ClosestMob = Mob
						end
					end
				end
			end
		end
	end

	Array.Function.SetAutoFarmStatus("LastFindMob", TargetName)
	Array.Function.SetAutoFarmStatus("LastFindMobResult", Array.State.ClosestMob and Array.State.ClosestMob.Name or nil)

	return Array.State.ClosestMob
end

function Array.Function.GetQuestZone(Quest)
	Array.State.QuestZoneName = Quest and Array.Config.AutoFarm.QuestZoneNames and Array.Config.AutoFarm.QuestZoneNames[Quest.MobName]
	Array.State.NpcZones = Array.Function.GetNpcZones()

	if not Array.State.QuestZoneName or not Array.State.NpcZones then
		return nil, nil
	end

	return Array.State.NpcZones:FindFirstChild(Array.State.QuestZoneName), Array.State.QuestZoneName
end

function Array.Function.GetMobSpawnCFrameValue(Mob)
	Array.State.SpawnCFrame = Mob and Mob:FindFirstChild("SpawnCFrame")

	if Array.State.SpawnCFrame
		and Array.State.SpawnCFrame:IsA("CFrameValue")
		and Array.Function.IsSafePosition(Array.State.SpawnCFrame.Value.Position)
	then
		return Array.State.SpawnCFrame
	end

	return nil
end

function Array.Function.GetSpawnPointMobName(SpawnPoint)
	return Array.Function.TrimName(tostring(SpawnPoint and SpawnPoint.Name or ""):gsub("%d+$", ""))
end

function Array.Function.GetObservationSpawnPoints()
	Array.State.PlayerGui = Array.Service.PlayerGui or Array.Service.Player:FindFirstChildOfClass("PlayerGui")
	Array.State.ObservationServer = Array.State.PlayerGui and Array.State.PlayerGui:FindFirstChild("ObservationHaki_Server")
	Array.State.ObservationClient = Array.State.ObservationServer and Array.State.ObservationServer:FindFirstChild("ObservationHaki_Client", true)

	return Array.State.ObservationClient and Array.State.ObservationClient:FindFirstChild("SpawnPoints") or nil
end

function Array.Function.CollectIslandSpawnPoints(IslandFolder)
	Array.State.IslandSpawnPoints = {}

	local function Scan(Container, Depth)
		if not Container or Depth > 4 then
			return
		end

		for _, Child in next, Container:GetChildren() do
			if Child:IsA("BasePart") and Array.Function.IsSafePosition(Child.Position) then
				table.insert(Array.State.IslandSpawnPoints, Child)
			end

			if Child:IsA("Folder") or Child:IsA("Model") then
				Scan(Child, Depth + 1)
			end
		end
	end

	Scan(IslandFolder, 0)
	table.sort(Array.State.IslandSpawnPoints, function(Left, Right)
		return Left.Name < Right.Name
	end)

	return Array.State.IslandSpawnPoints
end

function Array.Function.FindQuestSpawnIsland(Quest, TargetName)
	Array.State.SpawnSearchTargetName = Array.Function.TrimName(TargetName or (Quest and Quest.MobName) or "")

	if Array.State.SpawnSearchTargetName == "" then
		return nil, nil
	end

	Array.State.ObservationSpawnPoints = Array.Function.GetObservationSpawnPoints()

	if not Array.State.ObservationSpawnPoints then
		return nil, nil
	end

	Array.State.PlayerRoot = Array.Function.GetRoot()
	Array.State.ClosestIsland = nil
	Array.State.ClosestTargetPoint = nil
	Array.State.ClosestTargetPointDistance = math.huge

	for _, IslandFolder in next, Array.State.ObservationSpawnPoints:GetChildren() do
		for _, SpawnPoint in next, IslandFolder:GetChildren() do
			if SpawnPoint:IsA("BasePart")
				and Array.Function.GetSpawnPointMobName(SpawnPoint) == Array.State.SpawnSearchTargetName
				and Array.Function.IsSafePosition(SpawnPoint.Position)
			then
				Array.State.SpawnPointDistance = Array.State.PlayerRoot and (SpawnPoint.Position - Array.State.PlayerRoot.Position).Magnitude or 0

				if not Array.State.ClosestTargetPoint or Array.State.SpawnPointDistance < Array.State.ClosestTargetPointDistance then
					Array.State.ClosestIsland = IslandFolder
					Array.State.ClosestTargetPoint = SpawnPoint
					Array.State.ClosestTargetPointDistance = Array.State.SpawnPointDistance
				end
			end
		end
	end

	return Array.State.ClosestIsland, Array.State.ClosestTargetPoint
end

function Array.Function.GetConfiguredQuestIslandName(Quest, TargetName)
	Array.State.ConfiguredIslandTargetName = Array.Function.TrimName(TargetName or (Quest and Quest.MobName) or "")

	if Array.State.ConfiguredIslandTargetName ~= "" and Array.Config.AutoFarm.QuestIslandNames[Array.State.ConfiguredIslandTargetName] then
		return Array.Config.AutoFarm.QuestIslandNames[Array.State.ConfiguredIslandTargetName]
	end

	Array.State.ConfiguredIslandQuestLevel = tonumber(Quest and Quest.Level)

	if Array.State.ConfiguredIslandQuestLevel then
		for _, Range in next, Array.Config.AutoFarm.QuestIslandLevelRanges do
			if Array.State.ConfiguredIslandQuestLevel >= Range.Min and Array.State.ConfiguredIslandQuestLevel <= Range.Max then
				return Range.Island
			end
		end
	end

	return nil
end

function Array.Function.FindWorkspaceIslandFolder(IslandName)
	if not IslandName or IslandName == "" then
		return nil
	end

	Array.State.WorkspaceIslands = workspace:FindFirstChild("Islands")

	return Array.State.WorkspaceIslands and Array.State.WorkspaceIslands:FindFirstChild(IslandName) or nil
end

function Array.Function.FindNpcZoneIslandFolder(IslandName)
	if not IslandName or IslandName == "" then
		return nil
	end

	Array.State.NpcZones = Array.Function.GetNpcZones()

	return Array.State.NpcZones and Array.State.NpcZones:FindFirstChild(IslandName) or nil
end

function Array.Function.GetModelScanCFrame(Model)
	if not Model then
		return nil
	end

	Array.State.ModelSpawnCFrame = Model:FindFirstChild("SpawnCFrame", true)

	if Array.State.ModelSpawnCFrame
		and Array.State.ModelSpawnCFrame:IsA("CFrameValue")
		and Array.Function.IsSafePosition(Array.State.ModelSpawnCFrame.Value.Position)
	then
		return Array.State.ModelSpawnCFrame.Value
	end

	Array.State.ModelScanRoot = Array.Function.GetMobRoot(Model)

	if Array.State.ModelScanRoot and Array.Function.IsSafePosition(Array.State.ModelScanRoot.Position) then
		return Array.State.ModelScanRoot.CFrame
	end

	Array.State.ModelFallbackCFrame = Array.Function.GetInstanceCFrame(Model)

	if Array.State.ModelFallbackCFrame and Array.Function.IsSafePosition(Array.State.ModelFallbackCFrame.Position) then
		return Array.State.ModelFallbackCFrame
	end

	return nil
end

function Array.Function.CollectNpcZoneScanCFrames(ZoneFolder, TargetName)
	Array.State.NpcZoneScanCFrames = {}

	if not ZoneFolder then
		return Array.State.NpcZoneScanCFrames
	end

	Array.State.NpcZoneScanContainer = ZoneFolder:FindFirstChild("NPCS")

	if not Array.State.NpcZoneScanContainer then
		return Array.State.NpcZoneScanCFrames
	end

	local function AddMobCFrame(Mob)
		Array.State.NpcZoneScanMobCFrame = Array.Function.GetModelScanCFrame(Mob)

		if Array.State.NpcZoneScanMobCFrame then
			table.insert(Array.State.NpcZoneScanCFrames, Array.State.NpcZoneScanMobCFrame)
		end
	end

	for _, Mob in next, Array.State.NpcZoneScanContainer:GetChildren() do
		if Mob:IsA("Model") and Array.Function.MatchesMob(Mob, TargetName) then
			AddMobCFrame(Mob)
		end
	end

	if #Array.State.NpcZoneScanCFrames == 0 then
		for _, Mob in next, Array.State.NpcZoneScanContainer:GetChildren() do
			if Mob:IsA("Model") and Array.Function.IsAliveMob(Mob) then
				AddMobCFrame(Mob)
			end
		end
	end

	return Array.State.NpcZoneScanCFrames
end

function Array.Function.AppendCFrameScanPoints(TargetArray, CFrames)
	for _, TargetCFrame in next, CFrames do
		if typeof(TargetCFrame) == "CFrame" and Array.Function.IsSafePosition(TargetCFrame.Position) then
			table.insert(TargetArray, TargetCFrame)
		end
	end
end

function Array.Function.FindQuestScanIsland(Quest, TargetName)
	Array.State.QuestScanIslandFolder, Array.State.QuestScanTargetPoint = Array.Function.FindQuestSpawnIsland(Quest, TargetName)

	if Array.State.QuestScanIslandFolder then
		return Array.State.QuestScanIslandFolder, Array.State.QuestScanTargetPoint, "observation_spawnpoints"
	end

	Array.State.QuestScanIslandName = Array.Function.GetConfiguredQuestIslandName(Quest, TargetName)
	Array.State.QuestScanWorkspaceIsland = Array.Function.FindWorkspaceIslandFolder(Array.State.QuestScanIslandName)

	if Array.State.QuestScanWorkspaceIsland then
		return Array.State.QuestScanWorkspaceIsland, nil, "workspace_island"
	end

	Array.State.QuestScanZoneIsland = Array.Function.FindNpcZoneIslandFolder(Array.State.QuestScanIslandName)

	if Array.State.QuestScanZoneIsland then
		return Array.State.QuestScanZoneIsland, nil, "npc_zone"
	end

	return nil, nil, nil
end

function Array.Function.CollectQuestScanCFrames(Quest, TargetName)
	Array.State.QuestScanIslandFolder, Array.State.QuestScanTargetPoint, Array.State.QuestScanSource = Array.Function.FindQuestScanIsland(Quest, TargetName)
	Array.State.QuestScanCFrames = {}

	if Array.State.QuestScanIslandFolder then
		if Array.State.QuestScanTargetPoint then
			table.insert(Array.State.QuestScanCFrames, Array.State.QuestScanTargetPoint.CFrame)
		end

		for _, Part in next, Array.Function.CollectIslandSpawnPoints(Array.State.QuestScanIslandFolder) do
			if not Array.State.QuestScanTargetPoint or Part ~= Array.State.QuestScanTargetPoint then
				table.insert(Array.State.QuestScanCFrames, Part.CFrame)
			end
		end
	end

	if #Array.State.QuestScanCFrames == 0 then
		Array.State.QuestScanIslandName = Array.Function.GetConfiguredQuestIslandName(Quest, TargetName)
		Array.Function.AppendCFrameScanPoints(
			Array.State.QuestScanCFrames,
			Array.Function.CollectNpcZoneScanCFrames(Array.Function.FindNpcZoneIslandFolder(Array.State.QuestScanIslandName), TargetName)
		)
	end

	return Array.State.QuestScanCFrames, Array.State.QuestScanIslandFolder, Array.State.QuestScanTargetPoint, Array.State.QuestScanSource
end

function Array.Function.GetQuestIslandScanPoint(Quest, TargetName)
	Array.State.ScanPointIslandFolder, Array.State.ScanPointTargetPoint = Array.Function.FindQuestSpawnIsland(Quest, TargetName)

	if not Array.State.ScanPointIslandFolder then
		return nil, nil, nil, 0
	end

	Array.State.ScanPoints = Array.Function.CollectIslandSpawnPoints(Array.State.ScanPointIslandFolder)
	Array.State.SelectedScanPoint = Array.State.ScanPointTargetPoint

	if Array.Config.AutoFarm.MobSpawnProbeRandomScan and #Array.State.ScanPoints > 0 then
		Array.State.ScanPointKey = tostring(Quest and Quest.Level or "") .. ":" .. tostring(Quest and Quest.MobName or "") .. ":" .. tostring(TargetName or "") .. ":" .. Array.State.ScanPointIslandFolder:GetFullName()

		if Array.State.ScanPointKey ~= Array.State.LastSpawnProbeKey then
			Array.State.LastSpawnProbeKey = Array.State.ScanPointKey
			Array.State.LastSpawnProbeIndex = 0
			Array.State.LastSpawnProbeMove = 0
		end

		if (Array.State.LastSpawnProbeIndex or 0) <= 0
			or os.clock() - (Array.State.LastSpawnProbeMove or 0) >= Array.Config.AutoFarm.MobSpawnProbeMoveDelay
		then
			Array.State.NextSpawnProbeIndex = math.random(1, #Array.State.ScanPoints)

			if #Array.State.ScanPoints > 1 and Array.State.NextSpawnProbeIndex == Array.State.LastSpawnProbeIndex then
				Array.State.NextSpawnProbeIndex = (Array.State.NextSpawnProbeIndex % #Array.State.ScanPoints) + 1
			end

			Array.State.LastSpawnProbeIndex = Array.State.NextSpawnProbeIndex
			Array.State.LastSpawnProbeMove = os.clock()
		end

		Array.State.SelectedScanPoint = Array.State.ScanPoints[Array.State.LastSpawnProbeIndex] or Array.State.ScanPointTargetPoint
	end

	return Array.State.SelectedScanPoint, Array.State.ScanPointIslandFolder, Array.State.ScanPointTargetPoint, #Array.State.ScanPoints
end

function Array.Function.MoveNearQuestSpawnIsland(Quest, TargetName)
	Array.State.SpawnPoint, Array.State.SpawnIslandFolder, Array.State.SpawnTargetPoint, Array.State.ScanPointCount = Array.Function.GetQuestIslandScanPoint(Quest, TargetName)
	Array.Function.SetAutoFarmStatus("LastSpawnMoveTarget", TargetName or (Quest and Quest.MobName) or nil)
	Array.Function.SetAutoFarmStatus("LastSpawnMovePoint", Array.State.SpawnPoint and Array.State.SpawnPoint.Name or nil)
	Array.Function.SetAutoFarmStatus("LastSpawnMoveIsland", Array.State.SpawnIslandFolder and Array.State.SpawnIslandFolder.Name or nil)
	Array.Function.SetAutoFarmStatus("LastSpawnMoveScanCount", Array.State.ScanPointCount)
	Array.Function.SetAutoFarmStatus("LastSpawnMoveIndex", (Array.State.LastSpawnProbeIndex or 0) > 0 and Array.State.LastSpawnProbeIndex or nil)

	if not Array.State.SpawnPoint then
		return false
	end

	Array.State.SpawnPointCFrame = Array.Function.GetInstanceCFrame(Array.State.SpawnPoint)
	Array.State.SpawnMoved = false

	if Array.State.SpawnPointCFrame and Array.Config.AutoFarm.MobSpawnProbeTeleportScan and Array.Config.AutoFarm.MobSpawnProbeRandomScan then
		Array.State.SpawnMoved = Array.Function.SetCharacterCFrame(Array.State.SpawnPointCFrame + Vector3.new(0, Array.Config.AutoFarm.HoverHeight, 0))
	else
		Array.State.SpawnMoved = Array.Function.MoveNearInstance(Array.State.SpawnPoint)
	end

	if Array.State.SpawnMoved then
		Array.Function.RefreshNpcContainers(true)
	end

	return Array.State.SpawnMoved
end

function Array.Function.ProbeQuestIslandForMob(Quest, TargetName, Reason)
	Array.State.ProbeTargetName = Array.Function.TrimName(TargetName or (Quest and Quest.MobName) or "")

	if not Quest or Array.State.ProbeTargetName == "" then
		return nil, false
	end

	if os.clock() - (Array.State.LastQuestProbeAt or 0) < Array.Config.AutoFarm.MobSpawnProbeRetryDelay then
		return nil, false
	end

	Array.State.LastQuestProbeAt = os.clock()
	Array.State.ProbeScanCFrames, Array.State.ProbeIslandFolder, Array.State.ProbeTargetPoint, Array.State.ProbeSource = Array.Function.CollectQuestScanCFrames(Quest, Array.State.ProbeTargetName)
	Array.State.ProbeScanCount = #Array.State.ProbeScanCFrames
	Array.Function.SetAutoFarmStatus("LastQuestIslandScanReason", Reason)
	Array.Function.SetAutoFarmStatus("LastQuestIslandScanObjective", Array.State.ProbeTargetName)
	Array.Function.SetAutoFarmStatus("LastQuestIslandScanQuest", Quest.LevelName and (Quest.LevelName .. " " .. Quest.MobName) or Quest.MobName)
	Array.Function.SetAutoFarmStatus("LastQuestIslandScanIsland", Array.State.ProbeIslandFolder and Array.State.ProbeIslandFolder.Name or Array.Function.GetConfiguredQuestIslandName(Quest, Array.State.ProbeTargetName))
	Array.Function.SetAutoFarmStatus("LastQuestIslandScanSource", Array.State.ProbeSource)
	Array.Function.SetAutoFarmStatus("LastQuestIslandScanCount", Array.State.ProbeScanCount)

	if Array.State.ProbeScanCount == 0 then
		Array.Function.SetAutoFarmStatus("LastQuestIslandScanFound", nil)
		Array.Function.SetAutoFarmStatus("LastQuestIslandScanResult", "no_scan_points")

		return nil, false
	end

	Array.State.ProbeKey = tostring(Quest.Level) .. ":" .. tostring(Quest.MobName) .. ":" .. Array.State.ProbeTargetName .. ":" .. tostring(Array.State.ProbeIslandFolder and Array.State.ProbeIslandFolder:GetFullName() or Array.Function.GetConfiguredQuestIslandName(Quest, Array.State.ProbeTargetName) or "unknown")

	if Array.State.ProbeKey ~= Array.State.LastSpawnProbeKey then
		Array.State.LastSpawnProbeKey = Array.State.ProbeKey
		Array.State.LastSpawnProbeIndex = 0
		Array.State.LastSpawnProbeMove = 0
	end

	Array.State.ProbeAttempts = math.min(Array.State.ProbeScanCount, Array.Config.AutoFarm.MobSpawnProbeBurstCount)

	for Attempt = 1, Array.State.ProbeAttempts do
		if not Array.Function.IsRunning() or game.PlaceId ~= Array.Config.PlaceId.World1 then
			break
		end

		if Array.Config.AutoFarm.MobSpawnProbeRandomScan then
			Array.State.NextProbeIndex = math.random(1, Array.State.ProbeScanCount)

			if Array.State.ProbeScanCount > 1 and Array.State.NextProbeIndex == Array.State.LastSpawnProbeIndex then
				Array.State.NextProbeIndex = (Array.State.NextProbeIndex % Array.State.ProbeScanCount) + 1
			end
		else
			Array.State.NextProbeIndex = ((Array.State.LastSpawnProbeIndex or 0) % Array.State.ProbeScanCount) + 1
		end

		Array.State.LastSpawnProbeIndex = Array.State.NextProbeIndex
		Array.State.LastSpawnProbeMove = os.clock()
		Array.State.ProbeTargetCFrame = Array.State.ProbeScanCFrames[Array.State.NextProbeIndex]
		Array.Function.SetAutoFarmStatus("LastQuestIslandScanIndex", Array.State.NextProbeIndex)
		Array.Function.SetAutoFarmStatus("LastQuestIslandScanAttempt", Attempt)

		if Array.State.ProbeTargetCFrame then
			Array.Function.SetCharacterCFrame(Array.State.ProbeTargetCFrame + Vector3.new(0, Array.Config.AutoFarm.HoverHeight, 0))
			Array.Function.RefreshNpcContainers(true)
			task.wait(Array.Config.AutoFarm.MobSpawnProbeSettleDelay)
		end

		Array.State.ProbeTarget = Array.Function.FindMob(Array.State.ProbeTargetName)
		Array.Function.SetAutoFarmStatus("LastQuestIslandScanFound", Array.State.ProbeTarget and Array.State.ProbeTarget.Name or nil)
		Array.Function.SetAutoFarmStatus("LastQuestIslandScanPath", Array.State.ProbeTarget and Array.State.ProbeTarget:GetFullName() or nil)

		if Array.State.ProbeTarget and Array.Function.IsAliveMob(Array.State.ProbeTarget) then
			Array.Function.SetAutoFarmStatus("LastQuestIslandScanResult", "found")

			return Array.State.ProbeTarget, true
		end
	end

	Array.Function.SetAutoFarmStatus("LastQuestIslandScanResult", "not_found")

	return nil, true
end

function Array.Function.GetQuestTargetProbe(Quest)
	Array.State.QuestTargetProbeZone, Array.State.QuestTargetProbeZoneName = Array.Function.GetQuestZone(Quest)

	if not Array.State.QuestTargetProbeZone then
		return nil, nil
	end

	Array.State.QuestTargetProbeContainer = Array.State.QuestTargetProbeZone:FindFirstChild("NPCS")
	Array.State.BackupQuestTargetProbe = nil
	Array.State.BackupQuestTargetProbeReason = nil

	if Array.State.QuestTargetProbeContainer then
		for _, Mob in next, Array.State.QuestTargetProbeContainer:GetChildren() do
			if Mob:IsA("Model") then
				Array.State.QuestMobProbe = Array.Function.GetMobSpawnCFrameValue(Mob) or Mob

				if Quest and Array.Function.MatchesMob(Mob, Quest.MobName) then
					return Array.State.QuestMobProbe, "matching_zone_mob"
				end

				if not Array.State.BackupQuestTargetProbe and Array.Function.IsAliveMob(Mob) then
					Array.State.BackupQuestTargetProbe = Array.State.QuestMobProbe
					Array.State.BackupQuestTargetProbeReason = "nearby_zone_mob"
				end
			end
		end
	end

	return Array.State.BackupQuestTargetProbe, Array.State.BackupQuestTargetProbeReason or Array.State.QuestTargetProbeZoneName
end

function Array.Function.MoveNearQuestTargetArea(Quest, TargetName)
	Array.State.MovedToSpawnIsland = Array.Function.MoveNearQuestSpawnIsland(Quest, TargetName or (Quest and Quest.MobName) or nil)

	if Array.State.MovedToSpawnIsland then
		Array.Function.SetAutoFarmStatus("LastTargetAreaQuest", Quest and Quest.MobName or nil)
		Array.Function.SetAutoFarmStatus("LastTargetAreaProbe", "observation_island_scan")

		return true
	end

	Array.State.QuestTargetProbe, Array.State.QuestTargetProbeReason = Array.Function.GetQuestTargetProbe(Quest)

	if not Array.State.QuestTargetProbe then
		return false
	end

	Array.Function.SetAutoFarmStatus("LastTargetAreaQuest", Quest and Quest.MobName or nil)
	Array.Function.SetAutoFarmStatus("LastTargetAreaProbe", Array.State.QuestTargetProbeReason)

	return Array.Function.MoveNearInstance(Array.State.QuestTargetProbe)
end

function Array.Function.SelectQuestForLevel(Level)
	return Array.Function.GetQuestForLevel(Level)
end

function Array.Function.GetFallbackQuestForBoss(BossQuest)
	if not BossQuest then
		return nil
	end

	Array.State.UnavailableFallbackQuest = nil

	local function CanUseFallbackQuest(Quest)
		if not Array.Config.AutoFarm.BossFallbackRequireSpawnedMob then
			return true
		end

		Array.State.FallbackProbeTarget = Array.Function.FindMob(Quest.MobName)
		Array.Function.SetAutoFarmStatus("LastFallbackProbe", Quest.MobName)
		Array.Function.SetAutoFarmStatus("LastFallbackProbeFound", Array.State.FallbackProbeTarget and Array.State.FallbackProbeTarget.Name or nil)

		return Array.State.FallbackProbeTarget ~= nil
	end

	local function SelectFallbackQuest(SameGiverOnly)
		Array.State.UnavailableFallbackQuest = nil

		for _, Quest in next, Array.Function.GetWorld1QuestCache(false) do
			if Quest.Level < BossQuest.Level
				and not Array.Function.IsBossQuest(Quest)
				and (not SameGiverOnly or Quest.Giver == BossQuest.Giver)
			then
				if CanUseFallbackQuest(Quest) then
					Array.Function.SetAutoFarmStatus("LastFallbackQuest", Quest.LevelName .. " " .. Quest.MobName)
					return Quest
				end

				Array.State.UnavailableFallbackQuest = Array.State.UnavailableFallbackQuest or Quest
			end
		end

		if Array.State.UnavailableFallbackQuest then
			Array.Function.SetAutoFarmStatus(
				"LastFallbackQuest",
				Array.State.UnavailableFallbackQuest.LevelName .. " " .. Array.State.UnavailableFallbackQuest.MobName
			)
		end

		return Array.State.UnavailableFallbackQuest
	end

	if Array.Config.AutoFarm.BossFallbackSameGiver then
		Array.State.SameGiverFallbackQuest = SelectFallbackQuest(true)

		if Array.State.SameGiverFallbackQuest then
			return Array.State.SameGiverFallbackQuest
		end
	end

	return SelectFallbackQuest(false)
end

function Array.Function.SelectFarmQuest(Level)
	Array.State.RyummyShusuiSelectedQuest, Array.State.RyummyShusuiSelectedReason = Array.Function.SelectRyummyShusuiQuest(Level)

	if Array.State.RyummyShusuiSelectedQuest then
		return Array.State.RyummyShusuiSelectedQuest, Array.State.RyummyShusuiSelectedReason
	end

	Array.State.SelectedLevelQuest = Array.Function.SelectQuestForLevel(Level)

	if not Array.Config.AutoFarm.BossFallback or not Array.Function.IsBossQuest(Array.State.SelectedLevelQuest) then
		return Array.State.SelectedLevelQuest, "normal"
	end

	Array.State.SelectedBossTarget = Array.Function.FindMob(Array.State.SelectedLevelQuest.MobName)

	if Array.State.SelectedBossTarget then
		Array.Function.SetAutoFarmStatus("LastFarmQuestReason", "boss_spawned")
		return Array.State.SelectedLevelQuest, "boss_spawned"
	end

	Array.State.SelectedFallbackQuest = Array.Function.GetFallbackQuestForBoss(Array.State.SelectedLevelQuest)

	if Array.State.SelectedFallbackQuest then
		Array.Function.SetAutoFarmStatus("LastFarmQuestReason", "boss_wait_fallback")
		return Array.State.SelectedFallbackQuest, "boss_wait_fallback"
	end

	Array.Function.SetAutoFarmStatus("LastFarmQuestReason", "boss_no_fallback")

	return Array.State.SelectedLevelQuest, "boss_no_fallback"
end

function Array.Function.GetActiveBossFallbackObjective(Quest)
	if not Array.Config.AutoFarm.BossFallback
		or not Array.Config.AutoFarm.BossFallbackFarmWithoutCancel
		or not Array.Function.IsBossQuest(Quest)
	then
		Array.State.ActiveBossFallbackQuest = nil
		return nil
	end

	Array.State.ActiveBossTarget = Array.Function.FindMob(Quest.MobName)

	if Array.State.ActiveBossTarget then
		Array.State.BossMissingSince = 0
		Array.State.ActiveBossFallbackQuest = nil
		Array.Function.SetAutoFarmStatus("BossFallbackMode", "boss_spawned")
		Array.Function.SetAutoFarmStatus("ActiveBossFallbackQuest", nil)

		return nil
	end

	if not Array.State.BossMissingSince or Array.State.BossMissingSince == 0 then
		Array.State.BossMissingSince = os.clock()
	end

	if os.clock() - Array.State.BossMissingSince < Array.Config.AutoFarm.BossMissingCancelDelay then
		return nil
	end

	Array.State.ActiveBossFallbackQuest = Array.Function.GetFallbackQuestForBoss(Quest)

	if not Array.State.ActiveBossFallbackQuest then
		Array.Function.SetAutoFarmStatus("BossFallbackMode", "boss_wait_no_fallback")
		Array.Function.SetAutoFarmStatus("ActiveBossFallbackQuest", nil)

		return nil
	end

	Array.Function.SetAutoFarmStatus("BossFallbackMode", "active_boss_wait_fallback")
	Array.Function.SetAutoFarmStatus("ActiveBossQuest", Quest.LevelName .. " " .. Quest.MobName)
	Array.Function.SetAutoFarmStatus(
		"ActiveBossFallbackQuest",
		Array.State.ActiveBossFallbackQuest.LevelName .. " " .. Array.State.ActiveBossFallbackQuest.MobName
	)

	return Array.State.ActiveBossFallbackQuest.MobName, Array.State.ActiveBossFallbackQuest
end

function Array.Function.GetSpawnedBossForFallback(Level, ActiveQuest)
	if not Array.Config.AutoFarm.BossFallback or not Array.Config.AutoFarm.BossFallbackSwitchToBoss then
		return nil
	end

	if os.clock() - (Array.State.LastBossFallbackCheck or 0) < Array.Config.AutoFarm.BossFallbackCheckDelay then
		return nil
	end

	Array.State.LastBossFallbackCheck = os.clock()
	Array.State.SpawnedBossQuest = Array.Function.SelectQuestForLevel(Level)

	if not Array.Function.IsBossQuest(Array.State.SpawnedBossQuest)
		or not ActiveQuest
		or Array.Function.IsSameQuest(ActiveQuest, Array.State.SpawnedBossQuest)
		or Array.Function.IsBossQuest(ActiveQuest)
	then
		return nil
	end

	if ActiveQuest.Level >= Array.State.SpawnedBossQuest.Level then
		return nil
	end

	return Array.Function.FindMob(Array.State.SpawnedBossQuest.MobName) and Array.State.SpawnedBossQuest or nil
end

function Array.Function.AcceptQuest(Quest)
	if not Quest then
		return false, "NoQuest"
	end

	Array.State.QuestFunction = Array.Function.GetQuestFunction()

	if not Array.State.QuestFunction then
		Array.Function.SetStatus("AutoFarmAcceptQuest", "missing_quest_function")

		return false, "MissingQuestFunction"
	end

	Array.Function.MoveNearInstance(Quest.Giver)
	task.wait(Array.Config.AutoFarm.QuestAcceptDelay)
	Array.Function.SetStatus("AutoFarmAcceptQuest", Quest.LevelName .. " " .. Quest.MobName)
	Array.State.AcceptQuestSuccess, Array.State.AcceptQuestResult = pcall(function()
		return Array.State.QuestFunction:InvokeServer(Quest.Giver, Quest.LevelName)
	end)
	Array.Function.SetStatus("AutoFarmAcceptQuestResult", tostring(Array.State.AcceptQuestResult))

	if not Array.State.AcceptQuestSuccess then
		return false, Array.State.AcceptQuestResult
	end

	if Array.State.AcceptQuestResult == true or Array.State.AcceptQuestResult == "AlreadyOnQuest" then
		for _ = 1, Array.Config.AutoFarm.QuestAcceptAttempts do
			if Array.Function.IsQuestMatch(Quest) or Array.Function.HasActiveQuest() then
				return true, Array.State.AcceptQuestResult
			end

			task.wait(Array.Config.AutoFarm.QuestAcceptRetryDelay)
		end
	end

	return Array.Function.IsQuestMatch(Quest), Array.State.AcceptQuestResult
end

function Array.Function.GetToolScore(Tool)
	if not Tool or not Tool:IsA("Tool") then
		return -math.huge
	end

	if Array.Config.AutoFarm.PreferTool and Tool.Name == Array.Config.AutoFarm.PreferTool then
		return 1000
	end

	if Array.Config.AutoFarm.PreferTool == Array.Config.AutoBlackLeg.StyleName
		and Tool.Name == Array.Config.AutoBlackLeg.FallbackStyleName
	then
		return 950
	end

	if not Array.Config.AutoFarm.PreferMelee then
		return 1
	end

	if Tool:FindFirstChild("SwordServer", true) or Tool:FindFirstChild("SwordClient", true) then
		return 100
	end

	if Tool.Name == "Combat" or Tool:FindFirstChild("Combat_Server", true) or Tool:FindFirstChild("Punch", true) then
		return 90
	end

	if Tool:FindFirstChild("Activate", true) then
		return 25
	end

	return 10
end

function Array.Function.WaitForBackpack()
	Array.State.Backpack = Array.Service.Player:FindFirstChild("Backpack")
	Array.State.BackpackWaitStartedAt = os.clock()

	while not Array.State.Backpack
		and Array.Config.AutoFarm.BackpackWait > 0
		and Array.Function.IsRunning()
		and os.clock() - Array.State.BackpackWaitStartedAt < Array.Config.AutoFarm.BackpackWait
	do
		task.wait(0.05)
		Array.State.Backpack = Array.Service.Player:FindFirstChild("Backpack")
	end

	return Array.State.Backpack
end

function Array.Function.FindFarmToolByName(Name, Character, Backpack)
	if not Name or Name == "" then
		return nil
	end

	Array.State.FarmToolByName = Character and Character:FindFirstChild(Name) or nil

	if Array.State.FarmToolByName and Array.State.FarmToolByName:IsA("Tool") then
		return Array.State.FarmToolByName
	end

	Array.State.FarmToolByName = Backpack and Backpack:FindFirstChild(Name) or nil

	return Array.State.FarmToolByName and Array.State.FarmToolByName:IsA("Tool") and Array.State.FarmToolByName or nil
end

function Array.Function.ChooseBestFarmTool(Character, Backpack)
	Array.State.BestFarmTool = nil
	Array.State.BestFarmToolScore = -math.huge

	local function ConsiderTool(Tool)
		Array.State.FarmToolScore = Array.Function.GetToolScore(Tool)

		if Array.State.FarmToolScore > Array.State.BestFarmToolScore then
			Array.State.BestFarmTool = Tool
			Array.State.BestFarmToolScore = Array.State.FarmToolScore
		end
	end

	if Character then
		for _, Tool in next, Character:GetChildren() do
			if Tool:IsA("Tool") then
				ConsiderTool(Tool)
			end
		end
	end

	if Backpack then
		for _, Tool in next, Backpack:GetChildren() do
			if Tool:IsA("Tool") then
				ConsiderTool(Tool)
			end
		end
	end

	return Array.State.BestFarmTool, Array.State.BestFarmToolScore
end

function Array.Function.EquipFarmToolWithRetry(Tool, Humanoid, Character)
	if not Tool or not Tool:IsA("Tool") or not Humanoid or not Character then
		Array.Function.SetAutoFarmStatus("LastEquipResult", "no_tool")

		return nil
	end

	Array.State.FarmToolName = Tool.Name
	Array.Function.SetAutoFarmStatus("LastEquipTool", Array.State.FarmToolName)

	for Attempt = 1, Array.Config.AutoFarm.EquipRetryCount do
		Array.State.EquippedFarmTool = Character:FindFirstChildOfClass("Tool")

		if Array.State.EquippedFarmTool and Array.State.EquippedFarmTool.Name == Array.State.FarmToolName then
			Array.Function.SetAutoFarmStatus("LastEquipResult", "equipped")
			Array.Function.SetAutoFarmStatus("LastEquippedTool", Array.State.EquippedFarmTool.Name)
			Array.Function.SetAutoFarmStatus("LastEquipAttempt", Attempt)

			return Array.State.EquippedFarmTool
		end

		if not Tool:IsDescendantOf(game) then
			Tool = Array.Function.FindFarmToolByName(Array.State.FarmToolName, Character, Array.Function.WaitForBackpack())

			if not Tool then
				Array.Function.SetAutoFarmStatus("LastEquipResult", "tool_missing")

				return Array.State.EquippedFarmTool
			end
		end

		pcall(function()
			if Array.State.EquippedFarmTool and Array.State.EquippedFarmTool ~= Tool then
				Humanoid:UnequipTools()
			end
		end)

		task.wait(0.03)

		pcall(function()
			Humanoid:EquipTool(Tool)
		end)

		Array.Function.SetAutoFarmStatus("LastEquipAttempt", Attempt)
		task.wait(Array.Config.AutoFarm.EquipRetryDelay)
	end

	Array.State.EquippedFarmTool = Character:FindFirstChildOfClass("Tool")
	Array.Function.SetAutoFarmStatus(
		"LastEquipResult",
		Array.State.EquippedFarmTool and (Array.State.EquippedFarmTool.Name == Array.State.FarmToolName and "equipped_late" or "wrong_tool") or "failed"
	)
	Array.Function.SetAutoFarmStatus("LastEquippedTool", Array.State.EquippedFarmTool and Array.State.EquippedFarmTool.Name or nil)

	return Array.State.EquippedFarmTool and Array.State.EquippedFarmTool.Name == Array.State.FarmToolName and Array.State.EquippedFarmTool or nil
end

function Array.Function.GetPreferredFarmTool()
	Array.Function.GetCharacter()
	Array.State.Backpack = Array.Function.WaitForBackpack()

	if not Array.State.Character or not Array.State.Humanoid then
		return nil
	end

	if Array.Config.AutoFarm.PreferTool then
		Array.State.PreferredFarmTool = Array.Function.FindFarmToolByName(Array.Config.AutoFarm.PreferTool, Array.State.Character, Array.State.Backpack)
		Array.Function.SetAutoFarmStatus("LastToolCandidate", Array.State.PreferredFarmTool and Array.State.PreferredFarmTool.Name or nil)
		Array.Function.SetAutoFarmStatus("LastToolCandidateScore", Array.State.PreferredFarmTool and Array.Function.GetToolScore(Array.State.PreferredFarmTool) or nil)
		Array.State.EquippedPreferredFarmTool = Array.Function.EquipFarmToolWithRetry(Array.State.PreferredFarmTool, Array.State.Humanoid, Array.State.Character)

		if Array.State.EquippedPreferredFarmTool then
			return Array.State.EquippedPreferredFarmTool
		end
	end

	Array.State.BestFarmTool, Array.State.BestFarmToolScore = Array.Function.ChooseBestFarmTool(Array.State.Character, Array.State.Backpack)
	Array.Function.SetAutoFarmStatus("LastToolCandidate", Array.State.BestFarmTool and Array.State.BestFarmTool.Name or nil)
	Array.Function.SetAutoFarmStatus("LastToolCandidateScore", Array.State.BestFarmToolScore)

	if Array.State.BestFarmTool then
		Array.State.EquippedBestFarmTool = Array.Function.EquipFarmToolWithRetry(Array.State.BestFarmTool, Array.State.Humanoid, Array.State.Character)

		if Array.State.EquippedBestFarmTool then
			return Array.State.EquippedBestFarmTool
		end
	end

	Array.State.AutoFarmFallbackTool = Array.Function.GetAutoFarmTool()

	if Array.State.AutoFarmFallbackTool then
		return Array.Function.EquipFarmToolWithRetry(Array.State.AutoFarmFallbackTool, Array.State.Humanoid, Array.State.Character) or Array.State.AutoFarmFallbackTool
	end

	return nil
end

function Array.Function.UpdateToolMouse(Tool, TargetRoot)
	Array.State.UpdateMouseRemote = Tool and Tool:FindFirstChild("UpdateMousePosition", true)

	if Array.State.UpdateMouseRemote and Array.State.UpdateMouseRemote:IsA("RemoteEvent") and TargetRoot then
		pcall(function()
			Array.State.UpdateMouseRemote:FireServer(TargetRoot.Position)
		end)

		return true
	end

	return false
end

function Array.Function.GetKeyCode(KeyName)
	Array.State.KeyName = tostring(KeyName or "")

	if Array.State.KeyName == "" then
		return nil
	end

	Array.State.KeyCodeSuccess, Array.State.KeyCodeResult = pcall(function()
		return Enum.KeyCode[Array.State.KeyName]
	end)

	return Array.State.KeyCodeSuccess and Array.State.KeyCodeResult or nil
end

function Array.Function.AimMouseAtTarget(Target)
	if not Array.Config.AutoFarm.BlackLegSkillAimMouse then
		return false
	end

	Array.State.SkillAimRoot = Array.Function.GetMobRoot(Target)
	Array.State.SkillAimCamera = workspace.CurrentCamera

	if not Array.State.SkillAimRoot or not Array.State.SkillAimCamera then
		Array.Function.SetAutoFarmStatus("LastBlackLegSkillAim", "missing_target")

		return false
	end

	Array.State.SkillAimWorldPosition = Array.State.SkillAimRoot.Position + Array.Config.AutoFarm.BlackLegSkillAimOffset
	Array.State.SkillAimViewportPosition, Array.State.SkillAimOnScreen = Array.State.SkillAimCamera:WorldToViewportPoint(Array.State.SkillAimWorldPosition)
	Array.Function.SetAutoFarmStatus("LastBlackLegSkillAimPoint", tostring(Array.State.SkillAimWorldPosition))
	Array.Function.SetAutoFarmStatus("LastBlackLegSkillAimScreen", tostring(Vector2.new(Array.State.SkillAimViewportPosition.X, Array.State.SkillAimViewportPosition.Y)))

	if Array.State.SkillAimViewportPosition.Z <= 0 then
		Array.Function.SetAutoFarmStatus("LastBlackLegSkillAim", "behind_camera")

		return false
	end

	Array.State.SkillAimSuccess = false

	if type(mousemoveabs) == "function" then
		Array.State.SkillAimSuccess = pcall(function()
			mousemoveabs(Array.State.SkillAimViewportPosition.X, Array.State.SkillAimViewportPosition.Y)
		end) or Array.State.SkillAimSuccess
	end

	if Array.Service.VirtualInputManager then
		Array.State.SkillAimSuccess = pcall(function()
			Array.Service.VirtualInputManager:SendMouseMoveEvent(
				Array.State.SkillAimViewportPosition.X,
				Array.State.SkillAimViewportPosition.Y,
				game
			)
		end) or Array.State.SkillAimSuccess
	end

	Array.Function.SetAutoFarmStatus("LastBlackLegSkillAim", Array.State.SkillAimSuccess and "aimed" or "failed")

	if Array.State.SkillAimSuccess and Array.Config.AutoFarm.BlackLegSkillAimDelay > 0 then
		task.wait(Array.Config.AutoFarm.BlackLegSkillAimDelay)
	end

	return Array.State.SkillAimSuccess
end

function Array.Function.PressKey(KeyName, HoldTime)
	Array.State.PressKeyCode = Array.Function.GetKeyCode(KeyName)

	if not Array.State.PressKeyCode then
		Array.Function.SetAutoFarmStatus("LastKeyPressResult", "invalid_key")

		return false
	end

	Array.State.PressKeyHoldTime = math.max(tonumber(HoldTime) or 0.1, 0.03)

	if Array.Service.VirtualInputManager then
		Array.State.PressKeySuccess = pcall(function()
			Array.Service.VirtualInputManager:SendKeyEvent(true, Array.State.PressKeyCode, false, game)
			task.wait(Array.State.PressKeyHoldTime)
			Array.Service.VirtualInputManager:SendKeyEvent(false, Array.State.PressKeyCode, false, game)
		end)
	elseif type(keypress) == "function" and type(keyrelease) == "function" then
		Array.State.PressKeySuccess = pcall(function()
			keypress(Array.State.PressKeyCode.Value)
			task.wait(Array.State.PressKeyHoldTime)
			keyrelease(Array.State.PressKeyCode.Value)
		end)
	else
		Array.Function.SetAutoFarmStatus("LastKeyPressResult", "missing_input_api")

		return false
	end

	Array.Function.SetAutoFarmStatus("LastKeyPressResult", Array.State.PressKeySuccess and "pressed" or "failed")

	return Array.State.PressKeySuccess
end

function Array.Function.GetBlackLegSkillTargetPosition(Target)
	Array.State.BlackLegSkillTargetRoot = Array.Function.GetMobRoot(Target)

	return Array.State.BlackLegSkillTargetRoot
		and (Array.State.BlackLegSkillTargetRoot.Position + Array.Config.AutoFarm.BlackLegSkillAimOffset)
		or nil
end

function Array.Function.FireBlackLegSkillRemote(Tool, SkillData, Target)
	if not Tool or not Tool:IsA("Tool") or type(SkillData) ~= "table" then
		return false
	end

	Array.State.BlackLegSkillEvents = Tool:FindFirstChild("Events")
	Array.State.BlackLegSkillRemote = Array.State.BlackLegSkillEvents and Array.State.BlackLegSkillEvents:FindFirstChild(SkillData.AttackName)

	if not Array.State.BlackLegSkillRemote or not Array.State.BlackLegSkillRemote:IsA("RemoteEvent") then
		Array.Function.SetAutoFarmStatus("LastBlackLegSkillCast", "missing_remote")

		return false
	end

	Array.State.BlackLegSkillTargetPosition = Array.Function.GetBlackLegSkillTargetPosition(Target)
	Array.Function.SetAutoFarmStatus("LastBlackLegSkillCast", "remote")
	Array.Function.SetAutoFarmStatus("LastBlackLegSkillRemote", Array.State.BlackLegSkillRemote.Name)
	Array.Function.SetAutoFarmStatus("LastBlackLegSkillAim", SkillData.UseMousePosition and "remote_position" or "remote_no_position")
	Array.Function.SetAutoFarmStatus("LastBlackLegSkillAimPoint", Array.State.BlackLegSkillTargetPosition and tostring(Array.State.BlackLegSkillTargetPosition) or nil)

	Array.State.BlackLegSkillRemoteSuccess = pcall(function()
		if SkillData.UseMousePosition then
			Array.State.BlackLegSkillRemote:FireServer(Array.State.BlackLegSkillTargetPosition)
		else
			Array.State.BlackLegSkillRemote:FireServer()
		end
	end)

	Array.Function.SetAutoFarmStatus("LastKeyPressResult", Array.State.BlackLegSkillRemoteSuccess and "remote_fired" or "remote_failed")

	return Array.State.BlackLegSkillRemoteSuccess
end

function Array.Function.UseBlackLegSkillKeys(Tool, Target)
	if not Array.Config.AutoFarm.BlackLegAutoSkills
		or not Tool
		or not Tool:IsA("Tool")
		or not Array.Function.IsBlackLegFarmTool(Tool.Name)
		or not Array.Function.IsAliveMob(Target)
		or Array.State.CurrentTraveling
	then
		return false
	end

	if os.clock() - (Array.State.LastBlackLegSkillAt or 0) < Array.Config.AutoFarm.BlackLegSkillGlobalDelay then
		return false
	end

	Array.State.BlackLegSkillCooldowns = type(Array.State.BlackLegSkillCooldowns) == "table" and Array.State.BlackLegSkillCooldowns or {}

	for _, SkillData in next, Array.Config.AutoFarm.BlackLegSkillKeys do
		if type(SkillData) == "table" and SkillData.Key ~= "" then
			Array.State.BlackLegSkillLastUsed = Array.State.BlackLegSkillCooldowns[SkillData.Key] or 0

			if os.clock() - Array.State.BlackLegSkillLastUsed >= SkillData.Cooldown then
				Array.State.BlackLegSkillCooldowns[SkillData.Key] = os.clock()
				Array.State.LastBlackLegSkillAt = os.clock()
				Array.Function.SetAutoFarmStatus("LastBlackLegSkill", SkillData.Key)
				Array.Function.SetAutoFarmStatus("LastBlackLegSkillCooldown", SkillData.Cooldown)

				if Array.Config.AutoFarm.BlackLegSkillInputMode == "Remote"
					and Array.Function.FireBlackLegSkillRemote(Tool, SkillData, Target)
				then
					return true
				end

				if Array.Config.AutoFarm.BlackLegSkillAimMouse then
					Array.Function.AimMouseAtTarget(Target)
				end

				return Array.Function.PressKey(SkillData.Key, Array.Config.AutoFarm.BlackLegSkillHoldTime)
			end
		end
	end

	return false
end

function Array.Function.AttackTarget(Target)
	Array.State.LastAttackAt = Array.State.LastAttackAt or 0

	if os.clock() - Array.State.LastAttackAt < Array.Config.AutoFarm.AttackDelay then
		return false
	end

	Array.State.AttackTargetRoot = Array.Function.GetMobRoot(Target)

	if not Array.State.AttackTargetRoot then
		return false
	end

	Array.State.AttackTool = Array.Function.GetPreferredFarmTool()

	if not Array.State.AttackTool then
		Array.Function.SetAutoFarmStatus("LastAttackResult", "missing_tool")

		return false
	end

	Array.State.LastAttackAt = os.clock()
	Array.Function.UseBusoHaki()

	for AttackIndex = 1, Array.Config.AutoFarm.AttackBurst do
		Array.Function.UpdateToolMouse(Array.State.AttackTool, Array.State.AttackTargetRoot)

		pcall(function()
			Array.State.AttackTool:Activate()
		end)

		if Array.Config.AutoFarm.FireActivatedSignal and type(firesignal) == "function" then
			pcall(function()
				firesignal(Array.State.AttackTool.Activated)
			end)
		end

		if AttackIndex < Array.Config.AutoFarm.AttackBurst then
			task.wait(Array.Config.AutoFarm.AttackBurstDelay)
		end
	end

	Array.Function.UseBlackLegSkillKeys(Array.State.AttackTool, Target)
	Array.Function.SetAutoFarmStatus("LastAttackResult", "activated")

	return true
end

function Array.Function.KeepHoverOnTarget(Target)
	if Array.State.CurrentTraveling or not Array.Function.IsAliveMob(Target) then
		return false
	end

	Array.State.HoverTargetRoot = Array.Function.GetMobRoot(Target)
	Array.State.HoverTargetCFrame = Array.Function.GetHoverCFrame(Array.State.HoverTargetRoot)

	if not Array.State.HoverTargetCFrame then
		return false
	end

	return Array.Function.SetCharacterCFrame(Array.State.HoverTargetCFrame)
end

function Array.Function.AutoFarmLevel()
	Array.State.AutoFarmLevelKey = "__HSKaitunWorld1AutoFarmLevelRunning"

	if _G[Array.State.AutoFarmLevelKey] == Array.State.RunId or not Array.Config.AutoFarm.Enabled then
		return
	end

	_G[Array.State.AutoFarmLevelKey] = Array.State.RunId
	task.wait(Array.Config.AutoFarm.StartDelay)
	Array.Function.RefreshNpcContainers(true)
	Array.Function.GetWorld1QuestCache(true)
	Array.Function.WaitPlayerLevelReady(Array.Config.AutoFarm.LevelReadyTimeout)
	Array.Function.SetAutoFarmStatus("Loaded", true)
	Array.Function.SetStatus("AutoFarmLevel", "started")

	while Array.Function.IsRunning() and Array.Config.AutoFarm.Enabled and game.PlaceId == Array.Config.PlaceId.World1 do
		Array.State.AutoFarmLoopSuccess, Array.State.AutoFarmLoopError = pcall(function()
			Array.Function.GetCharacter()

			if not Array.State.Humanoid or not Array.State.RootPart or Array.State.Humanoid.Health <= 0 then
				Array.State.CurrentTarget = nil
				Array.Function.SetAutoFarmStatus("State", "dead_wait")
				task.wait(3)

				return
			end

			if Array.State.DoingSea2Quest then
				Array.State.CurrentTarget = nil
				Array.State.CurrentTraveling = false
				Array.Function.SetAutoFarmStatus("State", "sea2_quest")
				task.wait(0.5)

				return
			end

			if Array.State.BuyingBlackLeg then
				Array.State.CurrentTarget = nil
				Array.State.CurrentTraveling = false
				Array.Function.SetAutoFarmStatus("State", "black_leg_buy_wait")
				task.wait(1)

				return
			end

			Array.State.AutoFarmLevelReady, Array.State.AutoFarmReadyLevel = Array.Function.IsPlayerLevelReady()

			if not Array.State.AutoFarmLevelReady then
				Array.State.CurrentTarget = nil
				Array.Function.SetAutoFarmStatus("State", "waiting_level")
				Array.Function.WaitPlayerLevelReady(1)

				return
			end

			Array.State.AutoFarmPlayerLevel = Array.State.AutoFarmReadyLevel or Array.Function.GetPlayerLevel()
			Array.State.AutoFarmQuestState = Array.Function.GetQuestState()
			Array.State.AutoFarmObjective = Array.State.AutoFarmQuestState.Objective
			Array.Function.SetAutoFarmStatus("Level", Array.State.AutoFarmPlayerLevel)
			Array.Function.SetAutoFarmStatus("ActiveObjective", Array.State.AutoFarmObjective)
			Array.Function.SetAutoFarmStatus("ActiveProgress", Array.State.AutoFarmQuestState.Progress)
			Array.Function.SetAutoFarmStatus("ActiveTarget", Array.State.AutoFarmQuestState.Target)
			Array.State.QuestScanMovedThisLoop = false
			Array.State.AutoFarmQuestCompleted = Array.State.AutoFarmObjective ~= ""
				and Array.State.AutoFarmQuestState.Target > 0
				and Array.State.AutoFarmQuestState.Progress >= Array.State.AutoFarmQuestState.Target

			if Array.State.AutoFarmQuestCompleted then
				Array.State.TurnInQuest = Array.State.CurrentQuest or Array.Function.FindQuestByObjective(Array.State.AutoFarmObjective)

				if Array.State.TurnInQuest then
					Array.Function.MoveNearInstance(Array.State.TurnInQuest.Giver)
					task.wait(0.5)
				end

				Array.State.CurrentTarget = nil
				Array.State.CurrentQuest = nil
				Array.State.PreviousObjective = ""
				Array.State.AutoFarmObjective = ""

				for _ = 1, 30 do
					if not Array.Function.HasActiveQuest() then
						break
					end

					task.wait(0.2)
				end
			end

			if Array.State.AutoFarmObjective ~= Array.State.PreviousObjective then
				Array.State.CurrentTarget = nil
				Array.State.LastTargetSearch = 0
				Array.State.LastQuestObjectiveStart = os.clock()
				Array.State.LastQuestAttackObjective = ""
				Array.Function.RefreshNpcContainers(true)
				Array.State.PreviousObjective = Array.State.AutoFarmObjective
			end

			if Array.State.AutoFarmObjective == "" then
				Array.State.AutoFarmQuestReason = nil
				Array.State.CurrentQuest, Array.State.AutoFarmQuestReason = Array.Function.SelectFarmQuest(Array.State.AutoFarmPlayerLevel)
				Array.Function.SetAutoFarmStatus("SelectedQuest", Array.State.CurrentQuest and (Array.State.CurrentQuest.LevelName .. " " .. Array.State.CurrentQuest.MobName) or nil)
				Array.Function.SetAutoFarmStatus("SelectedQuestReason", Array.State.AutoFarmQuestReason or "normal")

				if Array.State.CurrentQuest and os.clock() - (Array.State.LastQuestAttempt or 0) >= Array.Config.AutoFarm.QuestRetryDelay then
					Array.State.LastQuestAttempt = os.clock()
					Array.State.AcceptedQuest, Array.State.AcceptQuestResult = Array.Function.AcceptQuest(Array.State.CurrentQuest)
					Array.Function.SetAutoFarmStatus("LastAcceptAccepted", Array.State.AcceptedQuest)
					Array.Function.SetAutoFarmStatus("LastAcceptResult", tostring(Array.State.AcceptQuestResult))

					if Array.State.AcceptedQuest then
						task.wait(0.35)
						Array.State.AutoFarmQuestState = Array.Function.GetQuestState()
						Array.State.AutoFarmObjective = Array.State.AutoFarmQuestState.Objective ~= "" and Array.State.AutoFarmQuestState.Objective or Array.State.CurrentQuest.MobName
						Array.State.PreviousObjective = Array.State.AutoFarmObjective
						Array.State.LastQuestObjectiveStart = os.clock()
						Array.State.LastQuestAttackObjective = ""
						Array.State.BossMissingSince = 0
						Array.State.CurrentTarget = Array.Function.FindMob(Array.State.AutoFarmObjective)
						Array.State.LastTargetSearch = os.clock()

						if not Array.State.CurrentTarget then
							Array.State.CurrentTarget, Array.State.ProbeMoved = Array.Function.ProbeQuestIslandForMob(Array.State.CurrentQuest, Array.State.AutoFarmObjective, "after_accept")
							Array.State.QuestScanMovedThisLoop = Array.State.QuestScanMovedThisLoop or Array.State.ProbeMoved
							Array.State.LastTargetSearch = os.clock()
						end
					else
						Array.Function.MoveNearInstance(Array.State.CurrentQuest.Giver)
						Array.State.AutoFarmObjective = Array.State.CurrentQuest.MobName
					end
				elseif Array.State.CurrentQuest then
					Array.State.AutoFarmObjective = Array.State.CurrentQuest.MobName
				else
					Array.State.CurrentTarget = nil
					Array.Function.SetAutoFarmStatus("State", "no_quest_for_level")
					task.wait(2)
				end
			else
				Array.State.CurrentQuest = Array.Function.FindQuestByObjective(Array.State.AutoFarmObjective) or Array.State.CurrentQuest
				Array.State.ExpectedFarmQuest, Array.State.ExpectedFarmQuestReason = Array.Function.SelectFarmQuest(Array.State.AutoFarmPlayerLevel)

				if Array.State.CurrentQuest
					and Array.State.ExpectedFarmQuest
					and not Array.Function.IsSameQuest(Array.State.CurrentQuest, Array.State.ExpectedFarmQuest)
					and Array.Function.ShouldSwitchFarmQuest(
						Array.State.CurrentQuest,
						Array.State.ExpectedFarmQuest,
						Array.State.ExpectedFarmQuestReason
					)
				then
					Array.Function.SetAutoFarmStatus("State", "outdated_quest")
					Array.Function.SetAutoFarmStatus(
						"OutdatedQuest",
						Array.State.CurrentQuest.LevelName .. " " .. Array.State.CurrentQuest.MobName
					)
					Array.Function.SetAutoFarmStatus(
						"ExpectedQuest",
						Array.State.ExpectedFarmQuest.LevelName .. " " .. Array.State.ExpectedFarmQuest.MobName
					)
					Array.State.OutdatedQuestCanceled, Array.State.OutdatedQuestCancelResult = Array.Function.CancelActiveQuest(
						"outdated level quest: " .. Array.State.CurrentQuest.MobName
					)
					Array.Function.SetAutoFarmStatus("OutdatedQuestCancelResult", tostring(Array.State.OutdatedQuestCancelResult))

					if Array.State.OutdatedQuestCanceled then
						Array.State.CurrentQuest = nil
						Array.State.CurrentTarget = nil
						Array.State.PreviousObjective = ""
						Array.State.AutoFarmObjective = ""

						return
					end
				end

				Array.State.SpawnedBossQuest = Array.Function.GetSpawnedBossForFallback(Array.State.AutoFarmPlayerLevel, Array.State.CurrentQuest)

				if Array.State.SpawnedBossQuest then
					Array.State.CanceledForBoss = Array.Function.CancelActiveQuest("boss spawned: " .. Array.State.SpawnedBossQuest.MobName)

					if Array.State.CanceledForBoss then
						Array.State.CurrentQuest = nil
						Array.State.CurrentTarget = nil
						Array.State.PreviousObjective = ""
						Array.State.AutoFarmQuestState = Array.Function.GetQuestState()
						Array.State.AutoFarmObjective = Array.State.AutoFarmQuestState.Objective
					end
				end

				Array.State.FallbackObjective = Array.Function.GetActiveBossFallbackObjective(Array.State.CurrentQuest)

				if Array.State.FallbackObjective then
					Array.State.AutoFarmObjective = Array.State.FallbackObjective
					Array.Function.SetAutoFarmStatus("SelectedQuestReason", "active_boss_wait_fallback")

					if Array.State.AutoFarmObjective ~= Array.State.PreviousObjective then
						Array.State.CurrentTarget = nil
						Array.State.LastTargetSearch = 0
						Array.State.LastQuestObjectiveStart = os.clock()
						Array.State.LastQuestAttackObjective = ""
						Array.Function.RefreshNpcContainers(true)
						Array.State.PreviousObjective = Array.State.AutoFarmObjective
					end
				end
			end

			if Array.State.AutoFarmObjective ~= "" then
				if not Array.State.CurrentTarget
					or not Array.Function.IsAliveMob(Array.State.CurrentTarget)
					or not Array.Function.MatchesMob(Array.State.CurrentTarget, Array.State.AutoFarmObjective)
					or os.clock() - (Array.State.LastTargetSearch or 0) >= Array.Config.AutoFarm.TargetRefreshDelay
				then
					Array.State.CurrentTarget = Array.Function.FindMob(Array.State.AutoFarmObjective)
					Array.State.LastTargetSearch = os.clock()
					Array.Function.SetAutoFarmStatus("LastTargetSearch", Array.State.AutoFarmObjective)
					Array.Function.SetAutoFarmStatus("LastTargetFound", Array.State.CurrentTarget and Array.State.CurrentTarget.Name or nil)
					Array.Function.SetAutoFarmStatus("LastTargetPath", Array.State.CurrentTarget and Array.State.CurrentTarget:GetFullName() or nil)
				end

				Array.State.QuestForProbe = Array.State.ActiveBossFallbackQuest or Array.State.CurrentQuest or Array.Function.SelectFarmQuest(Array.State.AutoFarmPlayerLevel)
				Array.State.DidQuestProbe = Array.State.QuestScanMovedThisLoop

				if not Array.State.CurrentTarget and Array.State.QuestForProbe then
					Array.State.CurrentTarget, Array.State.ProbeMoved = Array.Function.ProbeQuestIslandForMob(Array.State.QuestForProbe, Array.State.AutoFarmObjective, "target_missing")
					Array.State.DidQuestProbe = Array.State.DidQuestProbe or Array.State.ProbeMoved
					Array.State.LastTargetSearch = os.clock()
					Array.Function.SetAutoFarmStatus("LastTargetFound", Array.State.CurrentTarget and Array.State.CurrentTarget.Name or nil)
					Array.Function.SetAutoFarmStatus("LastTargetPath", Array.State.CurrentTarget and Array.State.CurrentTarget:GetFullName() or nil)
				end

				if Array.State.CurrentTarget and Array.Function.IsAliveMob(Array.State.CurrentTarget) then
					Array.Function.SetAutoFarmStatus("State", "farming")
					Array.State.TargetRoot = Array.Function.GetMobRoot(Array.State.CurrentTarget)
					Array.State.TargetCFrame = Array.Function.GetHoverCFrame(Array.State.TargetRoot)

					if Array.State.TargetRoot and Array.State.TargetCFrame then
						Array.State.TargetDistance = (Array.State.RootPart.Position - Array.State.TargetRoot.Position).Magnitude

						if Array.State.TargetDistance > Array.Config.AutoFarm.DirectLockDistance then
							Array.Function.TravelToCFrame(Array.State.TargetCFrame)
						else
							Array.Function.SetCharacterCFrame(Array.State.TargetCFrame)
						end

						Array.Function.KeepHoverOnTarget(Array.State.CurrentTarget)

						if Array.Function.AttackTarget(Array.State.CurrentTarget) then
							Array.State.LastQuestAttackObjective = Array.State.AutoFarmObjective
						end
					elseif Array.State.QuestForProbe and os.clock() - (Array.State.LastQuestObjectiveStart or 0) >= Array.Config.AutoFarm.MobSpawnProbeIdleDelay then
						Array.State.CurrentTarget = select(1, Array.Function.ProbeQuestIslandForMob(Array.State.QuestForProbe, Array.State.AutoFarmObjective, "target_no_root"))
						Array.State.LastTargetSearch = os.clock()
					end
				else
					Array.Function.SetAutoFarmStatus("State", "target_missing")
					Array.Function.SetAutoFarmStatus("LastMissingTarget", Array.State.AutoFarmObjective)

					if Array.State.CurrentQuest and Array.Function.IsBossQuest(Array.State.CurrentQuest) then
						if not Array.State.BossMissingSince or Array.State.BossMissingSince == 0 then
							Array.State.BossMissingSince = os.clock()
						end

						Array.State.MissingBossFallbackQuest = Array.Function.GetFallbackQuestForBoss(Array.State.CurrentQuest)

						if Array.State.MissingBossFallbackQuest
							and os.clock() - Array.State.BossMissingSince >= Array.Config.AutoFarm.BossMissingCancelDelay
						then
							Array.State.CanceledMissingBoss = Array.Function.CancelActiveQuest("boss missing: " .. Array.State.CurrentQuest.MobName)

							if Array.State.CanceledMissingBoss then
								Array.State.CurrentQuest = nil
								Array.State.CurrentTarget = nil
								Array.State.PreviousObjective = ""
								Array.State.BossMissingSince = 0
								Array.State.AutoFarmObjective = ""
							end
						end
					else
						Array.State.BossMissingSince = 0
						Array.State.ActiveBossFallbackQuest = nil
					end

					if Array.State.QuestForProbe then
						if not Array.State.CurrentTarget then
							Array.State.CurrentTarget, Array.State.ProbeMoved = Array.Function.ProbeQuestIslandForMob(Array.State.QuestForProbe, Array.State.AutoFarmObjective, "missing_loop")
							Array.State.DidQuestProbe = Array.State.DidQuestProbe or Array.State.ProbeMoved
							Array.State.LastTargetSearch = os.clock()
						end

						Array.State.MovedToTargetArea = Array.State.CurrentTarget ~= nil
							or Array.State.DidQuestProbe
							or Array.Function.MoveNearQuestTargetArea(Array.State.QuestForProbe, Array.State.AutoFarmObjective)
						Array.Function.SetAutoFarmStatus("MovedToTargetArea", Array.State.MovedToTargetArea)

						if not Array.State.MovedToTargetArea then
							Array.Function.MoveNearInstance(Array.State.QuestForProbe.Giver)
						end
					end

					task.wait(0.5)
				end

				if Array.State.QuestForProbe
					and Array.State.LastQuestAttackObjective ~= Array.State.AutoFarmObjective
					and os.clock() - (Array.State.LastQuestObjectiveStart or 0) >= Array.Config.AutoFarm.MobSpawnProbeIdleDelay
				then
					Array.State.CurrentTarget = select(1, Array.Function.ProbeQuestIslandForMob(Array.State.QuestForProbe, Array.State.AutoFarmObjective, "quest_idle_no_attack")) or Array.State.CurrentTarget
					Array.State.LastTargetSearch = os.clock()
				end
			end
		end)

		if not Array.State.AutoFarmLoopSuccess then
			Array.State.LastAutoFarmError = tostring(Array.State.AutoFarmLoopError)
			Array.Function.SetAutoFarmStatus("State", "error")
			Array.Function.SetStatus("AutoFarmError", Array.State.LastAutoFarmError)
			task.wait(1)
		end

		task.wait(Array.Config.AutoFarm.LoopDelay)
	end

	Array.State.CurrentTarget = nil
	Array.State.CurrentTraveling = false
	Array.State.AutoFarmLoopsStarted = false
	Array.State.World1AutoFarmStarted = false
	Array.Function.StopFarmHover()
	Array.Function.SetStatus("AutoFarmLevel", "stopped")

	if _G[Array.State.AutoFarmLevelKey] == Array.State.RunId then
		_G[Array.State.AutoFarmLevelKey] = nil
	end
end

function Array.Function.KeepAutoFarmHoverRunning()
	Array.State.AutoFarmHoverKey = "__HSKaitunWorld1AutoFarmHoverRunning"

	if _G[Array.State.AutoFarmHoverKey] == Array.State.RunId or not Array.Config.AutoFarm.Enabled then
		return
	end

	_G[Array.State.AutoFarmHoverKey] = Array.State.RunId

	if Array.State.AutoFarmHoverConnection then
		pcall(function()
			Array.State.AutoFarmHoverConnection:Disconnect()
		end)
	end

	Array.State.AutoFarmHoverConnection = Array.Service.RunService.Heartbeat:Connect(function()
		if not Array.Function.IsRunning() or not Array.Config.AutoFarm.Enabled or game.PlaceId ~= Array.Config.PlaceId.World1 then
			return
		end

		if Array.State.CurrentTraveling then
			return
		end

		if not Array.State.CurrentTarget or not Array.Function.IsAliveMob(Array.State.CurrentTarget) then
			return
		end

		Array.State.HeartbeatTargetRoot = Array.Function.GetMobRoot(Array.State.CurrentTarget)
		Array.State.HeartbeatHoverCFrame = Array.Function.GetHoverCFrame(Array.State.HeartbeatTargetRoot)

		if Array.State.HeartbeatHoverCFrame then
			Array.Function.SetCharacterCFrameNoYield(Array.State.HeartbeatHoverCFrame)
		end
	end)

	while Array.Function.IsRunning() and Array.Config.AutoFarm.Enabled and game.PlaceId == Array.Config.PlaceId.World1 do
		task.wait(1)
	end

	if Array.State.AutoFarmHoverConnection then
		pcall(function()
			Array.State.AutoFarmHoverConnection:Disconnect()
		end)

		Array.State.AutoFarmHoverConnection = nil
	end

	if _G[Array.State.AutoFarmHoverKey] == Array.State.RunId then
		_G[Array.State.AutoFarmHoverKey] = nil
	end
end

function Array.Function.StartAutoFarmLoops()
	if not Array.Config.AutoFarm.Enabled then
		return false
	end

	if Array.State.AutoFarmLoopsStarted then
		return true
	end

	Array.State.AutoFarmLoopsStarted = true
	Array.State.World1AutoFarmStarted = true
	task.spawn(Array.Function.KeepAutoFarmHoverRunning)
	task.spawn(Array.Function.AutoFarmLevel)

	return true
end

function Array.Function.StartWorld1AutoFarm()
	return Array.Function.StartAutoFarmLoops()
end

function Array.Function.IsVisible(Button, PlayerGui)
	local Current = Button

	while Current and Current ~= PlayerGui do
		if Current:IsA("GuiObject") then
			if not Current.Visible or Current.AbsoluteSize.X <= 0 or Current.AbsoluteSize.Y <= 0 then
				return false
			end
		elseif Current:IsA("ScreenGui") and not Current.Enabled then
			return false
		end

		Current = Current.Parent
	end

	return true
end

function Array.Function.InsertGuiText(TextArray, InstanceData)
	local Success, Text = pcall(function()
		return InstanceData.Text
	end)

	if Success and Text and Text ~= "" then
		table.insert(TextArray, tostring(Text))
	end
end

function Array.Function.AddChildText(TextArray, Root, Depth)
	if Depth > 3 then
		return
	end

	Array.Function.InsertGuiText(TextArray, Root)

	for _, Child in next, Root:GetChildren() do
		Array.Function.AddChildText(TextArray, Child, Depth + 1)
	end
end

function Array.Function.GetButtonContext(Button, PlayerGui)
	local TextArray = { Button.Name }
	local Current = Button.Parent

	for _ = 1, 5 do
		if not Current or Current == PlayerGui then
			break
		end

		table.insert(TextArray, Current.Name)
		Current = Current.Parent
	end

	Array.Function.AddChildText(TextArray, Button, 0)

	return string.lower(table.concat(TextArray, " "))
end

function Array.Function.GetButtonText(Button)
	local Success, Text = pcall(function()
		return Button.Text
	end)

	if Success and Text then
		return string.lower(tostring(Text))
	end

	return ""
end

function Array.Function.HasPlayBlockedWord(Context)
	for _, Word in next, Array.Config.PlayBlockWords do
		if string.find(Context, string.lower(tostring(Word)), 1, true) then
			return true
		end
	end

	return false
end

function Array.Function.GetPlayScore(Button, PlayerGui)
	if not Array.Function.IsVisible(Button, PlayerGui) then
		return 0
	end

	local Context = Array.Function.GetButtonContext(Button, PlayerGui)

	if Array.Function.HasPlayBlockedWord(Context) then
		return 0
	end

	local Name = string.lower(Button.Name)
	local Text = Array.Function.GetButtonText(Button)

	if Name == "play" or Text == "play" then
		return 100
	end

	if string.find(Name, "playbutton", 1, true)
		or string.find(Name, "play_button", 1, true)
		or string.find(Context, "play button", 1, true)
	then
		return 90
	end

	if (string.find(Context, "main menu", 1, true) or string.find(Context, "mainmenu", 1, true))
		and string.find(Context, "play", 1, true)
	then
		return 75
	end

	if string.match(Context, "%f[%a]play%f[%A]") then
		return 60
	end

	return 0
end

function Array.Function.WalkGui(Root, Callback)
	for _, Child in next, Root:GetChildren() do
		Callback(Child)
		Array.Function.WalkGui(Child, Callback)
	end
end

function Array.Function.FindPlayButton(PlayerGui)
	Array.State.BestPlayButton = nil
	Array.State.BestPlayScore = 0

	Array.Function.WalkGui(PlayerGui, function(InstanceData)
		if InstanceData:IsA("TextButton") or InstanceData:IsA("ImageButton") then
			local Score = Array.Function.GetPlayScore(InstanceData, PlayerGui)

			if Score > Array.State.BestPlayScore then
				Array.State.BestPlayButton = InstanceData
				Array.State.BestPlayScore = Score
			end
		end
	end)

	return Array.State.BestPlayButton
end

function Array.Function.ClickButton(Button)
	local Clicked = false

	if type(firesignal) == "function" then
		for _, SignalName in next, Array.Config.PlaySignals do
			pcall(function()
				firesignal(Button[SignalName])
				Clicked = true
			end)
		end
	end

	if type(getconnections) == "function" then
		for _, SignalName in next, Array.Config.PlaySignals do
			pcall(function()
				for _, Connection in next, getconnections(Button[SignalName]) do
					pcall(function()
						Connection:Fire()
					end)

					Clicked = true
				end
			end)
		end
	end

	pcall(function()
		Button:Activate()
		Clicked = true
	end)

	pcall(function()
		if not Array.Service.VirtualInputManager then
			return
		end

		local Position = Button.AbsolutePosition
		local Size = Button.AbsoluteSize
		local X = Position.X + (Size.X / 2)
		local Y = Position.Y + (Size.Y / 2)

		Array.Service.VirtualInputManager:SendMouseMoveEvent(X, Y, game)
		Array.Service.VirtualInputManager:SendMouseButtonEvent(X, Y, 0, true, game, 0)
		task.wait(0.05)
		Array.Service.VirtualInputManager:SendMouseButtonEvent(X, Y, 0, false, game, 0)
		Clicked = true
	end)

	return Clicked
end

function Array.Function.GetGuiObjectText(InstanceData)
	local Success, Text = pcall(function()
		return InstanceData.Text
	end)

	return Success and type(Text) == "string" and Text or ""
end

function Array.Function.GetGuiObjectOwnVisible(InstanceData)
	local Success, Visible = pcall(function()
		return InstanceData.Visible
	end)

	return Success and Visible == true
end

function Array.Function.GetPlaytimeRewardRemote()
	Array.State.PlaytimeRemoteFunctions = Array.Service.ReplicatedStorage and Array.Service.ReplicatedStorage:FindFirstChild("RemoteFunctions")
	Array.State.PlaytimeRewardRemote = Array.State.PlaytimeRemoteFunctions and Array.State.PlaytimeRemoteFunctions:FindFirstChild("RequestPlaytimeReward")

	if Array.State.PlaytimeRewardRemote and Array.State.PlaytimeRewardRemote:IsA("RemoteFunction") then
		return Array.State.PlaytimeRewardRemote
	end

	Array.Function.SetStatus("PlaytimeRewardState", "missing_remote")

	return nil
end

function Array.Function.GetClaimedPlaytimeRewards()
	Array.State.PlayerData = Array.Function.GetPlayerData()
	Array.State.PlaytimeRewardsGiven = Array.State.PlayerData and Array.State.PlayerData:FindFirstChild("DailyRewardsGiven")

	if not Array.State.PlaytimeRewardsGiven or not Array.State.PlaytimeRewardsGiven:IsA("StringValue") then
		return {}
	end

	Array.State.PlaytimeClaimedDecodeSuccess, Array.State.PlaytimeClaimedRewards = pcall(function()
		return Array.Service.HttpService:JSONDecode(Array.State.PlaytimeRewardsGiven.Value)
	end)

	if Array.State.PlaytimeClaimedDecodeSuccess and type(Array.State.PlaytimeClaimedRewards) == "table" then
		Array.Function.SetStatus("PlaytimeRewardClaimedDecode", "ok")

		return Array.State.PlaytimeClaimedRewards
	end

	Array.Function.SetStatus("PlaytimeRewardClaimedDecode", "failed")

	return {}
end

function Array.Function.GetPlaytimeRewardData()
	Array.State.PlaytimeRewardRemote = Array.Function.GetPlaytimeRewardRemote()

	if not Array.State.PlaytimeRewardRemote then
		return nil
	end

	Array.State.PlaytimeRewardDataSuccess, Array.State.PlaytimeRewardData = pcall(function()
		return Array.State.PlaytimeRewardRemote:InvokeServer("Data")
	end)

	if not Array.State.PlaytimeRewardDataSuccess then
		Array.Function.SetStatus("PlaytimeRewardState", "data_failed")
		Array.Function.SetStatus("PlaytimeRewardError", tostring(Array.State.PlaytimeRewardData))

		return nil
	end

	if type(Array.State.PlaytimeRewardData) ~= "table" or type(Array.State.PlaytimeRewardData[1]) ~= "table" then
		Array.Function.SetStatus("PlaytimeRewardState", "bad_data")

		return nil
	end

	Array.Function.SetStatus("PlaytimeRewardState", "data_ok")
	Array.Function.SetStatus("PlaytimeRewardResetTime", Array.State.PlaytimeRewardData[2])

	return Array.State.PlaytimeRewardData
end

function Array.Function.ShowPlaytimeRewardPopup(RewardName, RewardAmount, RewardType)
	Array.State.PlaytimeRewardsGui = Array.Function.GetPlaytimeRewardsGui()
	Array.State.PlaytimeClaimPopupEvent = Array.State.PlaytimeRewardsGui and Array.State.PlaytimeRewardsGui:FindFirstChild("ClaimPopupEvent")

	if Array.State.PlaytimeClaimPopupEvent and Array.State.PlaytimeClaimPopupEvent:IsA("BindableEvent") then
		pcall(function()
			Array.State.PlaytimeClaimPopupEvent:Fire(RewardName, RewardAmount, RewardType)
		end)
	end
end

function Array.Function.ClaimPlaytimeRewardIndex(Index)
	Array.State.PlaytimeRewardRemote = Array.Function.GetPlaytimeRewardRemote()

	if not Array.State.PlaytimeRewardRemote then
		return false
	end

	Array.State.PlaytimeClaimSuccess, Array.State.PlaytimeClaimAccepted, Array.State.PlaytimeRewardName, Array.State.PlaytimeRewardAmount, Array.State.PlaytimeRewardType = pcall(function()
		return Array.State.PlaytimeRewardRemote:InvokeServer("Claim", Index)
	end)

	Array.Function.SetStatus("LastPlaytimeRewardIndex", Index)

	if not Array.State.PlaytimeClaimSuccess then
		Array.Function.SetStatus("PlaytimeRewardState", "claim_failed")
		Array.Function.SetStatus("PlaytimeRewardError", tostring(Array.State.PlaytimeClaimAccepted))

		return false
	end

	if not Array.State.PlaytimeClaimAccepted then
		Array.Function.SetStatus("PlaytimeRewardState", "claim_rejected")

		return false
	end

	Array.Function.SetStatus("PlaytimeRewardState", "claimed")
	Array.Function.SetStatus("LastPlaytimeRewardName", Array.State.PlaytimeRewardName)
	Array.Function.SetStatus("LastPlaytimeRewardAmount", Array.State.PlaytimeRewardAmount)
	Array.Function.SetStatus("LastPlaytimeRewardType", Array.State.PlaytimeRewardType)
	Array.Function.ShowPlaytimeRewardPopup(Array.State.PlaytimeRewardName, Array.State.PlaytimeRewardAmount, Array.State.PlaytimeRewardType)

	return true
end

function Array.Function.ClaimReadyPlaytimeRewardsRemote()
	Array.State.PlaytimeRewardData = Array.Function.GetPlaytimeRewardData()

	if not Array.State.PlaytimeRewardData then
		return nil
	end

	Array.State.PlaytimeTimeLefts = Array.State.PlaytimeRewardData[1]
	Array.State.PlaytimeClaimedRewards = Array.Function.GetClaimedPlaytimeRewards()
	Array.State.PlaytimeRemoteReadyCount = 0
	Array.State.PlaytimeRemoteClaimedCount = 0
	Array.State.PlaytimeRewardNextTime = nil

	for Index = 1, Array.Config.PlaytimeRewardMaxIndex do
		Array.State.PlaytimeTimeLeft = tonumber(Array.State.PlaytimeTimeLefts[Index])
		Array.State.PlaytimeRewardClaimed = Array.State.PlaytimeClaimedRewards[Index] or Array.State.PlaytimeClaimedRewards[tostring(Index)]

		if Array.State.PlaytimeRewardClaimed then
			Array.State.PlaytimeRemoteClaimedCount = Array.State.PlaytimeRemoteClaimedCount + 1
		elseif Array.State.PlaytimeTimeLeft and Array.State.PlaytimeTimeLeft <= 0 then
			Array.State.PlaytimeRemoteReadyCount = Array.State.PlaytimeRemoteReadyCount + 1

			if Array.Function.ClaimPlaytimeRewardIndex(Index) then
				Array.State.PlaytimeRemoteClaimedCount = Array.State.PlaytimeRemoteClaimedCount + 1
				task.wait(Array.Config.PlaytimeRewardsClickDelay)
			end
		elseif Array.State.PlaytimeTimeLeft and (not Array.State.PlaytimeRewardNextTime or Array.State.PlaytimeTimeLeft < Array.State.PlaytimeRewardNextTime) then
			Array.State.PlaytimeRewardNextTime = Array.State.PlaytimeTimeLeft
		end
	end

	Array.Function.SetStatus("PlaytimeRewardReadyCount", Array.State.PlaytimeRemoteReadyCount)
	Array.Function.SetStatus("PlaytimeRewardClaimedCount", Array.State.PlaytimeRemoteClaimedCount)
	Array.Function.SetStatus("PlaytimeRewardNextTime", Array.State.PlaytimeRewardNextTime)

	return Array.State.PlaytimeRemoteReadyCount
end

function Array.Function.GetPlaytimeRewardsGui()
	return Array.Service.PlayerGui and Array.Service.PlayerGui:FindFirstChild("PlaytimeRewards") or nil
end

function Array.Function.FindPlaytimeGiftOpenButton()
	if not Array.Service.PlayerGui then
		return nil
	end

	Array.State.PlaytimeGiftOpenButton = nil

	local function HasGiftAncestor(InstanceData)
		Array.State.GiftAncestor = InstanceData

		while Array.State.GiftAncestor and Array.State.GiftAncestor ~= Array.Service.PlayerGui do
			if string.lower(Array.State.GiftAncestor.Name) == "gift" then
				return true
			end

			Array.State.GiftAncestor = Array.State.GiftAncestor.Parent
		end

		return false
	end

	Array.Function.WalkGui(Array.Service.PlayerGui, function(InstanceData)
		if Array.State.PlaytimeGiftOpenButton then
			return
		end

		if (InstanceData:IsA("TextButton") or InstanceData:IsA("ImageButton"))
			and Array.Function.IsVisible(InstanceData, Array.Service.PlayerGui)
			and HasGiftAncestor(InstanceData)
		then
			Array.State.PlaytimeGiftOpenButton = InstanceData
		end
	end)

	return Array.State.PlaytimeGiftOpenButton
end

function Array.Function.FindPlaytimeRewardRoot(ReadyLabel, RewardsRoot)
	Array.State.PlaytimeRewardRoot = ReadyLabel

	while Array.State.PlaytimeRewardRoot and Array.State.PlaytimeRewardRoot ~= RewardsRoot do
		if Array.State.PlaytimeRewardRoot:IsA("Frame")
			and Array.State.PlaytimeRewardRoot:FindFirstChild("button")
			and Array.State.PlaytimeRewardRoot:FindFirstChild("wrapper")
		then
			return Array.State.PlaytimeRewardRoot
		end

		Array.State.PlaytimeRewardRoot = Array.State.PlaytimeRewardRoot.Parent
	end

	return nil
end

function Array.Function.IsPlaytimeRewardClaimed(RewardRoot)
	Array.State.PlaytimeRewardCover = RewardRoot and RewardRoot:FindFirstChild("cover")

	return Array.State.PlaytimeRewardCover
		and Array.Function.IsVisible(Array.State.PlaytimeRewardCover, Array.Service.PlayerGui)
end

function Array.Function.FindReadyPlaytimeRewardButtons()
	Array.State.ReadyPlaytimeButtons = {}
	Array.State.ReadyPlaytimeButtonLookup = {}
	Array.State.PlaytimeRewardsGui = Array.Function.GetPlaytimeRewardsGui()
	Array.State.PlaytimeMainFrame = Array.State.PlaytimeRewardsGui and Array.State.PlaytimeRewardsGui:FindFirstChild("MainFrame")
	Array.State.PlaytimeRewardsFrame = Array.State.PlaytimeMainFrame and Array.State.PlaytimeMainFrame:FindFirstChild("Rewards")

	if not Array.State.PlaytimeRewardsFrame or not Array.Function.IsVisible(Array.State.PlaytimeRewardsFrame, Array.Service.PlayerGui) then
		return Array.State.ReadyPlaytimeButtons
	end

	Array.Function.WalkGui(Array.State.PlaytimeRewardsFrame, function(InstanceData)
		if not InstanceData:IsA("TextLabel") then
			return
		end

		Array.State.PlaytimeReadyText = string.lower(Array.Function.GetGuiObjectText(InstanceData))

		if not string.find(Array.State.PlaytimeReadyText, "ready", 1, true)
			or not Array.Function.IsVisible(InstanceData, Array.Service.PlayerGui)
		then
			return
		end

		Array.State.PlaytimeRewardRoot = Array.Function.FindPlaytimeRewardRoot(InstanceData, Array.State.PlaytimeRewardsFrame)

		if not Array.State.PlaytimeRewardRoot or Array.Function.IsPlaytimeRewardClaimed(Array.State.PlaytimeRewardRoot) then
			return
		end

		Array.State.PlaytimeRewardButton = Array.State.PlaytimeRewardRoot:FindFirstChild("button")

		if Array.State.PlaytimeRewardButton
			and Array.State.PlaytimeRewardButton:IsA("GuiButton")
			and Array.Function.IsVisible(Array.State.PlaytimeRewardButton, Array.Service.PlayerGui)
			and not Array.State.ReadyPlaytimeButtonLookup[Array.State.PlaytimeRewardButton]
		then
			Array.State.ReadyPlaytimeButtonLookup[Array.State.PlaytimeRewardButton] = true
			table.insert(Array.State.ReadyPlaytimeButtons, Array.State.PlaytimeRewardButton)
		end
	end)

	table.sort(Array.State.ReadyPlaytimeButtons, function(Left, Right)
		return Left.AbsolutePosition.X < Right.AbsolutePosition.X
	end)

	return Array.State.ReadyPlaytimeButtons
end

function Array.Function.FindPlaytimeClaimPopupButton()
	Array.State.PlaytimeRewardsGui = Array.Function.GetPlaytimeRewardsGui()
	Array.State.PlaytimeClaimPopup = Array.State.PlaytimeRewardsGui and Array.State.PlaytimeRewardsGui:FindFirstChild("ClaimPopup", true)
	Array.State.PlaytimeClaimButton = nil

	if not Array.State.PlaytimeClaimPopup or not Array.Function.IsVisible(Array.State.PlaytimeClaimPopup, Array.Service.PlayerGui) then
		return nil
	end

	Array.Function.WalkGui(Array.State.PlaytimeClaimPopup, function(InstanceData)
		if Array.State.PlaytimeClaimButton then
			return
		end

		if InstanceData:IsA("GuiButton") and Array.Function.IsVisible(InstanceData, Array.Service.PlayerGui) then
			Array.State.PlaytimeClaimButton = InstanceData
		end
	end)

	return Array.State.PlaytimeClaimButton
end

function Array.Function.OpenPlaytimeRewardsPanel()
	if not Array.Config.PlaytimeRewardsOpenPanel then
		return false
	end

	Array.State.ReadyPlaytimeButtons = Array.Function.FindReadyPlaytimeRewardButtons()

	if #Array.State.ReadyPlaytimeButtons > 0 then
		return true
	end

	Array.State.PlaytimeGiftOpenButton = Array.Function.FindPlaytimeGiftOpenButton()

	if not Array.State.PlaytimeGiftOpenButton then
		return false
	end

	Array.State.PlaytimeOpenClicked = Array.Function.ClickButton(Array.State.PlaytimeGiftOpenButton)
	Array.Function.SetStatus("AutoPlaytimeRewardsOpen", Array.State.PlaytimeOpenClicked and "clicked" or "failed")

	task.wait(Array.Config.PlaytimeRewardsClickDelay)

	return Array.State.PlaytimeOpenClicked
end

function Array.Function.ClaimReadyPlaytimeRewards()
	if Array.Config.PlaytimeRewardsRemoteFirst then
		Array.State.PlaytimeRemoteReadyCount = Array.Function.ClaimReadyPlaytimeRewardsRemote()

		if Array.State.PlaytimeRemoteReadyCount ~= nil then
			Array.Function.SetStatus("AutoPlaytimeRewardsReady", Array.State.PlaytimeRemoteReadyCount)

			if Array.State.PlaytimeRemoteReadyCount > 0 then
				Array.Function.SetStatus("AutoPlaytimeRewards", "remote_claimed:" .. tostring(Array.State.PlaytimeRemoteReadyCount))
			end

			return Array.State.PlaytimeRemoteReadyCount
		end
	end

	Array.Function.OpenPlaytimeRewardsPanel()
	Array.State.ReadyPlaytimeButtons = Array.Function.FindReadyPlaytimeRewardButtons()
	Array.State.PlaytimeClaimedCount = 0

	for _, Button in next, Array.State.ReadyPlaytimeButtons do
		if not Array.Function.IsRunning() then
			break
		end

		if Array.Function.ClickButton(Button) then
			Array.State.PlaytimeClaimedCount = Array.State.PlaytimeClaimedCount + 1
			Array.Function.SetStatus("AutoPlaytimeRewardsLast", Button:GetFullName())
			task.wait(Array.Config.PlaytimeRewardsClickDelay)
		end

		Array.State.PlaytimePopupButton = Array.Function.FindPlaytimeClaimPopupButton()

		if Array.State.PlaytimePopupButton then
			Array.Function.ClickButton(Array.State.PlaytimePopupButton)
			task.wait(Array.Config.PlaytimeRewardsClickDelay)
		end
	end

	Array.Function.SetStatus("AutoPlaytimeRewardsReady", #Array.State.ReadyPlaytimeButtons)

	if Array.State.PlaytimeClaimedCount > 0 then
		Array.Function.SetStatus("AutoPlaytimeRewards", "claimed:" .. tostring(Array.State.PlaytimeClaimedCount))
	end

	return Array.State.PlaytimeClaimedCount
end

function Array.Function.StartAutoPlaytimeRewards()
	if Array.State.AutoPlaytimeRewardsStarted or not Array.Config.AutoPlaytimeRewards then
		return false
	end

	Array.State.AutoPlaytimeRewardsStarted = true

	task.spawn(function()
		Array.Function.SetStatus("AutoPlaytimeRewards", "started")

		while Array.Function.IsRunning() and Array.Config.AutoPlaytimeRewards do
			Array.State.AutoPlaytimeRewardsSuccess, Array.State.AutoPlaytimeRewardsResult = pcall(Array.Function.ClaimReadyPlaytimeRewards)

			if not Array.State.AutoPlaytimeRewardsSuccess then
				Array.State.AutoPlaytimeRewardsError = tostring(Array.State.AutoPlaytimeRewardsResult)
				Array.Function.SetStatus("AutoPlaytimeRewards", "error")
				Array.Function.SetStatus("AutoPlaytimeRewardsError", Array.State.AutoPlaytimeRewardsError)
			else
				Array.State.AutoPlaytimeRewardsError = nil
			end

			task.wait(Array.Config.PlaytimeRewardsCheckDelay)
		end

		Array.State.AutoPlaytimeRewardsStarted = false
		Array.Function.SetStatus("AutoPlaytimeRewards", "stopped")
	end)

	return true
end

function Array.Function.GetQuestRewardsGui()
	return Array.Service.PlayerGui and Array.Service.PlayerGui:FindFirstChild("DailyQuests") or nil
end

function Array.Function.GetQuestRewardsOpenButton()
	if not Array.Service.PlayerGui then
		return nil
	end

	Array.State.QuestRewardsHud = Array.Service.PlayerGui:FindFirstChild("HUD")
	Array.State.QuestRewardsMainFrame = Array.State.QuestRewardsHud and Array.State.QuestRewardsHud:FindFirstChild("MainFrame")
	Array.State.QuestRewardsMain = Array.State.QuestRewardsMainFrame and Array.State.QuestRewardsMainFrame:FindFirstChild("Main")
	Array.State.QuestRewardsHolder = Array.State.QuestRewardsMain and Array.State.QuestRewardsMain:FindFirstChild("Holder")
	Array.State.QuestRewardsRegularButtons = Array.State.QuestRewardsHolder and Array.State.QuestRewardsHolder:FindFirstChild("RegularButtons")
	Array.State.QuestRewardsLowerButtons = Array.State.QuestRewardsRegularButtons and Array.State.QuestRewardsRegularButtons:FindFirstChild("Lower")
	Array.State.QuestRewardsQuestButtonFrame = Array.State.QuestRewardsLowerButtons and Array.State.QuestRewardsLowerButtons:FindFirstChild("Quests")
	Array.State.QuestRewardsOpenButton = Array.State.QuestRewardsQuestButtonFrame and Array.State.QuestRewardsQuestButtonFrame:FindFirstChild("Button")

	if Array.State.QuestRewardsOpenButton
		and Array.State.QuestRewardsOpenButton:IsA("GuiButton")
		and Array.Function.IsVisible(Array.State.QuestRewardsOpenButton, Array.Service.PlayerGui)
	then
		return Array.State.QuestRewardsOpenButton
	end

	return nil
end

function Array.Function.GetQuestRewardsRoot(QuestFrame)
	Array.State.QuestRewardsChest = QuestFrame and QuestFrame:FindFirstChild("Chest")
	Array.State.QuestRewardsProgress = Array.State.QuestRewardsChest and Array.State.QuestRewardsChest:FindFirstChild("Progress")

	return Array.State.QuestRewardsProgress and Array.State.QuestRewardsProgress:FindFirstChild("Rewards") or nil
end

function Array.Function.IsQuestRewardFrame(RewardRoot)
	if not RewardRoot or not RewardRoot:IsA("Frame") then
		return false
	end

	Array.State.QuestRewardButton = RewardRoot:FindFirstChild("Button") or RewardRoot:FindFirstChild("button")
	Array.State.QuestRewardAmount = RewardRoot:FindFirstChild("Amount") or RewardRoot:FindFirstChild("aMOUNT")
	Array.State.QuestRewardWrapper = RewardRoot:FindFirstChild("wrapper")

	if not Array.State.QuestRewardButton
		or not Array.State.QuestRewardButton:IsA("GuiButton")
		or not Array.State.QuestRewardAmount
		or not Array.State.QuestRewardWrapper
	then
		return false
	end

	Array.State.QuestRewardAmountValue = tonumber(Array.Function.GetGuiObjectText(Array.State.QuestRewardAmount))

	return Array.State.QuestRewardAmountValue == 40
		or Array.State.QuestRewardAmountValue == 80
		or Array.State.QuestRewardAmountValue == 120
		or Array.State.QuestRewardAmountValue == 160
		or Array.State.QuestRewardAmountValue == 200
end

function Array.Function.HasQuestRewardReadyMarker(RewardRoot)
	Array.State.QuestRewardMarkerButton = RewardRoot and (RewardRoot:FindFirstChild("Button") or RewardRoot:FindFirstChild("button"))
	Array.State.QuestRewardExclamation = Array.State.QuestRewardMarkerButton and Array.State.QuestRewardMarkerButton:FindFirstChild("Exclamation")

	return Array.State.QuestRewardExclamation
		and Array.Function.GetGuiObjectOwnVisible(Array.State.QuestRewardExclamation)
end

function Array.Function.IsQuestRewardClaimed(RewardRoot)
	Array.State.QuestRewardClaimedMarker = false

	Array.Function.WalkGui(RewardRoot, function(InstanceData)
		if Array.State.QuestRewardClaimedMarker then
			return
		end

		Array.State.QuestRewardClaimText = string.lower(Array.Function.GetGuiObjectText(InstanceData))
		Array.State.QuestRewardClaimName = string.lower(InstanceData.Name)

		if (string.find(Array.State.QuestRewardClaimName, "claimed", 1, true)
			or string.find(Array.State.QuestRewardClaimText, "claimed", 1, true))
			and Array.Function.GetGuiObjectOwnVisible(InstanceData)
		then
			Array.State.QuestRewardClaimedMarker = true
		end
	end)

	return Array.State.QuestRewardClaimedMarker
end

function Array.Function.InsertReadyQuestRewardButton(RewardRoot)
	if not Array.Function.IsQuestRewardFrame(RewardRoot)
		or Array.Function.IsQuestRewardClaimed(RewardRoot)
		or not Array.Function.HasQuestRewardReadyMarker(RewardRoot)
	then
		return false
	end

	Array.State.QuestRewardButton = RewardRoot:FindFirstChild("Button") or RewardRoot:FindFirstChild("button")

	if Array.State.QuestRewardButton
		and Array.State.QuestRewardButton:IsA("GuiButton")
		and not Array.State.ReadyQuestRewardButtonLookup[Array.State.QuestRewardButton]
	then
		Array.State.ReadyQuestRewardButtonLookup[Array.State.QuestRewardButton] = true
		table.insert(Array.State.ReadyQuestRewardButtons, Array.State.QuestRewardButton)

		return true
	end

	return false
end

function Array.Function.FindReadyQuestRewardButtons()
	Array.State.ReadyQuestRewardButtons = {}
	Array.State.ReadyQuestRewardButtonLookup = {}
	Array.State.QuestRewardsGui = Array.Function.GetQuestRewardsGui()
	Array.State.QuestRewardsMainFrame = Array.State.QuestRewardsGui and Array.State.QuestRewardsGui:FindFirstChild("MainFrame")
	Array.State.QuestRewardsFrame = Array.State.QuestRewardsMainFrame and Array.State.QuestRewardsMainFrame:FindFirstChild("Quests")

	if not Array.State.QuestRewardsFrame then
		return Array.State.ReadyQuestRewardButtons
	end

	Array.State.QuestRewardsRegularFrame = Array.State.QuestRewardsFrame:FindFirstChild("RegularQuests")
	Array.State.QuestRewardsInfiniteFrame = Array.State.QuestRewardsFrame:FindFirstChild("InfQuests")
	Array.State.QuestRewardsRegularRoot = Array.Function.GetQuestRewardsRoot(Array.State.QuestRewardsRegularFrame)
	Array.State.QuestRewardsInfiniteRoot = Array.Function.GetQuestRewardsRoot(Array.State.QuestRewardsInfiniteFrame)

	for _, RewardsRoot in next, { Array.State.QuestRewardsRegularRoot, Array.State.QuestRewardsInfiniteRoot } do
		if RewardsRoot then
			for _, RewardRoot in next, RewardsRoot:GetChildren() do
				Array.Function.InsertReadyQuestRewardButton(RewardRoot)
			end
		end
	end

	table.sort(Array.State.ReadyQuestRewardButtons, function(Left, Right)
		if Left.AbsolutePosition.Y == Right.AbsolutePosition.Y then
			return Left.AbsolutePosition.X < Right.AbsolutePosition.X
		end

		return Left.AbsolutePosition.Y < Right.AbsolutePosition.Y
	end)

	return Array.State.ReadyQuestRewardButtons
end

function Array.Function.OpenQuestRewardsPanel()
	if not Array.Config.QuestRewardsOpenPanel then
		return false
	end

	Array.State.QuestRewardsGui = Array.Function.GetQuestRewardsGui()
	Array.State.QuestRewardsMainFrame = Array.State.QuestRewardsGui and Array.State.QuestRewardsGui:FindFirstChild("MainFrame")

	if Array.State.QuestRewardsMainFrame and Array.Function.IsVisible(Array.State.QuestRewardsMainFrame, Array.Service.PlayerGui) then
		return true
	end

	Array.State.QuestRewardsOpenButton = Array.Function.GetQuestRewardsOpenButton()

	if not Array.State.QuestRewardsOpenButton then
		return false
	end

	Array.State.QuestRewardsOpenClicked = Array.Function.ClickButton(Array.State.QuestRewardsOpenButton)
	Array.Function.SetStatus("AutoQuestRewardsOpen", Array.State.QuestRewardsOpenClicked and "clicked" or "failed")
	task.wait(Array.Config.QuestRewardsClickDelay)

	return Array.State.QuestRewardsOpenClicked
end

function Array.Function.ClaimReadyQuestRewards()
	Array.Function.OpenQuestRewardsPanel()
	Array.State.ReadyQuestRewardButtons = Array.Function.FindReadyQuestRewardButtons()
	Array.State.QuestRewardsClaimedCount = 0

	for _, Button in next, Array.State.ReadyQuestRewardButtons do
		if not Array.Function.IsRunning() then
			break
		end

		if Array.Function.ClickButton(Button) then
			Array.State.QuestRewardsClaimedCount = Array.State.QuestRewardsClaimedCount + 1
			Array.Function.SetStatus("AutoQuestRewardsLast", Button:GetFullName())
			task.wait(Array.Config.QuestRewardsClickDelay)
		end
	end

	Array.Function.SetStatus("AutoQuestRewardsReady", #Array.State.ReadyQuestRewardButtons)

	if Array.State.QuestRewardsClaimedCount > 0 then
		Array.Function.SetStatus("AutoQuestRewards", "claimed:" .. tostring(Array.State.QuestRewardsClaimedCount))
	end

	return Array.State.QuestRewardsClaimedCount
end

function Array.Function.StartAutoQuestRewards()
	if Array.State.AutoQuestRewardsStarted or not Array.Config.AutoQuestRewards then
		return false
	end

	Array.State.AutoQuestRewardsStarted = true

	task.spawn(function()
		Array.Function.SetStatus("AutoQuestRewards", "started")

		while Array.Function.IsRunning() and Array.Config.AutoQuestRewards do
			Array.State.AutoQuestRewardsSuccess, Array.State.AutoQuestRewardsResult = pcall(Array.Function.ClaimReadyQuestRewards)

			if not Array.State.AutoQuestRewardsSuccess then
				Array.State.AutoQuestRewardsError = tostring(Array.State.AutoQuestRewardsResult)
				Array.Function.SetStatus("AutoQuestRewards", "error")
				Array.Function.SetStatus("AutoQuestRewardsError", Array.State.AutoQuestRewardsError)
			else
				Array.State.AutoQuestRewardsError = nil
			end

			task.wait(Array.Config.QuestRewardsCheckDelay)
		end

		Array.State.AutoQuestRewardsStarted = false
		Array.Function.SetStatus("AutoQuestRewards", "stopped")
	end)

	return true
end

function Array.Function.ClickPlayWhenReady()
	if not Array.Config.ClickPlay then
		Array.Function.SetStatus("ClickPlay", "disabled")

		return false
	end

	Array.State.SearchPlayStartedAt = os.clock()
	Array.Function.SetStatus("ClickPlay", "searching")
	Array.Function.DebugPrint("Searching Play button")

	repeat
		Array.State.PlayButton = Array.Function.FindPlayButton(Array.Service.PlayerGui)

		if Array.State.PlayButton then
			Array.State.PlayClicked = Array.Function.ClickButton(Array.State.PlayButton)

			Array.Function.SetStatus("ClickPlay", Array.State.PlayClicked and "clicked" or "failed")
			Array.Function.SetStatus("ClickPlayButton", Array.State.PlayButton.Name)
			Array.Function.SetStatus("ClickPlayButtonPath", Array.State.PlayButton:GetFullName())
			Array.Function.DebugPrint("Play click result", Array.State.PlayClicked, Array.State.PlayButton:GetFullName())

			return Array.State.PlayClicked
		end

		task.wait(math.max(Array.Config.SearchPlayDelay, 0.05))
	until not Array.Function.IsRunning() or os.clock() - Array.State.SearchPlayStartedAt >= Array.Config.SearchPlayTimeout

	Array.Function.SetStatus("ClickPlay", "timeout")
	Array.Function.DebugPrint("Play button search timed out")

	return false
end

function Array.Function.RedeemCodes()
	if not Array.Config.AutoRedeemCode then
		Array.Function.SetStatus("AutoRedeemCode", "disabled")

		return false
	end

	if Array.State.StartupCodesDone then
		return true
	end

	Array.Function.SetStatus("AutoRedeemCode", "waiting_remote")
	Array.State.ClaimCode = Array.Function.WaitClientEvent("ClaimCode", Array.Config.RedeemTimeout)

	if not Array.State.ClaimCode then
		Array.Function.SetStatus("AutoRedeemCode", "missing_remote")

		return false
	end

	Array.Function.SetStatus("AutoRedeemCode", "redeeming")
	Array.State.RedeemCount = 0

	for _, Code in next, Array.Config.Codes do
		if not Array.Function.IsRunning() then
			return false
		end

		if not Array.State.CodeResults[Code] then
			if Array.Function.IsRefundCode(Code) then
				Array.State.CodeResults[Code] = {
					Text = "SkippedRefundCode",
					Rewards = nil,
					Success = false,
				}

				Array.Function.SetStatus("LastRedeemSkipped", Code)
				continue
			end

			Array.Function.SetStatus("LastRedeemCode", Code)

			Array.State.RedeemSuccess, Array.State.RedeemText, Array.State.RedeemRewards = pcall(function()
				return Array.State.ClaimCode:InvokeServer(Code)
			end)

			Array.State.CodeResults[Code] = {
				Text = tostring(Array.State.RedeemText or ""),
				Rewards = Array.State.RedeemRewards,
				Success = Array.State.RedeemSuccess and Array.State.RedeemRewards ~= nil,
			}

			Array.State.RedeemCount = Array.State.RedeemCount + 1
			Array.Function.SetStatus("RedeemCount", Array.State.RedeemCount)
			Array.Function.SetStatus("LastRedeemSuccess", Array.State.CodeResults[Code].Success)
			task.wait(math.max(Array.Config.RedeemDelay, 0.05))
		end
	end

	Array.State.StartupCodesDone = true
	Array.Function.SetStatus("AutoRedeemCode", "done")

	return true
end

_G.HSKaitunCleanup = function()
	Array.Config.Enabled = false

	if type(_G.HazeSeasAutoFarmCleanup) == "function" then
		pcall(_G.HazeSeasAutoFarmCleanup)
	end
end

assert(type(Array.Function.FindPlayButton) == "function", "play finder missing")
assert(type(Array.Function.ClickButton) == "function", "play clicker missing")
assert(type(Array.Function.BypassTeleportToCFrame) == "function", "bypass teleport missing")
assert(type(Array.Function.VelocityBypassTeleportToCFrame) == "function", "velocity bypass teleport missing")
assert(type(Array.Function.MotorBypassTeleportToCFrame) == "function", "motor bypass teleport missing")
assert(type(Array.Function.StepBypassTeleportToCFrame) == "function", "step bypass teleport missing")
assert(type(Array.Function.BuyKatana) == "function", "katana buyer missing")
assert(type(Array.Function.StartAutoBlackLeg) == "function", "auto black leg loop missing")
assert(type(Array.Function.BuyBlackLeg) == "function", "black leg buyer missing")
assert(type(Array.Function.InvokeBuyFightingStyle) == "function", "fighting style buyer missing")
assert(type(Array.Function.WaitForBlackLegTrainer) == "function", "black leg trainer wait missing")
assert(type(Array.Function.StartWorld1AutoFarm) == "function", "world 1 auto farm missing")
assert(type(Array.Function.StartAutoFarmLoops) == "function", "world 1 auto farm loop missing")
assert(type(Array.Function.WaitPlayerLevelReady) == "function", "player level ready wait missing")
assert(type(Array.Function.BuildWorld1QuestCache) == "function", "world 1 quest cache missing")
assert(type(Array.Function.SelectRyummyShusuiQuest) == "function", "ryummy shusui selector missing")
assert(type(Array.Function.ShouldSwitchFarmQuest) == "function", "farm quest switch helper missing")
assert(type(Array.Function.StartSea2QuestLoop) == "function", "sea 2 quest loop missing")
assert(type(Array.Function.PickPoneglyphScroll) == "function", "poneglyph scroll picker missing")
assert(type(Array.Function.TeleportToSea2) == "function", "sea 2 teleport helper missing")
assert(type(Array.Function.FindMob) == "function", "auto farm mob finder missing")
assert(type(Array.Function.AttackTarget) == "function", "haze sea1 auto farm attack missing")
assert(type(Array.Function.GetFarmHoverSettings) == "function", "farm hover setting helper missing")
assert(type(Array.Function.UseBlackLegSkillKeys) == "function", "black leg auto skill helper missing")
assert(type(Array.Function.AimMouseAtTarget) == "function", "black leg skill mouse aim helper missing")
assert(type(Array.Function.FireBlackLegSkillRemote) == "function", "black leg skill remote helper missing")
assert(type(Array.Function.ProbeQuestIslandForMob) == "function", "haze sea1 mob probe missing")
assert(type(Array.Function.MoveNearQuestTargetArea) == "function", "haze sea1 quest area move missing")
assert(type(Array.Function.SetAutoFarmStatus) == "function", "auto farm status helper missing")
assert(type(Array.Function.IsSameQuest) == "function", "quest compare helper missing")
assert(type(Array.Function.CancelActiveQuest) == "function", "quest cancel helper missing")
assert(type(Array.Function.BuildStatSpendPlan) == "function", "auto stat plan missing")
assert(type(Array.Function.SpendStatPoints) == "function", "auto stat spender missing")
assert(type(Array.Function.StartAutoStats) == "function", "auto stat loop missing")
assert(type(Array.Function.BuyBusoHaki) == "function", "auto haki buyer missing")
assert(type(Array.Function.StartAutoHaki) == "function", "auto haki loop missing")
assert(type(Array.Function.UseBusoHaki) == "function", "auto haki use missing")
assert(type(Array.Function.StartAutoPlaytimeRewards) == "function", "auto playtime rewards loop missing")
assert(type(Array.Function.FindReadyPlaytimeRewardButtons) == "function", "playtime reward finder missing")
assert(type(Array.Function.GetPlaytimeRewardRemote) == "function", "playtime reward remote missing")
assert(type(Array.Function.ClaimReadyPlaytimeRewardsRemote) == "function", "playtime reward remote claimer missing")
assert(type(Array.Function.StartAutoQuestRewards) == "function", "auto quest rewards loop missing")
assert(type(Array.Function.FindReadyQuestRewardButtons) == "function", "quest reward finder missing")
assert(type(Array.Function.RedeemCodes) == "function", "redeem helper missing")
assert(type(Array.Function.IsRefundCode) == "function", "refund code guard missing")
assert(type(Array.Function.StartWorld1Script) == "function", "world 1 script missing")
assert(type(Array.Function.StartWorld2Script) == "function", "world 2 script missing")
assert(type(Array.Function.StartWorld3Script) == "function", "world 3 script missing")
assert(type(Array.Function.StartWorld3ShrineLoop) == "function", "world 3 shrine loop missing")
assert(type(Array.Function.FindWorld3ShrinePrompt) == "function", "world 3 shrine prompt finder missing")
assert(type(Array.Function.TriggerWorld3ShrinePrompt) == "function", "world 3 shrine prompt trigger missing")
assert(type(Array.Function.GetSwordMastery) == "function", "sword mastery helper missing")
assert(type(Array.Function.StartWorld2AutoFarmScript) == "function", "world 2 auto farm loader missing")
assert(type(Array.Function.StartWorld2DirectLoadstring) == "function", "world 2 direct loadstring missing")
assert(Array.Config.World2AutoFarm.DirectLoadstring == true or Array.Config.World2AutoFarm.DirectLoadstring == false, "world 2 direct loadstring config missing")
assert(type(Array.Function.IsWorld2AutoFarmSource) == "function" and Array.Function.IsWorld2AutoFarmSource(Array.World2AutoFarmCode), "world 2 source validator failed")
assert(type(Array.World2AutoFarmCode) == "string" and string.find(Array.World2AutoFarmCode, "Config.PreferTool = \"Shusui\"", 1, true), "world 2 embedded auto farm missing")
assert(type(Array.World2AutoFarmCode) == "string" and string.find(Array.World2AutoFarmCode, "SwordMasterySwitch", 1, true), "world 2 sword mastery switch missing")
assert(type(Array.World2AutoFarmCode) == "string" and string.find(Array.World2AutoFarmCode, "Sea3RequiredGems = 1000", 1, true), "world 2 sea3 gate missing")
assert(type(Array.World2AutoFarmCode) == "string" and string.find(Array.World2AutoFarmCode, "Zenith Boss", 1, true), "world 2 zenith boss priority missing")
assert(type(Array.World2AutoFarmCode) == "string" and string.find(Array.World2AutoFarmCode, "Dragon Boss", 1, true), "world 2 dragon boss priority missing")
assert(type(Array.World2AutoFarmCode) == "string" and string.find(Array.World2AutoFarmCode, "HandleSuperBoss", 1, true), "world 2 super boss priority missing")
assert(type(Array.World2AutoFarmCode) == "string" and string.find(Array.World2AutoFarmCode, "Elite Beast", 1, true), "world 2 dragon island farm missing")
assert(type(Array.Function.StartStartupFlow) == "function", "startup flow missing")
assert(Array.Config.PlaceId.Source == 106600795455627, "source place id missing")
assert(Array.Config.PlaceId.Target == 6918802270, "target place id missing")
assert(Array.Config.PlaceId.World1 == 6918802270, "world 1 place id missing")
assert(Array.Config.PlaceId.World2 == 14979402479, "world 2 place id missing")
assert(Array.Config.PlaceId.World3 == 99664616626491, "world 3 place id missing")
assert(Array.Config.AllowedPlaceIds[Array.Config.PlaceId.World3] == true, "world 3 place id not allowed")
assert(Array.Config.World3Shrine.RequiredSwords[1] == "Shusui" and Array.Config.World3Shrine.RequiredSwords[2] == "Enma" and Array.Config.World3Shrine.RequiredSwords[3] == "Zenith", "world 3 shrine swords missing")
assert(Array.Config.World3Shrine.RequiredMastery == 300, "world 3 shrine mastery config missing")
assert(Array.Config.World3Shrine.PromptObjectText == "Shrine of Three Swords", "world 3 shrine prompt config missing")
assert(Array.Config.BypassTeleportMode == "Velocity" or Array.Config.BypassTeleportMode == "Motor6D" or Array.Config.BypassTeleportMode == "Step", "bypass teleport mode missing")
assert(Array.Config.AutoFarm.Enabled == true or Array.Config.AutoFarm.Enabled == false, "auto farm config missing")
assert(Array.Function.IsSafePosition(Vector3.new(0, Array.Config.AutoFarm.SafePositionFloor + 1, 0)), "safe position guard missing")
assert(not Array.Function.IsSafePosition(Vector3.new(0, Array.Config.AutoFarm.SafePositionFloor - 1, 0)), "unsafe position guard missing")
assert(Array.Config.SwordName == "Combat", "combat config missing")
assert(Array.Config.AutoStats.Ratio.Combat == 80, "combat stat ratio missing")
assert(Array.Config.AutoStats.Ratio.Defense == 20, "defense stat ratio missing")
assert(Array.Config.AutoBlackLeg.StyleName == "Black Leg", "black leg config missing")
assert(typeof(Array.Config.AutoBlackLeg.NpcCFrame) == "CFrame", "black leg npc cframe missing")
assert(Array.Config.AutoFarm.BlackLegHoverHeight <= Array.Config.AutoFarm.HoverHeight, "black leg hover config missing")
assert(Array.Config.AutoFarm.BlackLegHoverHeight == 4, "black leg upper hover missing")
assert(Array.Config.AutoFarm.BlackLegAutoSkills == true or Array.Config.AutoFarm.BlackLegAutoSkills == false, "black leg auto skill config missing")
assert(Array.Config.AutoFarm.BlackLegSkillInputMode == "Remote" or Array.Config.AutoFarm.BlackLegSkillInputMode == "Key", "black leg skill input mode missing")
assert(Array.Config.AutoFarm.BlackLegSkillAimMouse == true or Array.Config.AutoFarm.BlackLegSkillAimMouse == false, "black leg skill aim config missing")
assert(#Array.Config.AutoFarm.BlackLegSkillKeys > 0, "black leg skill key config missing")
assert(Array.Config.AutoFarm.RyummyShusui.BossName == "Ryummy", "ryummy shusui boss config missing")
assert(Array.Config.AutoFarm.RyummyShusui.SwordName == "Shusui", "ryummy shusui sword config missing")
assert(Array.Config.Sea2Quest.RequiredSwordName == "Shusui", "sea 2 shusui gate missing")
assert(Array.Config.Sea2Quest.ScrollModelName == "Poneglyph Scroll", "poneglyph scroll config missing")
assert(Array.Config.World2AutoFarm.PreferTool == "Shusui", "world 2 shusui config missing")
assert(Array.Config.World2AutoFarm.StatOrder[1] == "Sword" and Array.Config.World2AutoFarm.StatOrder[2] == "Defense" and Array.Config.World2AutoFarm.StatOrder[3] == "Fruit", "world 2 stat order config missing")
assert(Array.Config.PlayBlockWords[1] == "playtime", "play block words missing")
assert(Array.Config.RefundCodeNames.statrefund == true and Array.Function.IsRefundCode("STATREFUND"), "refund code guard missing")
assert(not Array.Function.IsRefundCode(Array.Config.Codes[1]), "refund code leaked into redeem codes")

task.spawn(function()
	Array.Function.SetStatus("Boot", "started")
	Array.State.StartupSuccess, Array.State.StartupError = pcall(Array.Function.StartStartupFlow)

	if not Array.State.StartupSuccess then
		Array.Function.SetStatus("StartupError", tostring(Array.State.StartupError))
		warn("[HS Kaitun] Startup error:", Array.State.StartupError)
	end
end)
