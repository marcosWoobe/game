function onSay(cid, words, param)

if param == '' then
   sendMsgToPlayer(cid, 20, "Param required.\n!task [name npc] or !task npcs")
   return true
end

if param == "npcs" or param == "Npcs" then
   local str = "Name of npcs of task: \n\n"
   local send = false
   for i = 91001, (91000+maxTasks) do
       if getPlayerStorageValue(cid, i) ~= -1 and tostring(getPlayerStorageValue(cid, i)) then
          local array = getArrayFromStorage(cid, i)
          if arrayHasContent(array) then
             for e, f in pairs(array) do
                 local j = e
                 if string.find(e, "Trainer") then
                    if getPlayerStorageValue(cid, 854789) == 5 then
                       j = j.."_1"
                    elseif getPlayerStorageValue(cid, 854789) == 7 then
                       j = j.."_2"
                    end
                 end
                 if npcsTask[j] then
                    str = str..e.."\n"
                    send = true
                 end
             end
          end
       end
   end
if send then
   doShowTextDialog(cid, 2395, str)
else
   doShowTextDialog(cid, 2395, "Você não esta fazendu nenhuma task no momento!")
end
return true
end   

local npc = doCorrectString(tostring(param))
local npc2 = npc
local sto = getMyTaskSto(cid, npc)
local str = "Name: "..npc..".\n"

if npcsTask[npc.."_1"] then
   if getPlayerStorageValue(cid, 854789) == 5 then
      npc2 = npc2.."_1"
   elseif getPlayerStorageValue(cid, 854789) == 7 then
      npc2 = npc2.."_2"
   end
end

if sto == -1 or not npcsTask[npc2] then
   doShowTextDialog(cid, 2395, "Você não possui nenhuma task desse npc!")
   return true
end
 
if isMyTaskComplete(cid, npc) then
   str = str.."Task: "..npcsTask[npc2][2]..".\n"
   str = str.."Status: Completed.\n"
   str = str.."City: "..npcsTask[npc2][1]..".\n"
   str = str.."Reward: "..npcsTask[npc2][3].."."
else
   str = str.."Task: "..npcsTask[npc2][2]..".\n"
   str = str.."Status: Not Completed.\n"
   str = str.."Have to Kill: "..getStingOfTask(cid, npc2)
   str = str.."\nSukitao "..getPlayerStorageValue(cid, 854787) 
   str = str.."\nSukitaoL "..getPlayerStorageValue(cid, 854789) 
   str = str.."\nCity: "..npcsTask[npc2][1]..".\n"
   str = str.."Reward: "..npcsTask[npc2][3].."."
      for i = 91001, (91000+maxTasks) do
       local sto = getPlayerStorageValue(cid, i)
       if type(sto) == "string" then
          local array = getArrayFromStorage(cid, i)
          if arrayHasContent(array) then
             for e, f in pairs(array) do
                 for a = 1, #f do
				    f[a][2] = f[a][2]
                    str = str.."\n Bonito"..i..": "..tostring(f[a][1]).." "..f[a][2]
					end
			end
		end
		end
		end 
		
		local array = getArrayFromStorage(cid, 91001)
		local count = 0
      for e, f in pairs(array) do
          for i = 1, #f do
              count = count+f[i][2] 
          end
      end
	   str = str.."\n Bon: "..count
end
doShowTextDialog(cid, 2395, str)
return true
end