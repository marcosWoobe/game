function onCastSpell(cid, var)
    -----------------\/padrão para todos os arquivos------------
    
     --Posições--
    ---------------\/---------------------\/----------------------\/---------------------------------------------------------
    posC = getThingPosWithDebug(cid) PosC = posC PosCid = posC posCid = posC
    posT = getThingPosWithDebug(target) PosT = posT PosTarget = posT posTarget = posT 
    posC1 = getThingPosWithDebug(cid) posC1.x = posC1.x+1 posC1.y = posC1.y+1 PosC1 = posC1 posCid1 = posC1 PosCid1 = posC1 
    posT1 = getThingPosWithDebug(target) posT1.x = posT1.x+1 posT1.y = posT1.y+1 PosT1 = posT1 posTarget1 = posT1 PosTarget1 = posT1
    --------------------------------------------------------------------------------------------------------------------------

    local spell = var
    local target = 0
    local getDistDelay = 0
    if not isCreature(cid) or getCreatureHealth(cid) <= 0 then return false end  --alterado v1.6
    if isSleeping(cid) and getPlayerStorageValue(cid, 21100) <= -1 then return true end  --alterado v1.6

    if isCreature(getMasterTarget(cid)) then
        target = getMasterTarget(cid)
        getDistDelay = getDistanceBetween(getThingPosWithDebug(cid), getThingPosWithDebug(target)) * const_distance_delay
    end

    if isMonster(cid) and not isSummon(cid) then
        if getCreatureCondition(cid, CONDITION_EXHAUST) then
            return true
        end
        doCreatureAddCondition(cid, wildexhaust)
    end

    local mydir = isCreature(target) and getCreatureDirectionToTarget(cid, target) or getCreatureLookDir(cid)
    local table = getTableMove(cid, spell) --alterado v1.6

    local min = 0
    local max = 0                                                                                                                                                                                                                                                                     
                                                                                       --alterado v1.7 \/\/
    if ehMonstro(cid) and isCreature(getMasterTarget(cid)) and isInArray(specialabilities["evasion"], getCreatureName(getMasterTarget(cid))) then 
        local target = getMasterTarget(cid)
        if math.random(1, 100) <= passivesChances["Evasion"][getCreatureName(target)] then                                                                                      
            if isCreature(getMasterTarget(target)) then  --alterado v1.6 
                doSendMagicEffect(getThingPosWithDebug(target), 211)
                doSendAnimatedText(getThingPosWithDebug(target), "TOO BAD", 215)                                 
                doTeleportThing(target, getClosestFreeTile(target, getThingPosWithDebug(cid)), false)
                doSendMagicEffect(getThingPosWithDebug(target), 211)
                doFaceCreature(target, getThingPosWithDebug(cid)) 
                return false    --alterado v1.8
            end
        end          
    end

    --- FEAR / ROAR / SILENCE ---
    if (isWithFear(cid) or isSilence(cid)) and getPlayerStorageValue(cid, 21100) <= -1 then
        return true                                      --alterado v1.6!!
    end
    ----------------------------
    
    if not isPlayer(cid) then
        if table ~= "" then   --alterado v1.6
    
            local mutiplay = 0.1

            --clã masterx
            local master = getCreatureMaster(cid)
            if isSummon(cid) then
                if getPlayerClanName(master) ~= 'No Clan!' then
                    if getPokeClan(master, getCreatureName(cid)) then
                        if isInArray({"Ironhard", "Raibolt", "Psycraft", "Volcanic"}, getPlayerClanName(master)) then
                            formula = 0.01
                        else
                            formula = 0.007
                        end
                        mutiplay = mutiplay * tonumber(getPercentClan(master) + (getPlayerSkillLevel(master, 2) * formula))
                    end
                end 
            end
            --clã masterx

            if getSpecialAttack(cid) and table.f then
                min = getSpecialAttack(cid) * table.f * mutiplay
            end
            max = min + (isSummon(cid) and getMasterLevel(cid) or getPokemonLevel(cid))
    
            if spell == "Selfdestruct" then
                min = getCreatureHealth(cid)  --alterado v1.6
                max = getCreatureHealth(cid)
            end
    
            if not isSummon(cid) and not isInArray({"Demon Puncher", "Demon Kicker"}, spell) then --alterado v1.7
                doCreatureSay(cid, string.upper(spell).."!", TALKTYPE_MONSTER)
            end
            if isNpcSummon(cid) then
                local mnn = {" use ", " "}
                local use = mnn[math.random(#mnn)]
                doCreatureSay(getCreatureMaster(cid), getPlayerStorageValue(cid, 1007)..","..use..""..doCorrectString(spell).."!", 1)
            end
        else
            print("Error trying to use move "..spell..", move not specified in the pokemon table.")
        end 
    end
    --- FOCUS ----------------------------------            
    if getPlayerStorageValue(cid, 253) >= 0 and table ~= "" and table.f ~= 0 then   --alterado v1.6
        min = min * 2
        max = max * 2
        setPlayerStorageValue(cid, 253, -1)
    end
    --- Shredder Team -------------------------------
    if getPlayerStorageValue(cid, 637501) >= 1 then
        if #getCreatureSummons(cid) == 1 then
            docastspell(getCreatureSummons(cid)[1], spell)
        elseif #getCreatureSummons(cid) == 2 then
            docastspell(getCreatureSummons(cid)[1], spell)
            docastspell(getCreatureSummons(cid)[2], spell)
        end    
      
    elseif getPlayerStorageValue(cid, 637500) >= 1 then
        min = 0
        max = 0                                     
    end
    ------------------Miss System--------------------------
    local cd = getPlayerStorageValue(cid, conds["Miss"])
    local cd2 = getPlayerStorageValue(cid, conds["Confusion"])      --alterado v1.5
    local cd3 = getPlayerStorageValue(cid, conds["Stun"]) 
    if cd >= 0 or cd2 >= 0 or cd3 >= 0 then                                                         --alterado v1.7
        if not isInArray({"Aromateraphy", "Emergency Call", "Magical Leaf", "Sunny Day", "Safeguard", "Rain Dance"}, spell) and getPlayerStorageValue(cid, 21100) <= -1 then
            if math.random(1, 100) > 85 then                                                                               --alterado v1.6
                doSendAnimatedText(getThingPosWithDebug(cid), "MISS", 215)
                return false
            end
        end
    end
    ---------------GHOST DAMAGE-----------------------
    ghostDmg = GHOSTDAMAGE
    psyDmg = PSYCHICDAMAGE

    if getPlayerStorageValue(cid, 999457) >= 1 and table ~= "" and table.f ~= 0 then    --alterado v1.6
        psyDmg = MIRACLEDAMAGE                                                              
        ghostDmg = DARK_EYEDAMAGE
        addEvent(setPlayerStorageValue, 50, cid, 999457, -1)
    end
    --------------------REFLECT----------------------
    setPlayerStorageValue(cid, 21100, -1)                --alterado v1.6
    if not isInArray({"Psybeam", "Sand Attack", "Flamethrower"}, spell) then  --alterado v1.8
        setPlayerStorageValue(cid, 21101, -1)
    end
    setPlayerStorageValue(cid, 21102, spell)

    -- POS

    posC = getThingPosWithDebug(cid) PosC = posC PosCid = posC posCid = posC
    posT = getThingPosWithDebug(target) PosT = posT PosTarget = posT posTarget = posT 
    posC1 = getThingPosWithDebug(cid) posC1.x = posC1.x+1 posC1.y = posC1.y+1 PosC1 = posC1 posCid1 = posC1 PosCid1 = posC1 
    posT1 = getThingPosWithDebug(target) posT1.x = posT1.x+1 posT1.y = posT1.y+1 PosT1 = posT1 posTarget1 = posT1 PosTarget1 = posT1

    ---------------------fim da padrão /\ e aparti daqui \/ é o code da spell------------------------------

		local atk = { -- missile, effect
			["Rock Slide"] = {11, 44, 0, 176, 70, 716}, -- padrão, crystal, lava
			--Stone Edge"] = {11, 239}
		} 
		if isInArray({"Numel", "Shiny Numel", "Camerupt", "Shiny Camerupt", "Mega Camerupt", "Magcargo", "Shiny Magcargo", "Slugma", "Shiny Slugma"}, getSubName(cid, target)) then
			effD = atk[spell][5]
			eff = atk[spell][6]
		elseif isInArray({"Crystal Onix", "Crystal Steelix"}, getSubName(cid, target)) then
			effD = atk[spell][3]
			eff = atk[spell][4]
		else
			effD = atk[spell][1]
			eff = atk[spell][2]
		end
		
		--alterado v1.7
		local function doRockFall(cid, frompos, target)
			if not isCreature(target) or not isCreature(cid) then return true end
			local pos = getThingPosWithDebug(target)
			local ry = math.abs(frompos.y - pos.y)
			doSendDistanceShoot(frompos, getThingPosWithDebug(target), effD)
			--	doSendMagicEffect(frompos, 132) -- testando
			addEvent(doDanoInTarget, ry * 15, cid, target, ROCKDAMAGE, min, max, eff) --alterado v1.7
		end
		
		local function doRockUp(cid, target)
			if not isCreature(target) or not isCreature(cid) then return true end
			local pos = getThingPosWithDebug(cid)
			local xrg = math.floor((pos.x-1 - pos.x-6))
			local topos = pos
			topos.x = topos.x + xrg
			local rd = 8
			topos.y = topos.y - rd
			doSendDistanceShoot(getThingPosWithDebug(cid), topos, effD)
			addEvent(doRockFall, rd * 49, cid, topos, target)
		end		
		
		setPlayerStorageValue(cid, 3644587, 1)
		addEvent(setPlayerStorageValue, 350, cid, 3644587, -1)
		for thnds = 1, 2 do
			addEvent(doRockUp, thnds * 155, cid, target)
		end 






    
return true
end