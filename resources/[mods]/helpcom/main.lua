


local display = false
local k = 1

RegisterCommand("help", function()
    Citizen.CreateThread(function()
        if k==0 then
                TriggerEvent('nui:on', true)
                

        elseif k==1 then TriggerEvent("nui:off", true)
            
        end
    
        

    end)

    
    
end)


  


--   RegisterCommand("off", function()
--     Citizen.CreateThread(function()
--         TriggerEvent("nui:off", true)
        
--     end)
--   end)

  --[[ ////////////////////////////////////////// ]]



  RegisterNetEvent('nui:off')
  AddEventHandler('nui:off', function()
    SendNUIMessage({
      type = "ui",
      display = false
      
    }
    )
    k=0
  end)

  RegisterNetEvent('nui:on')
  AddEventHandler('nui:on', function()
    SendNUIMessage({
      type = "ui",
      display = true
      
    }
    )
    k=1
  end)