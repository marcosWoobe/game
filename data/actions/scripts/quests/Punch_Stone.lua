function onUse (cid,item,frompos,item2,topos)
    UID_DO_BAU = 2231
    STORAGE_VALUE = 2231
    ID_DO_PREMIO = 11446

    if item.uid == UID_DO_BAU then
        queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
        if queststatus == -1 then
		    --doSendMagicEffect(pos, CONST_ME_TELEPORT)
            doPlayerSendTextMessage(cid,22,"Parabens voce ganhou 1x Punch Stone.") -- Msg que ira aparecer
            doPlayerAddItem(cid,ID_DO_PREMIO,1)
            setPlayerStorageValue(cid,STORAGE_VALUE,1)
        else
            doPlayerSendTextMessage(cid,22,"Ta vazio.")
        end
    end
return 1
end