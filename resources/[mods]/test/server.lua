-- RegisterServerEvent("do"
-- AddEventHandler("do", function(param)
--     print("^3"param.."^3"GetPlayerName(GetPlayerIndex()))
--     TriggerClientEvent("chat:addMessage",-1,param,GetPlayerName(GetPlayerIndex()))

-- end)

RegisterServerEvent('do')
AddEventHandler('do', function(param)
  --print('^7[^1Announcement^7]^5:'.. param)
  print("^5".."^*".. param .."^0".. " - "  .. "^0[ ^5^*" .. GetPlayerName(source).."^0 ]")
  TriggerClientEvent('chatMessage', -1, "^5".."^*".. param .."^0".. " - "  .. "^0[ ^5^*" .. GetPlayerName(source).."^0 ]")
end)

RegisterServerEvent('me')
  AddEventHandler('me', function(param)
    --print('^7[^1Announcement^7]^5:'.. param)
    print("^0^*[ " .. "^2"..  GetPlayerName(source).."^0 ]^2^* ".." ".. param)
    TriggerClientEvent('chatMessage', -1, "^0^*[ " .. "^2"..  GetPlayerName(source).."^0 ]^2^* ".." ".. param)
  end)

  RegisterServerEvent('try')
  AddEventHandler('try', function(param, res)
    --print('^7[^1Announcement^7]^5:'.. param)
    print("^*"..  GetPlayerName(source).." ".. param .." - " .. res)
    TriggerClientEvent('chatMessage', -1, "^*"..  GetPlayerName(source).." ".. param.." - " .. res)
  end)
