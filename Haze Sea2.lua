repeat task.wait() until game:IsLoaded()

if game.PlaceId == 14979402479 then
	_G.HazeSea2AutoExecutorPresent = true
	_G.HazeSea2AutoExecutorStartedAt = os.clock()
end

local LoadDelay = math.max(tonumber(_G.HSKaitunLoadDelaySeconds) or 10, 0)
local LoadReadyAt = tonumber(_G.HSKaitunGameLoadReadyAt)

if not LoadReadyAt then
	LoadReadyAt = os.clock() + LoadDelay
	_G.HSKaitunGameLoadReadyAt = LoadReadyAt
end

local LoadDelayRemaining = LoadReadyAt - os.clock()

if LoadDelayRemaining > 0 then
	task.wait(LoadDelayRemaining)
end

_G.HSKaitunGameLoadDelayDone = true

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
Config.QueueSea3Urls = type(Config.QueueSea3Urls) == "table" and Config.QueueSea3Urls or {
	"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/HS%20Kaitun.lua",
	"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/HS%20Kaitun.lua",
	"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/refs/heads/main/Haze%20Seas/HS%20Kaitun.lua",
	"https://raw.githubusercontent.com/latavee1399-dev/Haze-Sea-Project/main/Haze%20Seas/HS%20Kaitun.lua",
}
Config.HoverHeight = Config.HoverHeight or 8
Config.SwordTopDownHover = Config.SwordTopDownHover ~= false
Config.SwordHoverHeight = math.max(tonumber(Config.SwordHoverHeight) or 5.5, 2)
Config.SwordHoverPitch = math.clamp(tonumber(Config.SwordHoverPitch) or -90, -90, 0)
Config.SwordHoverGyroMaxTorque = math.max(tonumber(Config.SwordHoverGyroMaxTorque) or 100000000, 10000)
Config.SwordHoverGyroPower = math.max(tonumber(Config.SwordHoverGyroPower) or 1000000, 1000)
Config.AttackDelay = math.min(Config.AttackDelay or 0.06, 0.06)
Config.AttackBurst = math.max(2, math.floor(Config.AttackBurst or 2))
Config.AttackBurstDelay = math.min(Config.AttackBurstDelay or 0.02, 0.02)
Config.AttackRetryDelay = math.max(tonumber(Config.AttackRetryDelay) or 0.05, 0.01)
Config.FireActivatedSignal = Config.FireActivatedSignal ~= false
Config.LoopDelay = math.min(Config.LoopDelay or 0.08, 0.08)
Config.TargetRefreshDelay = Config.TargetRefreshDelay or 0.75
Config.QuestRetryDelay = Config.QuestRetryDelay or 2
Config.QuestTimeoutFarmDelay = math.max(tonumber(Config.QuestTimeoutFarmDelay) or 10, Config.QuestRetryDelay)
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
Config.TravelArriveDistance = math.max(tonumber(Config.TravelArriveDistance) or 12, 3)
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
Config.EnmaBossPriority.SkipWhenOwned = Config.EnmaBossPriority.SkipWhenOwned == true
Config.ZenithBossPriority = type(Config.ZenithBossPriority) == "table" and Config.ZenithBossPriority or {}
Config.ZenithBossPriority.Enabled = Config.ZenithBossPriority.Enabled ~= false
Config.ZenithBossPriority.BossName = tostring(Config.ZenithBossPriority.BossName or "Zenith Boss")
Config.ZenithBossPriority.SwordName = tostring(Config.ZenithBossPriority.SwordName or "Zenith")
Config.ZenithBossPriority.CheckDelay = math.max(tonumber(Config.ZenithBossPriority.CheckDelay) or 5, 1)
Config.ZenithBossPriority.WorkspaceSearchDepth = math.max(1, math.floor(tonumber(Config.ZenithBossPriority.WorkspaceSearchDepth) or 8))
Config.ZenithBossPriority.StatusPrefix = tostring(Config.ZenithBossPriority.StatusPrefix or "Zenith")
Config.ZenithBossPriority.StateName = tostring(Config.ZenithBossPriority.StateName or "farming_zenith_boss")
Config.ZenithBossPriority.Reason = tostring(Config.ZenithBossPriority.Reason or "priority_zenith_boss")
Config.ZenithBossPriority.SkipWhenOwned = Config.ZenithBossPriority.SkipWhenOwned == true
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
Config.QuestInvokeTimeout = math.max(tonumber(Config.QuestInvokeTimeout) or 1.25, 0.35)
Config.SyncLocationValue = Config.SyncLocationValue ~= false
Config.NpcActivation = Config.NpcActivation ~= false
Config.NpcActivationDistance = math.max(tonumber(Config.NpcActivationDistance) or 90, 30)
Config.NpcActivationCooldown = math.max(tonumber(Config.NpcActivationCooldown) or 0.35, 0.1)
Config.NpcActivationBurstLimit = math.max(1, math.floor(tonumber(Config.NpcActivationBurstLimit) or 16))
Config.NpcActivationLast = type(Config.NpcActivationLast) == "table" and Config.NpcActivationLast or {}
Config.UseLoaderBypassTeleport = Config.UseLoaderBypassTeleport ~= false
Config.BypassTravelMinDistance = math.max(tonumber(Config.BypassTravelMinDistance) or 850, 500)
Config.BypassTravelSettleDelay = math.max(tonumber(Config.BypassTravelSettleDelay) or 0.2, 0)
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
	"Enma",
}
Config.MobNameAliases["Zenith Boss"] = Config.MobNameAliases["Zenith Boss"] or {
	"Zenith Boss",
	"ZenithBoss",
	"Zenith",
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
Config.MobNameAliases["Favela Shanks' Mother"] = Config.MobNameAliases["Favela Shanks' Mother"] or {
	"Favela Shanks' Mother",
	"Favela Shanks Mother",
	"Shanks Mother",
}
function Config.EnsureMobNameAlias(targetName, aliasName)
	local aliases = Config.MobNameAliases[targetName]

	if type(aliases) ~= "table" then
		aliases = { targetName }
		Config.MobNameAliases[targetName] = aliases
	end

	for _, currentName in next, aliases do
		if currentName == aliasName then
			return
		end
	end

	table.insert(aliases, aliasName)
end

for _, aliasData in next, {
	{ "Enma Boss", "Enma" },
	{ "Zenith Boss", "Zenith" },
	{ "Elite Beast", "Elite Beasts" },
	{ "Beast Pirate", "Beast Pirates" },
	{ "Favela Shanks' Mother", "Favela Shanks Mother" },
	{ "Favela Shanks' Mother", "Shanks Mother" },
} do
	Config.EnsureMobNameAlias(aliasData[1], aliasData[2])
end
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
Config.DragonIslandLock.SuperBossNames[5] = "Angry Sea Beast"
Config.DragonIslandLock.SuperBossNames[6] = "Red Sea Beast"
Config.DragonIslandLock.SuperBossNames[7] = "Ghost Ship"
Config.DragonIslandLock.SuperBossNames[8] = "Cthulhu"
Config.DragonIslandLock.SuperBossNames[9] = "Kraken"
Config.DragonIslandLock.SuperBossNames[10] = "Leviathan"
Config.DragonIslandLock.SuperBossNames[11] = "Sea King"
Config.DragonIslandLock.SuperBossNames[12] = "Sea Monster"
Config.DragonIslandLock.SuperBossNames[13] = "Dough Boss"
Config.DragonIslandLock.SuperBossNames[14] = "Favela Shanks' Mother"
Config.Sea3Unlock = Config.Sea3Unlock ~= false
Config.Sea3RequiredLevel = 4500
Config.Sea3RequiredGems = 2000
Config.Sea3RequiredSwordMastery = 300
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
local ClientEvents = ReplicatedStorage:WaitForChild("Replication"):WaitForChild("ClientEvents")
local ActivateNPC = ClientEvents:WaitForChild("ActivateNPC")

local Connections = {}
local QuestCache = {}
local NpcContainers = {}
local LastQuestCacheBuild = 0
local LastContainerScan = 0
local LastAttack = 0
local LastQuestAttempt = 0
local TimeoutFarmQuest = nil
local TimeoutFarmUntil = 0
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

local getConfiguredQuestIslandName

local function syncCharacterLocation(islandName)
	if not Config.SyncLocationValue or not islandName or islandName == "" then
		return false
	end

	local character = LocalPlayer.Character
	local location = character and character:FindFirstChild("Location")

	if not (location and location:IsA("StringValue")) then
		setStatus("LocationSync", "missing")

		return false
	end

	if location.Value ~= islandName then
		location.Value = islandName
	end

	setStatus("LocationSync", islandName)

	return true
end

local function activateNpcZone(islandName, force)
	if not Config.NpcActivation or not islandName or islandName == "" then
		return 0
	end

	local now = tick()

	if not force and now - (Config.NpcActivationLast[islandName] or 0) < Config.NpcActivationCooldown then
		return 0
	end

	Config.NpcActivationLast[islandName] = now
	setStatus("NpcActivateZone", islandName)

	local zone = NpcZones and NpcZones:FindFirstChild(islandName)
	local npcs = zone and zone:FindFirstChild("NPCS")

	if not zone or not npcs then
		setStatus("NpcActivateResult", not zone and "no_zone" or "no_npcs")
		setStatus("NpcActivateCount", 0)

		return 0
	end

	local _, _, playerRoot = getCharacter()
	local count = 0
	local total = 0

	for _, mob in next, npcs:GetChildren() do
		if mob:IsA("Model") then
			total += 1

			local mobRoot = mob.PrimaryPart or getSafePart(mob)
			local distance = mobRoot and playerRoot and (mobRoot.Position - playerRoot.Position).Magnitude or math.huge

			if distance <= Config.NpcActivationDistance then
				local ok, result = pcall(function()
					ActivateNPC:FireServer(mob)
				end)

				if ok then
					count += 1
				else
					setStatus("NpcActivateError", tostring(result))
				end

				if count >= Config.NpcActivationBurstLimit then
					break
				end
			end
		end
	end

	setStatus("NpcActivateTotal", total)
	setStatus("NpcActivateCount", count)
	setStatus("NpcActivateResult", count > 0 and "fired" or (total > 0 and "too_far" or "empty"))

	return count
end

local function syncAndActivateQuestIsland(quest, targetName, force)
	local islandName = getConfiguredQuestIslandName and getConfiguredQuestIslandName(quest, targetName) or nil

	if islandName and islandName ~= "" then
		syncCharacterLocation(islandName)
		activateNpcZone(islandName, force)
	end

	return islandName
end

local function tryLoaderBypassTravel(destination, force)
	if not Config.UseLoaderBypassTeleport or typeof(destination) ~= "CFrame" then
		return false
	end

	local _, _, root = getCharacter()
	local distance = root and (root.Position - destination.Position).Magnitude or math.huge

	if not force and distance < Config.BypassTravelMinDistance then
		return false
	end

	local array = rawget(_G, "HSKaitun")
	local functions = type(array) == "table" and array.Function or nil
	local bypass = type(functions) == "table" and (functions.VelocityBypassTeleportToCFrame or functions.BypassTeleportToCFrame) or nil

	if type(bypass) ~= "function" then
		setStatus("BypassTravel", "missing")

		return false
	end

	setStatus("BypassTravel", "starting")
	setStatus("BypassTravelDistance", distance)

	local ok, result = pcall(bypass, destination)

	if ok and result then
		setStatus("BypassTravel", "done")
		task.wait(Config.BypassTravelSettleDelay)

		return true
	end

	setStatus("BypassTravel", "failed")
	setStatus("BypassTravelError", tostring(result))

	return false
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

local function travelToCFrame(destination, forceBypass)
	if not destination then
		return false
	end

	if tryLoaderBypassTravel(destination, forceBypass) then
		return true
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

		if distance <= Config.TravelArriveDistance then
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

local function moveNearInstance(instance, forceBypass)
	local cframe = getInstanceCFrame(instance)

	if cframe then
		return travelToCFrame(cframe + Vector3.new(0, Config.HoverHeight, 0), forceBypass)
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

function Config.TriggerQuestGiverPrompt(giver)
	local prompt = giver and giver:FindFirstChildWhichIsA("ProximityPrompt", true)
	local fired = false

	if not prompt then
		return false
	end

	pcall(function()
		if typeof(fireproximityprompt) == "function" then
			fireproximityprompt(prompt)
			fired = true
		end
	end)

	if not fired and typeof(firesignal) == "function" then
		pcall(function()
			firesignal(prompt.Triggered, LocalPlayer)
			fired = true
		end)
	end

	return fired
end

local function acceptQuest(quest)
	if not quest then
		return false, "NoQuest"
	end

	syncAndActivateQuestIsland(quest, quest.MobName, true)
	moveNearInstance(quest.Giver)
	syncAndActivateQuestIsland(quest, quest.MobName, true)
	Config.TriggerQuestGiverPrompt(quest.Giver)
	task.wait(0.25)

	local ok, result, done = false, "InvokeTimeout", false
	local startedAt = tick()

	setStatus("LastAcceptInvoke", "starting")
	task.spawn(function()
		local success, response = pcall(function()
			return QuestFunction:InvokeServer(quest.Giver, quest.LevelName)
		end)

		ok, result, done = success, response, true
	end)

	while not done and isRunning() and tick() - startedAt < Config.QuestInvokeTimeout do
		task.wait(0.05)
	end

	if not done then
		setStatus("LastAcceptInvoke", "timeout")
		Config.TriggerQuestGiverPrompt(quest.Giver)

		return false, "InvokeTimeout"
	end

	setStatus("LastAcceptInvoke", "returned")

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

	Config.TriggerQuestGiverPrompt(quest.Giver)
	task.wait(0.2)

	return result == true or hasActiveQuest(), result
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

function Config.NormalizeMobNameLoose(name)
	local key = normalizeMobName(name)

	if #key > 3 and key:sub(-1) == "s" and key:sub(-2) ~= "ss" then
		return key:sub(1, -2)
	end

	return key
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
	local looseName = Config.NormalizeMobNameLoose(name)
	local looseTarget = Config.NormalizeMobNameLoose(target)

	-- Exact match first (most accurate)
	if lowerName == lowerTarget or lowerStrippedName == lowerTarget then
		return true
	end

	-- Exact normalized match
	if normalizedName ~= "" and normalizedName == normalizedTarget then
		return true
	end

	if looseName ~= "" and looseName == looseTarget then
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

getConfiguredQuestIslandName = function(quest, targetName)
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
	local islandName = syncAndActivateQuestIsland(quest, targetName, true)

	setStatus("LastSpawnMoveTarget", targetName)
	if configuredTravelCFrame then
		setStatus("LastSpawnMovePoint", "configured_position")
		setStatus("LastSpawnMovePath", nil)
		setStatus("LastSpawnMoveIsland", islandName)
		setStatus("LastSpawnMoveMode", "configured_position")
		setStatus("LastSpawnMoveAnchor", nil)
		setStatus("LastSpawnMoveScanCount", 1)
		setStatus("LastSpawnMoveIndex", 1)

		local moved = travelToCFrame(configuredTravelCFrame)
		syncAndActivateQuestIsland(quest, targetName, true)
		refreshNpcContainers(true)

		return moved
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
			travelToCFrame(cframe + Vector3.new(0, Config.HoverHeight, 0))
			moved = true
		end
	else
		moved = moveNearInstance(spawnPoint)
	end

	if moved then
		syncAndActivateQuestIsland(quest, targetName, true)
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
	syncAndActivateQuestIsland(quest, targetName, true)

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

			travelToCFrame(targetCFrame)
			syncAndActivateQuestIsland(quest, targetName, attempt == 1)
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

local function fireToolActivated(tool)
	if not Config.FireActivatedSignal or typeof(firesignal) ~= "function" or not tool then
		return false
	end

	return pcall(function()
		firesignal(tool.Activated)
	end)
end

local function attackTarget(target)
	if tick() - LastAttack < Config.AttackDelay then
		return false
	end

	local targetRoot = getRootPart(target)

	if not targetRoot then
		task.wait(Config.AttackRetryDelay)
		targetRoot = getRootPart(target)
	end

	if not targetRoot then
		setStatus("LastAttackResult", "missing_root")

		return false
	end

	lockHoverCFrame(targetRoot, true)
	ensureAutoHaki(target)

	local tool = getPreferredTool()

	if not tool then
		task.wait(Config.AttackRetryDelay)
		tool = getPreferredTool()
	end

	if not tool then
		setStatus("LastAttackResult", "missing_tool")

		return false
	end

	LastAttack = tick()
	setStatus("LastAttackTarget", target.Name)
	setStatus("LastAttackTool", tool.Name)

	for attackIndex = 1, Config.AttackBurst do
		if not isAliveMob(target) then
			break
		end

		targetRoot = getRootPart(target) or targetRoot

		if not targetRoot then
			break
		end

		lockHoverCFrame(targetRoot, true)
		updateToolMouse(tool, targetRoot)
		pcall(function()
			tool:Activate()
		end)
		fireToolActivated(tool)

		if attackIndex < Config.AttackBurst then
			task.wait(Config.AttackBurstDelay)
		end
	end

	setStatus("LastAttackResult", "activated")

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

function Config.DragonIsland.CanHandleBossPriority(level)
	level = tonumber(level) or getLevel()

	return Config.DragonIslandLock.Enabled
		and game.PlaceId == 14979402479
		and level >= Config.DragonIslandLock.StartLevel
end

function Config.DragonIsland.MatchesConfiguredName(value, targetName)
	local valueKey = normalizeMobName(value)
	local targetKey = normalizeMobName(targetName)
	local looseValueKey = Config.NormalizeMobNameLoose(value)
	local looseTargetKey = Config.NormalizeMobNameLoose(targetName)

	if valueKey ~= "" and valueKey == targetKey then
		return true
	end

	if looseValueKey ~= "" and looseValueKey == looseTargetKey then
		return true
	end

	local aliases = Config.MobNameAliases and Config.MobNameAliases[targetName]

	if type(aliases) == "table" then
		for _, alias in next, aliases do
			if valueKey ~= "" and valueKey == normalizeMobName(alias) then
				return true
			end

			if looseValueKey ~= "" and looseValueKey == Config.NormalizeMobNameLoose(alias) then
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
	syncCharacterLocation(Config.DragonIslandLock.IslandName)
	activateNpcZone(Config.DragonIslandLock.IslandName, false)
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
	if not Config.DragonIsland.CanHandleBossPriority(level) then
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
		local looseMobKey = Config.NormalizeMobNameLoose(mobName)

		for _, bossName in next, Config.DragonIslandLock.SuperBossNames do
			if mobKey ~= "" and mobKey == normalizeMobName(bossName) then
				return true
			end

			if looseMobKey ~= "" and looseMobKey == Config.NormalizeMobNameLoose(bossName) then
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
	activateNpcZone("SpecialBosses", false)
	activateNpcZone("Spawned", false)

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
	if not Config.DragonIslandLock.SuperBossPriority or not Config.DragonIsland.CanHandleBossPriority(level) then
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
	activateNpcZone("SpecialBosses", false)
	activateNpcZone("Spawned", false)
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

	local hasSword = PriorityBoss.HasSword(priorityConfig)

	if hasSword and priorityConfig.SkipWhenOwned then
		PriorityBoss.Targets = PriorityBoss.Targets or {}
		PriorityBoss.Targets[bossKey] = nil
		PriorityBoss.Target = nil
		setStatus(priorityKey, PriorityBoss.GetOwnedState(priorityConfig))

		return false, true
	elseif hasSword then
		setStatus(PriorityBoss.GetStatusKey(priorityConfig, "OwnedBossFarm"), "enabled")
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

local runSea3UnlockFlow = (function()
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

function Config.Sea3Gate.IsValidQueueSource(source)
	if type(source) ~= "string" or source == "" then
		return false
	end

	local sourceHead = string.sub(source, 1, 200)

	if string.find(sourceHead, "404: Not Found", 1, true)
		or string.find(string.lower(sourceHead), "<html", 1, true)
	then
		return false
	end

	return string.find(source, "HSKaitun", 1, true) ~= nil
end

function Config.Sea3Gate.FetchQueueSource(url)
	local success, source = pcall(function()
		return game:HttpGet(url)
	end)

	if not Config.Sea3Gate.IsValidQueueSource(source) then
		success = false
		source = nil

		if type(request) == "function" then
			success, source = pcall(function()
				local response = request({
					Url = url,
					Method = "GET",
				})

				return response and response.Body or nil
			end)
		elseif type(syn) == "table" and type(syn.request) == "function" then
			success, source = pcall(function()
				local response = syn.request({
					Url = url,
					Method = "GET",
				})

				return response and response.Body or nil
			end)
		end
	end

	if success and Config.Sea3Gate.IsValidQueueSource(source) then
		return source
	end

	return nil
end

function Config.Sea3Gate.GetQueueSource()
	if Config.Sea3Gate.IsValidQueueSource(Config.QueueSea3Source) then
		setStatus("Sea3QueueSource", "config")

		return Config.QueueSea3Source
	end

	for _, url in next, Config.QueueSea3Urls do
		local source = Config.Sea3Gate.FetchQueueSource(url)

		if source then
			Config.QueueSea3Source = source
			setStatus("Sea3QueueSource", "url")
			setStatus("Sea3QueueSourceUrl", url)

			return source
		end
	end

	setStatus("Sea3QueueSource", "missing")

	return nil
end

function Config.Sea3Gate.QueueRunner()
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

	local queueSource = Config.Sea3Gate.GetQueueSource()

	if not queueOnTeleport or type(queueSource) ~= "string" or queueSource == "" then
		setStatus("Sea3Queue", "missing")

		return false
	end

	local success = pcall(function()
		queueOnTeleport(queueSource)
	end)

	setStatus("Sea3Queue", success and "queued" or "failed")

	return success
end

function Config.Sea3Gate.RequestTeleport()
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
	Config.Sea3Gate.QueueRunner()

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

local function runSea3UnlockFlowImpl(level)
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
		return Config.Sea3Gate.RequestTeleport()
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

assert(type(fightRedEmperorTarget) == "function", "red emperor fight helper missing")
return runSea3UnlockFlowImpl
end)()

function Config.AntiAfkPulse(reason)
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
	Config.AntiAfkPulse("idled")
end))

