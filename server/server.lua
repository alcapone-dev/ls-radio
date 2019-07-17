ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('radio', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('ls-radio:use', source)

end)
