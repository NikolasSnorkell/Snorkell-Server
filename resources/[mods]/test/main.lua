-- RegisterCommand("trunk",function() end)



RegisterCommand("hood",function()
   
local vehicle = GetPlayersLastVehicle()

if GetVehicleDoorAngleRatio(vehicle,4) == 0 then 
    
    SetVehicleDoorOpen(
       vehicle --[[ Vehicle ]], 
       4,
       false,false --[[ integer ]] 
        --[[ integer ]]
   ) 
   

   elseif GetVehicleDoorAngleRatio(vehicle,4) ~= 0 then   
       
       SetVehicleDoorShut(
       vehicle --[[ Vehicle ]], 
       4 --[[ integer ]], 
       false --[[ boolean ]]
   )
   
   end

end,false)

RegisterCommand("trunk",function()
   
    local vehicle = GetPlayersLastVehicle()

if GetVehicleDoorAngleRatio(vehicle,5) == 0 then 
    
 SetVehicleDoorOpen(
    vehicle --[[ Vehicle ]], 
    5,
    false,false --[[ integer ]] 
     --[[ integer ]]
) 

elseif GetVehicleDoorAngleRatio(vehicle,5) ~= 0 then   
    
    SetVehicleDoorShut(
    vehicle --[[ Vehicle ]], 
    5 --[[ integer ]], 
    false --[[ boolean ]]
)

end

end,false)

RegisterCommand("rdoors",function()
   
    local vehicle = GetPlayersLastVehicle()
    
    if GetVehicleDoorAngleRatio(vehicle,2) == 0 then 
        
        SetVehicleDoorOpen(
           vehicle --[[ Vehicle ]], 
           2,
           false,false --[[ integer ]] 
            --[[ integer ]]
       ) 
       
    
       elseif GetVehicleDoorAngleRatio(vehicle,2) ~= 0 then   
           
           SetVehicleDoorShut(
           vehicle --[[ Vehicle ]], 
           2 --[[ integer ]], 
           false --[[ boolean ]]
       )
       
       end

       if GetVehicleDoorAngleRatio(vehicle,3) == 0 then 
        
        SetVehicleDoorOpen(
           vehicle --[[ Vehicle ]], 
           3,
           false,false --[[ integer ]] 
            --[[ integer ]]
       ) 
       
    
       elseif GetVehicleDoorAngleRatio(vehicle,3) ~= 0 then   
           
           SetVehicleDoorShut(
           vehicle --[[ Vehicle ]], 
           3 --[[ integer ]], 
           false --[[ boolean ]]
       )
       
       end
    
    end,false)


    RegisterCommand("engineon",function()
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(player,false)
        -- print(IsVehicleEngineOnFire(GetPlayersLastVehicle()))
        
        
        -- if GetIsVehicleEngineRunning(vehicle)==true then

    SetVehicleEngineOn(
        vehicle --[[ Vehicle ]], 
        true --[[ boolean ]], 
        false --[[ boolean ]], 
        true --[[ boolean ]])
--     ) elseif GetIsVehicleEngineRunning(vehicle)==false then
--         SetVehicleEngineOn(
--         vehicle --[[ Vehicle ]], 
--         true --[[ boolean ]], 
--         false --[[ boolean ]], 
--         false --[[ boolean ]]
--     )
-- end
SetVehicleUndriveable(vehicle,false)


end)

RegisterCommand("engineoff",function()
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player,false)
    -- print(IsVehicleEngineOnFire(GetPlayersLastVehicle()))
    
    
    -- if GetIsVehicleEngineRunning(vehicle)==true then

SetVehicleEngineOn(
    vehicle --[[ Vehicle ]], 
    false --[[ boolean ]], 
    true --[[ boolean ]], 
    true --[[ boolean ]])
--     ) elseif GetIsVehicleEngineRunning(vehicle)==false then
--         SetVehicleEngineOn(
--         vehicle --[[ Vehicle ]], 
--         true --[[ boolean ]], 
--         false --[[ boolean ]], 
--         false --[[ boolean ]]
SetVehicleUndriveable(vehicle,true)
Citizen.Wait(0)
--     )
-- end

end)


RegisterCommand("flip", function()
  local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1),true)
    

    SetVehicleOnGroundProperly(
		vehicle --[[ Vehicle ]]
	)

end)






