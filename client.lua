
local playerPed = GetPlayerPed(-1)

RegisterNetEvent('ivan:fix')
AddEventHandler('ivan:fix',function()
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 9999)
		SetVehiclePetrolTankHealth(vehicle, 9999)
		SetVehicleFixed(vehicle)
		TriggerEvent('chat:addMessage',{
			color = {255, 0, 0},
			args = {'El vehiculo ha sido arreglado correctamente.'}
		})
	end
end)

RegisterCommand('fix', function()
	TriggerEvent('ivan:fix', source)
end)

TriggerEvent('chat:addSuggestion', '/fix', 'Repara el vehiculo.')
