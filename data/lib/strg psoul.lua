local base = 7000

playersStorages = {
    canSummonPokemon = base + 1,
    isPokemonOnline = base + 2,
    pokemonUid = base + 3,
    pokemonName = base + 4,
    isSurfing = base + 5,
    isRiding = base + 6,
    isFlying = base + 7,
    pokemonsDexeds = base + 8,
    blink = base + 9,
    teleport = base + 10,
    love = base + 11,
    duelOpponent = base + 12,
    canDuel = base + 13,
    duelPokemons = base + 14,
    isFishing = base + 15,
    lastCheryBerryUsed = base + 16,
    lastChestoBerryUsed = base + 17,
    lastPechaBerryUsed = base + 18,
    lastRawstBerryUsed = base + 19,
    lastLeppaBerryUsed = base + 20,
    isEvolving = base + 80,
    isBiking = base + 22,
    isDiving = base + 23,
    isUnderwater = base + 24,
    tradeBackPosition = base + 25,
    duelTimeWithoutPokemon = base + 26,
    isDueling = base + 27,
    isOnPvpArena = base + 28,
    pvpArenaTeam = base + 29,
    pvpArenaBackPosition = base + 30,
    safariZone = base + 31, -- isOnSafariZone
    lastOpponent = base + 32,
    lastMaxPokemon = base + 33,
    caughts = base + 34,
    extraExpRateTime = base + 35,
    extraExpRateValue = base + 36,
    masteryDungeon = base + 37, -- isOnMasteryDungeon
    lastDungeonDate = base + 38,
    lastSafariZoneDate = base + 39,
    safariZonePass = base + 40,
    lastUsedTmMark = base + 41,
    lastUsedTmBallMark = base + 42,
    isAutoWalking = base + 43,
    frontierIsland = base + 44, -- is playing on frontier island toys
    lastBattleTowerTwenty = base + 45,
    lastBattleTowerFifteen = base + 46,
    orangeArchipelagoAccess = base + 47,
    lastBattleTowerTen = base + 48,
    isLevitating = base + 49,
    boughtRareCandy = base + 50,
    blockLogout = base + 51,
    pickedStoneOfKnowledge = base + 52,
    lastDexedTmItemId = base + 53,
    gotStarterPokemon = base + 54,
    lastMaxMembers = base + 55,
    rangerClubRank = base + 56,
    rangerClubTask = base + 57,
    rangerClubPoints = base + 58,
    individualCaughts = base + 59,
    traveling = base + 60,
    casedDolls = base + 61,
    lastUsedIncubatorMark = base + 62,
    autoLootSave = base + 63,
    deliveredEasterEggs = base + 64,
    colosseumnArenaPaid = base + 65,
    lastEliteFourTry = base + 66,
    blueDeliciousMachineLastUse = base + 67,
    greenDeliciousMachineLastUse = base + 68,
    redDeliciousMachineLastUse = base + 69,
    yellowDeliciousMachineLastUse = base + 70,
    lastMagicMaskUse = base + 71,
    lastEdBlackhoodTeleporterUse = base + 72,
    extraLootRateTime = base + 73,
    extraLootRateValue = base + 74,
    extraCatchRateTime = base + 75,
    extraCatchRateValue = base + 76,
    extraEggRateTime = base + 77,
    extraEggRateValue = base + 78,
    -- tournamentWeekWinnerStorage = base + 65
}


function getPlayerPokemon(cid)
    return getCreatureStorage(cid, playersStorages.pokemonUid)
end