-- RegisterCommand("do", function(source, args, rawCommand)
RegisterCommand("wheel", function(source, args, rawCommand)
    local message = tonumber(table.concat(args, " ", 1))
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player,false)
print(message)
print("Size"..GetVehicleWheelSize(vehicle))
    SetVehicleWheelSize(vehicle, message);
end)



   

-- SetHydraulicWheelStateTransition(
-- 	vehicle --[[ Vehicle ]], 
-- 	wheelId --[[ integer ]], 
-- 	state --[[ integer ]], 
-- 	value --[[ number ]], 
-- 	p4 --[[ number ]]
-- )





-- RegisterCommand("do",function(source, args)


--     TriggerServerEvent("do",table.concat(args, " "))
    
--     -- msg_do("Some text")


-- end,false)

-- function msg_do(text)
--     TriggerEvent('chat:addMessage',{
--         color = { 255, 0, 0},
--         multiline = true,
--         args = { text,GetPlayerName(GetPlayerIndex())}
--       })
-- end

-- RegisterCommand("announce", function(source, args)
--     TriggerServerEvent('announce', table.concat(args, " "))
--      -- we have to concatenate the table because the 'args' cb return a table (array)
--      -- the 2nd parameter in 'table.concat' is just spacing each args out
-- end)


RegisterCommand("do", function(source, args, rawCommand)
    local message = table.concat(args, " ", 1)

    TriggerEvent("chatMessage", "^5".."^*".. message .."^0".. " - "  .. "^0[ ^5^*" .. GetPlayerName(source).."^0 ]")
end)


RegisterCommand("me", function(source, args, rawCommand)
    local message = table.concat(args, " ", 1)

    TriggerEvent("chatMessage", "^0^*[ " .. "^2"..  GetPlayerName(source).."^0 ]^2^* ".." ".. message )
end)

RegisterCommand("try", function(source, args, rawCommand)
    local message = table.concat(args, " ", 1)
    local key = math.random(2)
    
    local result

    if key==2 then result = "[^2Удачно^0]"
    elseif key==1 then result = "[^1Неудачно^0]"
    end

    TriggerEvent("chatMessage", "^*"..  GetPlayerName(source).."("..GetPlayerServerId(source)..")".." ".. message .." - " .. result)
    
end)







RegisterCommand("die",function()

SetEntityHealth(PlayerPedId(),0)

end)


RegisterCommand("heal",function()

    SetEntityHealth(PlayerPedId(),200)
   
    
    end)

    RegisterCommand("health",function()

        
        print(GetEntityHealth(PlayerPedId()))
        
        end)


        RegisterCommand("clear", function()
            RemoveAllPedWeapons(GetPlayerPed(-1), true)
            SetNotificationTextEntry("STRING")
            AddTextComponentString("Cleared all weapons")
            DrawNotification(true,false)
        end)



function spawnCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, x + 2, y + 2, z + 1, 0.0, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
end


function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end


function giveWeapon(weaponHash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponHash), 999, false, false --[[equips when gotten]])
end

function weaponComponent(weaponHash, component)
    if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(weaponHash), false) then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(weaponHash), GetHashKey(component))
     end
end


RegisterCommand("veh",function(source, args)
    local message = table.concat(args, " ", 1)

    spawnCar(message)
    notify(message .."  spawned")
    

    
        
    
    end)


    RegisterCommand("w",function(source, args)
        local message = table.concat(args, " ", 1)
    
        giveWeapon("weapon_"..message)
        notify("You got "..message)
        
    
        end)

        RegisterCommand("ws",function(source, args)
            local message = table.concat(args, " ", 1)
        
            giveWeapon("weapon_"..message)
            weaponComponent("weapon_"..message, "COMPONENT_AT_PI_SUPP_02")
            weaponComponent("weapon_"..message, "COMPONENT_AT_PI_SUPP")
            weaponComponent("weapon_"..message, "COMPONENT_AT_AR_SUPP_02")
            weaponComponent("weapon_"..message, "COMPONENT_AT_PI_SUPP")
            weaponComponent("weapon_"..message, "COMPONENT_AT_AR_SUPP_02")
            weaponComponent("weapon_"..message, "COMPONENT_AT_PI_SUPP")
            weaponComponent("weapon_"..message, "COMPONENT_AT_SR_SUPP")
            weaponComponent("weapon_"..message, "COMPONENT_AT_AR_SUPPw")
            weaponComponent("weapon_"..message, "COMPONENT_AT_AR_SUPP")
            
            notify("You got "..message .."with suppressor")
            
        
            end)

        