task.spawn(function()
	while isRunning() do
		task.wait(Config.AntiAfkInterval)
		Config.AntiAfkPulse("interval")
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
assert(type(runSea3UnlockFlow) == "function", "sea3 unlock helper missing")
assert(type(Config.Sea3Gate.QueueRunner) == "function", "sea3 queue helper missing")
assert(type(Config.Sea3Gate.GetQueueSource) == "function", "sea3 queue source helper missing")
assert(type(Config.Sea3Gate.RequestTeleport) == "function", "sea3 teleport request helper missing")
assert(type(refundStatsBeforeUpgrade) == "function", "stat refund helper missing")
assert(type(RefundStats.GetPoints) == "function", "refund point helper missing")
assert(type(RefundStats.FireEvent) == "function", "stats refund event helper missing")
assert(type(PriorityBoss.Handle) == "function", "priority boss handler missing")
assert(type(Config.DragonIsland.SelectQuest) == "function", "dragon island quest selector missing")
assert(type(Config.DragonIsland.FindTargetForObjective) == "function", "dragon island split target helper missing")
assert(type(Config.DragonIsland.HandleAwakenBoss) == "function", "dragon boss handler missing")
assert(type(Config.DragonIsland.HandleSuperBoss) == "function", "dragon island super boss handler missing")
assert(type(Config.DragonIsland.CanHandleBossPriority) == "function", "dragon island boss priority gate missing")
assert(type(equipInventoryItem) == "function", "inventory equip helper missing")
assert(type(clearHoverGyro) == "function", "world 2 hover gyro cleanup missing")
assert(Config.PreferTool == "Shusui", "world 2 shusui preference missing")
assert(Config.SwordMasterySwitch.TargetMastery == 310, "world 2 sword mastery switch target missing")
assert(Config.SwordMasterySwitch.BaseSword == "Shusui" and Config.SwordMasterySwitch.SecondarySword == "Enma" and Config.SwordMasterySwitch.FinalSword == "Zenith", "world 2 sword mastery switch order missing")
assert(type(Config.SwordSelector.SelectTool) == "function", "world 2 sword selector missing")
assert(Config.Sea3RequiredLevel == 4500 and type(Config.Sea3RequiredGems) == "number" and Config.Sea3RequiredGems > 0 and type(Config.Sea3RequiredSwordMastery) == "number" and Config.Sea3RequiredSwordMastery > 0, "world 2 sea3 gate config missing")
assert(Config.Sea3RequiredSwords[1] == "Shusui" and Config.Sea3RequiredSwords[2] == "Enma" and Config.Sea3RequiredSwords[3] == "Zenith", "world 2 sea3 mastery swords missing")
assert(type(Config.Sea3Gate.IsReady) == "function", "world 2 sea3 gate helper missing")
assert(Config.EnmaBossPriority.BossName == "Enma Boss" and Config.EnmaBossPriority.SwordName == "Enma", "enma boss priority config missing")
assert(Config.ZenithBossPriority.BossName == "Zenith Boss" and Config.ZenithBossPriority.SwordName == "Zenith", "zenith boss priority config missing")
assert(Config.PriorityBosses[1] == Config.EnmaBossPriority and Config.PriorityBosses[2] == Config.ZenithBossPriority, "priority boss order missing")
assert(Config.DragonIslandLock.StartLevel == 3050 and Config.DragonIslandLock.EndLevel == 4500, "dragon island level lock missing")
assert(Config.DragonIslandLock.AwakenBossName == "Dragon Boss" and Config.DragonIslandLock.AwakenSoulTarget == 999, "dragon awaken boss config missing")
assert(Config.DragonIslandLock.QuestNames[1] == "Elite Beast" and Config.DragonIslandLock.QuestNames[2] == "Beast Pirate", "dragon island quest targets missing")
assert(Config.DragonIslandLock.SuperBossPriority == true and #Config.DragonIslandLock.SuperBossNames >= 10, "dragon island super boss priority config missing")
assert(Config.NormalizeMobNameLoose("Elite Beasts") == Config.NormalizeMobNameLoose("Elite Beast"), "plural mob match missing")
assert(Config.DragonIsland.MatchesConfiguredName("Beast Pirates", "Beast Pirate"), "dragon island plural quest alias missing")
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

			if runSea3UnlockFlow(level) then
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

				if TimeoutFarmQuest and tick() < TimeoutFarmUntil then
					CurrentQuest = TimeoutFarmQuest
					questReason = "quest_timeout_farm"
				else
					TimeoutFarmQuest = nil
					CurrentQuest, questReason = selectFarmQuest(farmLevel)
				end

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
						TimeoutFarmQuest = nil
						TimeoutFarmUntil = 0
						setStatus("QuestRetryHold", nil)
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
						if tostring(result) == "InvokeTimeout" then
							TimeoutFarmQuest = CurrentQuest
							TimeoutFarmUntil = tick() + Config.QuestTimeoutFarmDelay
							LastQuestAttempt = tick() + math.max(Config.QuestTimeoutFarmDelay - Config.QuestRetryDelay, 0)
							setStatus("QuestRetryHold", Config.QuestTimeoutFarmDelay)
							setStatus("QuestRetryHoldTarget", CurrentQuest.MobName)
						else
							moveNearInstance(CurrentQuest.Giver)
						end

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
