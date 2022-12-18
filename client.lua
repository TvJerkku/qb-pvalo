local QBCore = exports['qb-core']:GetCoreObject()

local toggle = false

local Config = {
    ["extra"] = 1,
    ["vehicleClass"] = 18,
}

RegisterKeyMapping('pysäytysvalo', 'Pysäytysvalo ON/OFF', 'keyboard', 'e') 

RegisterCommand('pysäytysvalo', function()
    toggle = not toggle
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local vehicleClass = GetVehicleClass(vehicle)
    
    if vehicleClass == Config.vehicleClass then
        if toggle then
            SetVehicleExtra(vehicle, Config.extra, false)
            SetVehicleAutoRepairDisabled(vehicle, true)
            QBCore.Functions.Notify("Pysäytysvalo: päällä")
        else
            SetVehicleExtra(vehicle, Config.extra, true)
            SetVehicleAutoRepairDisabled(vehicle, true)
            QBCore.Functions.Notify("Pysäytysvalo: pois")
        end
    end
end, false)