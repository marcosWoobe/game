function onUse (cid,item,frompos,item2,topos)
        premio = 11444 -- money			
        if item.uid == 2036 then
if getPlayerLevel(cid) <= 149 then
  doPlayerSendCancel(cid,'You need Level 150.')
return false
end
if getPlayerStorageValue(cid, 19096) == 1 then
        doPlayerSendTextMessage(cid,22,"Sorry not possible.")
return false end 
        doPlayerAddItem(cid,premio,32)
        doPlayerAddItem(cid,209,1)
setPlayerStorageValue(cid, 190966, 1)
        doPlayerSendTextMessage(cid,22,"Quest!.")
          end
  end