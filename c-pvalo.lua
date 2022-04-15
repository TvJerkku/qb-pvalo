local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    while true do
           Citizen.Wait(0)
           local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
           local vehicleClass = GetVehicleClass(vehicle)
  
           if vehicleClass == 18 then
                
            if IsControlJustReleased(0, 174) then
                SetVehicleExtra(vehicle, 1, false)
                SetVehicleAutoRepairDisabled(vehicle, true)
                QBCore.Functions.Notify("Pysäytysvalo: päällä")
            end
                if IsControlJustReleased(0, 175) then
                SetVehicleExtra(vehicle, 1, true)
                SetVehicleAutoRepairDisabled(vehicle, true)
                QBCore.Functions.Notify("Pysäytysvalo: pois")
            end
        end
    end
end)
