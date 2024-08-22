TriggerEvent('esx_society:registerSociety', 'burgershot', 'burgershot', 'society_burgershot', 'society_burgershot', 'society_burgershot', {type = 'public'})

ESX = exports["es_extended"]:getSharedObject()

local Jobburgershot = {
    ['burgershot'] = true,
}


local function handleAnnonceBurgerShot(eventType, input)
    local xPlayer = ESX.GetPlayerFromId(source)

    if Jobburgershot[xPlayer.job.name] then
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Burgershot', eventType, input, 'CHAR_LIFEINVADER', 7)
        exports.LSD_:SendLogs(1752220, "Notif Job : " .. xPlayer.job.name, GetPlayerName(source) .. " a écrit : " .. input .. "\nLicense de la source : " .. xPlayer.identifier, Config.Webhooks.Notif)
    else
        DropPlayer(source, "Vous avez tenté de faire une annonce. Raison : Ce n'est pas votre job")
        exports.LSD_:SendLogs(1752220, "Notif Job : Cheat", GetPlayerName(source) .. "\nLicense de la source : " .. xPlayer.identifier, Config.Webhooks.Cheat)
    end
end

RegisterNetEvent("Annonceburgershotferm")
AddEventHandler("Annonceburgershotferm", function(input)
    handleAnnonceBurgerShot("Fermeture", input)
end)

RegisterNetEvent("Annonceburgershotouv")
AddEventHandler("Annonceburgershotouv", function(input)
    handleAnnonceBurgerShot("Ouverture", input)
end)

RegisterNetEvent("Annonceburgershotinf")
AddEventHandler("Annonceburgershotinf", function(input)
    handleAnnonceBurgerShot("Information", input)
end)



RegisterServerEvent('az_restobar:add')
AddEventHandler('az_restobar:add', function(type, amount, name)
	local xPlayer  = ESX.GetPlayerFromId(source)
	if type == 'money' then
		xPlayer.addMoney(amount)
		TriggerClientEvent('esx:showNotification', source, 'Tu a recu $'..amount 'success')
	elseif type == 'item' then
		xPlayer.addInventoryItem(name, amount)
        exports.LSD_:SendLogs(1752220,"Craft",""..GetPlayerName(source).."A craft : "..name.."Nombre : "..amount.."\n License de la source : "..xPlayer.identifier, Config.Webhooks.Craft)
	end
end)

RegisterServerEvent('az_restobar:remove')
AddEventHandler('az_restobar:remove', function(type, amount, name)
	local xPlayer  = ESX.GetPlayerFromId(source)
	if type == 'money' then
		xPlayer.removeMoney(amount)
	elseif type == 'item' then
		xPlayer.removeInventoryItem(name, amount)
	end
end)

ESX.RegisterServerCallback('az_restobar:getItemAmount', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem(item).count

	cb(quantity)
end)

local ox_inventory = exports.ox_inventory

local burgershot = {
    id = 'burgershot',
    label = 'Coffre BurgerShot',
    slots = 50,
    weight = 100000,
    groups = {
        police = 0,
        burgershot = 0, 
    },
}
 
AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        exports.ox_inventory:RegisterStash(burgershot.id, burgershot.label, burgershot.slots, burgershot.weight, burgershot.owner)
    end
end)



function SendLogs(channelId, title, message, webhook)
    local connect = {
        {
            ["color"] = 16711680, -- Couleur du message
            ["title"] = title,
            ["description"] = message,
            ["footer"] = {
            ["text"] = "Logs",
            },
        }
    }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "Logs", embeds = connect}), { ['Content-Type'] = 'application/json' })
end

exports('SendLogs', SendLogs)
