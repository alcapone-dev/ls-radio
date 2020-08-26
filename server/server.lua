ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('radio', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('ls-radio:use', source)

end)

-- Only opens radio with /radio if player has item

RegisterServerEvent('ls-radio:checkcount')
AddEventHandler('ls-radio:checkcount', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('radio').count >= 1 then
		TriggerClientEvent('ls-radio:hasradio', _source)
	else 
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You dont have a radio, buy one at your local store', length = 7000})
	end
end)


-- Removes player from radio channel if radio item is lost

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1000)
    local xPlayers = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
          if xPlayer ~= nil then
              if xPlayer.getInventoryItem('radio').count == 0 then

                local source = xPlayers[i]
                TriggerEvent("TokoVoip:removePlayerFromAllRadio", source)
              end
            end
          end
        end
      end)
