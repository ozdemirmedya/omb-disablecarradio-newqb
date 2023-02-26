--- OMB Development 
--- https://discord.gg/qAj3qCNMsY


local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData                = {}

Citizen.CreateThread(function()
    
    Citizen.Wait(5000)
	PlayerData = QBCore.Functions.GetPlayerData()

    while true do
        Citizen.Wait(1000)
            if IsPedInAnyVehicle(PlayerPedId()) then
                SetUserRadioControlEnabled(false)
                if GetPlayerRadioStationName() ~= nil then
                SetVehRadioStation(GetVehiclePedIsIn(PlayerPedId()),"OFF")
                end
        end
    end
end)


--- OMB Development 
--- https://discord.gg/qAj3qCNMsY
