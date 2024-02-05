function onCastSpell(cid, var)
    -----------------\/padrão para todos os arquivos------------
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
	
            if getSpecialAttack(cid) and table.f then 
                min = getSpecialAttack(cid) * table.f * 0.25   --alterado v1.6
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
    ---------------------fim da padrão /\ e aparti daqui \/ é o code da spell------------------------------




local random = math.random(1, 3)

   if random == 1 then
      local ret = {}
      ret.id = 0
      ret.cd = math.random(6, 9)
      ret.check = 0                   --alterado v2.6
      ret.first = true
      ret.cond = "Sleep"
	
      doMoveInArea2(cid, 27, confusion, NORMALDAMAGE, 0, 0, "Spores Reaction", ret)
   elseif random == 2 then 
      local ret = {}
      ret.id = 0
      ret.cd = 9
      ret.eff = 0
      ret.check = 0
      ret.spell = spell
      ret.cond = "Miss"
    
      doMoveInArea2(cid, 85, confusion, NORMALDAMAGE, 0, 0, "Spores Reaction", ret)    
   else
      local ret = {}
      ret.id = 0
      ret.cd = math.random(6, 15)
      ret.check = 0
      local lvl = isSummon(cid) and getMasterLevel(cid) or getPokemonLevel(cid)     --alterado v2.6
      ret.damage = math.floor((getPokemonLevel(cid)+lvl)* 1000)
      ret.cond = "Poison"                              

      doMoveInArea2(cid, 84, confusion, NORMALDAMAGE, 0, 0, "Spores Reaction", ret) 
   end

return true
end
