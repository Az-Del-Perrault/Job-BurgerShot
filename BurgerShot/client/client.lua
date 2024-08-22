ESX = exports["es_extended"]:getSharedObject()

local ox_inventory = exports.ox_inventory

local function handleBurgerShotAnnonce(eventName)
    local input = lib.inputDialog('Annonce', {'Entrez votre annonce ici'})
    
    if input and input[1] ~= nil and #input[1] > 5 then
        local test = input[1]
        TriggerServerEvent(eventName, test, notif)
    else
        ESX.ShowNotification("~r~Vous devez avoir au minimum 5 caractères")
    end
end

RegisterNetEvent('burgershotnotifouv')
AddEventHandler('burgershotnotifouv', function()
    handleBurgerShotAnnonce("Annonceburgershotouv")
end)

RegisterNetEvent('burgershotnotifferm')
AddEventHandler('burgershotnotifferm', function()
    handleBurgerShotAnnonce("Annonceburgershotferm")
end)

RegisterNetEvent('burgershotnotifinf')
AddEventHandler('burgershotnotifinf', function()
    handleBurgerShotAnnonce("Annonceburgershotinf")
end)


RegisterNetEvent('borne:burgershot')
AddEventHandler('borne:burgershot', function()
    TriggerEvent('openMenu', 'burgershot')
end)

RegisterNetEvent('coffre:burgershot')
AddEventHandler('coffre:burgershot', function()
    ox_inventory:openInventory('stash', 'burgershot')
end)

RegisterNetEvent('burgershotbossactions')
AddEventHandler('burgershotbossactions', function()
	OpenBoss()
end)

function OpenBoss()
	TriggerEvent('esx_society:openBossMenu', 'burgershot', function(data, menu)
		menu.close()
	end, { wash = false })
end

RegisterNetEvent('createInvoice')
AddEventHandler('createInvoice', function()
    local inputs = lib.inputDialog('Créer une Facture', {
        {label = 'Montant', type = 'number'},
        {label = 'Raison', type = 'input'}
    })

    if inputs then
        local amount = tonumber(inputs[1])
        local raison = inputs[2]
     
        if amount == nil or amount < 0 then
            ESX.ShowNotification('Montant Invalide')
        else
            local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
            if closestPlayer == -1 or closestDistance > 4.0 then
                ESX.ShowNotification('Personne proche!')
            else
                TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_burgershot', raison, amount)
            end
        end
    end
end)



local zones = {
    {
        name = "burgershotnotif",
        coords = Config.Locations.Notif,
        dimensions = {2.0, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "burgershotnotifouv",
                label = "Annonce Ouverture",
                job = "burgershot",
                icon = "fa-solid fa-bullhorn"
            },
            {
                event = "burgershotnotifferm",
                label = "Annonce Fermeture",
                job = "burgershot",
                icon = "fa-solid fa-bullhorn"
            },
            {
                event = "burgershotnotifinf",
                label = "Annonce Information",
                job = "burgershot",
                icon = "fa-solid fa-bullhorn"
            },
            {
                event = "createInvoice",
                label = "Faire une facture",
                job = "burgershot",
                icon = "fa-solid fa-bullhorn"
            },
        },
        distance = 2.5
    },
    {
        name = "BurgerCook",
        coords = Config.Locations.Cook,
        dimensions = {2.0, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "burgercook",
                label = "Préparer des burgers",
                job = "burgershot",
                icon = "fa-solid fa-burger"
            }
        },
        distance = 2.5
    },
    {
        name = "BurgerFrite",
        coords = Config.Locations.Frite,
        dimensions = {2.2, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "burgerfrite",
                label = "Préparer des Frites",
                job = "burgershot",
                icon = "fa-solid fa-utensils"
            }
        },
        distance = 2.5
    },
    {
        name = "BurgerGlace",
        coords = Config.Locations.Glace,
        dimensions = {2.2, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "burgerglace",
                label = "Préparer des galce",
                job = "burgershot",
                icon = "fa fa-ice-cream"
            }
        },
        distance = 2.5
    },
    {
        name = "Borne1",
        coords = Config.Locations.Borne1,
        dimensions = {2.0, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "borne:burgershot",
                label = "Acceder à la borne",
                job = nil,
                icon = "fa-solid fa-bag-shopping"
            }
        },
        distance = 2.5
    },
    {
        name = "Borne2",
        coords = Config.Locations.Borne2,
        dimensions = {2.0, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "borne:burgershot",
                label = "Acceder à la borne",
                job = nil,
                icon = "fa-solid fa-bag-shopping"
            }
        },
        distance = 2.5
    },
    {
        name = "Borne3",
        coords = Config.Locations.Borne3,
        dimensions = {2.0, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "borne:burgershot",
                label = "Acceder à la borne",
                job = nil,
                icon = "fa-solid fa-bag-shopping"
            }
        },
        distance = 2.5
    },
    {
        name = "Borne4",
        coords = Config.Locations.Borne4,
        dimensions = {2.0, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "borne:burgershot",
                label = "Acceder à la borne",
                job = nil,
                icon = "fa-solid fa-bag-shopping"
            }
        },
        distance = 2.5
    },

    {
        name = "Coffre",
        coords = Config.Locations.Coffre,
        dimensions = {2.0, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "coffre:burgershot",
                label = "Acceder à la chambre froide",
                job = "burgershot",
                icon = "fa-solid fa-box-open"
            }
        },
        distance = 2.5
    },

    {
        name = "Boss",
        coords = Config.Locations.Boss,
        dimensions = {2.0, 1},
        heading = 35,
        minZ = 12.98,
        maxZ = 14.98,
        options = {
            {
                event = "burgershotbossactions",
                label = "Acceder aux ation du boss",
                job = "burgershot",
                icon = "fa-solid fa-box-open"
            }
        },
        distance = 2.5
    },
}

-- Add each zone to qtarget
for _, zone in ipairs(zones) do
    exports.qtarget:AddBoxZone(zone.name, zone.coords, zone.dimensions[1], zone.dimensions[2], {
        name = zone.name,
        heading = zone.heading,
        debugPoly = false,
        minZ = zone.minZ,
        maxZ = zone.maxZ
    }, {
        options = zone.options,
        distance = zone.distance
    })
end



RegisterNetEvent('burgercook')
AddEventHandler('burgercook', function()
	lib.registerContext({
		id = 'burgercook',
		title = 'Actions Cuisson',
		onExit = function()
		end,
		options = {
			{
                title = 'Faire un hamburger',
                icon = "fa fa-cutlery",
                description = 'Ingrédients ->1x Pain Burger 1x Steak Haché, 1x Salade, 1x Tomate, 1x Cheddar',
                onSelect = function(args)
                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityPainburger)
                        if quantityPainburger >= 1 then
                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantitySteak)
                                if quantitySteak >= 1 then
                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityLettuce)
                                        if quantityLettuce >= 1 then
                                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityTomato)
                                                if quantityTomato >= 1 then
                                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityCheddar)
                                                        if quantityCheddar >= 1 then

                                                            Citizen.CreateThread(function()
                                                                TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
                                                                lib.progressCircle({
                                                                    name = "making_burger",
                                                                    duration = 15500,
                                                                    label = "Préparation du hamburger",
                                                                    useWhileDead = false,
                                                                    canCancel = false,
                                                                    position = "bottom",
                                                                    controlDisables = {
                                                                        disableMovement = true,
                                                                        disableCarMovement = false,
                                                                        disableMouse = false,
                                                                        disableCombat = true,
                                                                    }
                                                                })
            
            
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'painburger')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'salade')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'viande')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'tomate')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'cheddar')
                                                                TriggerServerEvent('az_restobar:add', 'item', 1, 'burgerbuff')
                                                                ESX.ShowNotification('Excellent hamburger!')
                                                                ClearPedTasksImmediately(PlayerPedId())
                                                            end)
                                                        else
                                                            ESX.ShowNotification("Tu n'as pas assez de cheddar")
                                                        end
                                                    end, 'cheddar')
                                                else
                                                    ESX.ShowNotification("Tu n'as pas assez de tomate")
                                                end
                                            end, 'tomate')
                                        else
                                            ESX.ShowNotification("Tu n'as pas assez de salade")
                                        end
                                    end, 'salade')
                                else
                                    ESX.ShowNotification("Tu n'as pas assez de viande")
                                end
                            end, 'viande')
                        else
                            ESX.ShowNotification("Tu n'as pas assez de Pain Burger")
                        end
                    end, 'painburger')
                end,
            },
            
			
			{
				title = 'Faire un hamburger au Poulet',
				icon = "fa fa-cutlery",
                description = 'Ingrédients ->1x Pain Burger, 1x poulet, 1x Salade, 1x Tomate, 1x Cheddar',
                onSelect = function(args)
                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityPainburger)
                        if quantityPainburger >= 1 then
                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantitySteak)
                                if quantitySteak >= 1 then
                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityLettuce)
                                        if quantityLettuce >= 1 then
                                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityTomato)
                                                if quantityTomato >= 1 then
                                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityCheddar)
                                                        if quantityCheddar >= 1 then

                                                            Citizen.CreateThread(function()
                                                                TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
                                                                lib.progressCircle({
                                                                    name = "making_burger",
                                                                    duration = 15500,
                                                                    label = "Préparation du hamburger",
                                                                    useWhileDead = false,
                                                                    canCancel = false,
                                                                    position = "bottom",
                                                                    controlDisables = {
                                                                        disableMovement = true,
                                                                        disableCarMovement = false,
                                                                        disableMouse = false,
                                                                        disableCombat = true,
                                                                    }
                                                                })
            
                                                                ClearPedTasksImmediately(PlayerPedId())
            
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'painburger')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'salade')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'poulet')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'tomate')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'cheddar')
                                                                TriggerServerEvent('az_restobar:add', 'item', 1, 'burgerpoulet')
                                                                ESX.ShowNotification('Excellent hamburger!')
                                                            end)
                                                        else
                                                            ESX.ShowNotification("Tu n'as pas assez de cheddar")
                                                        end
                                                    end, 'cheddar')
                                                else
                                                    ESX.ShowNotification("Tu n'as pas assez de tomate")
                                                end
                                            end, 'tomate')
                                        else
                                            ESX.ShowNotification("Tu n'as pas assez de salade")
                                        end
                                    end, 'salade')
                                else
                                    ESX.ShowNotification("Tu n'as pas assez de poulet")
                                end
                            end, 'poulet')
                        else
                            ESX.ShowNotification("Tu n'as pas assez de Pain Burger")
                        end
                    end, 'painburger')
                end,
            },

            {
                title = 'Faire un Burger au poisson',
                icon = "fa fa-cutlery",
                description = 'Ingrédients ->1x Pain Burger, 1x Poisson, 1x Salade, 1x Tomate, 1x Cheddar',
                onSelect = function(args)
                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityPainburger)
                        if quantityPainburger >= 1 then
                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantitySteak)
                                if quantitySteak >= 1 then
                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityLettuce)
                                        if quantityLettuce >= 1 then
                                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityTomato)
                                                if quantityTomato >= 1 then
                                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityCheddar)
                                                        if quantityCheddar >= 1 then

                                                            Citizen.CreateThread(function()
                                                                TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
                                                                lib.progressCircle({
                                                                    name = "making_burger",
                                                                    duration = 15500,
                                                                    label = "Préparation du hamburger",
                                                                    useWhileDead = false,
                                                                    canCancel = false,
                                                                    position = "bottom",
                                                                    controlDisables = {
                                                                        disableMovement = true,
                                                                        disableCarMovement = false,
                                                                        disableMouse = false,
                                                                        disableCombat = true,
                                                                    }
                                                                })
                                                                ClearPedTasksImmediately(PlayerPedId())
            
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'painburger')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'salade')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'viande')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'tomate')
                                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'cheddar')
                                                                TriggerServerEvent('az_restobar:add', 'item', 1, 'burgerbuff')
                                                                ESX.ShowNotification('Excellent hamburger!')
                                                            end)
                                                        else
                                                            ESX.ShowNotification("Tu n'as pas assez de cheddar")
                                                        end
                                                    end, 'cheddar')
                                                else
                                                    ESX.ShowNotification("Tu n'as pas assez de tomate")
                                                end
                                            end, 'tomate')
                                        else
                                            ESX.ShowNotification("Tu n'as pas assez de salade")
                                        end
                                    end, 'salade')
                                else
                                    ESX.ShowNotification("Tu n'as pas assez de poisson")
                                end
                            end, 'poisson')
                        else
                            ESX.ShowNotification("Tu n'as pas assez de Pain Burger")
                        end
                    end, 'painburger')
                end,
            },
            {
                title = 'Faire un Chicken Wrap',
                icon = "fa fa-cutlery",
                description = 'Ingrédients -> 1x Poulet, 1x Wrap, 1x Salade',
                onSelect = function(args)
                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityChicken)
                        if quantityChicken >= 1 then
                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityWrap)
                                if quantityWrap >= 1 then
                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityLettuce)
                                        if quantityLettuce >= 1 then
                                            Citizen.CreateThread(function()
                                                TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BBQ", 0, true)
                                                lib.progressCircle({
                                                    name = "making_chicken_wrap",
                                                    duration = 15500,
                                                    label = "Préparation Chicken Wrap",
                                                    useWhileDead = false,
                                                    canCancel = false,
                                                    position = "bottom",
                                                    controlDisables = {
                                                        disableMovement = true,
                                                        disableCarMovement = false,
                                                        disableMouse = false,
                                                        disableCombat = true,
                                                    }
                                                })
                                                ClearPedTasksImmediately(PlayerPedId())
                                                
                                                -- Retirer les ingrédients et ajouter le Chicken Wrap
                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'poulet')
                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'wrap')
                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'salade')
                                                TriggerServerEvent('az_restobar:add', 'item', 1, 'chicken_wrap')
                                            end)
                                        else
                                            ESX.ShowNotification("Tu n'as pas assez de salade pour faire un Chicken Wrap")
                                        end
                                    end, 'salade')
                                else
                                    ESX.ShowNotification("Tu n'as pas assez de wraps pour faire un Chicken Wrap")
                                end
                            end, 'wrap')
                        else
                            ESX.ShowNotification("Tu n'as pas assez de poulet pour faire un Chicken Wrap")
                        end
                    end, 'poulet')
                end,
            },
            
            {
                title = 'Faire un Wrap Chèvre',
                icon = "fa fa-cutlery",
                description = 'Ingrédients -> 1x Fromage de Chèvre, 1x Wrap, 1x Salade',
                onSelect = function(args)
                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityCheese)
                        if quantityCheese >= 1 then
                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityWrap)
                                if quantityWrap >= 1 then
                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityLettuce)
                                        if quantityLettuce >= 1 then
                                            Citizen.CreateThread(function()
                                                TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BBQ", 0, true)
                                                lib.progressCircle({
                                                    name = "making_wrap_chevre",
                                                    duration = 15500,
                                                    label = "Préparation Wrap Chèvre",
                                                    useWhileDead = false,
                                                    canCancel = false,
                                                    position = "bottom",
                                                    controlDisables = {
                                                        disableMovement = true,
                                                        disableCarMovement = false,
                                                        disableMouse = false,
                                                        disableCombat = true,
                                                    }
                                                })
                                                ClearPedTasksImmediately(PlayerPedId())
                                                
                                                -- Retirer les ingrédients et ajouter le Wrap Chèvre
                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'chevre')
                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'wrap')
                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'salade')
                                                TriggerServerEvent('az_restobar:add', 'item', 1, 'wrap_chevre')
                                            end)
                                        else
                                            ESX.ShowNotification("Tu n'as pas assez de salade pour faire un Wrap Chèvre")
                                        end
                                    end, 'salade')
                                else
                                    ESX.ShowNotification("Tu n'as pas assez de wraps pour faire un Wrap Chèvre")
                                end
                            end, 'wrap')
                        else
                            ESX.ShowNotification("Tu n'as pas assez de fromage de chèvre pour faire un Wrap Chèvre")
                        end
                    end, 'chevre')
                end,
            },
            
            {
                title = 'Faire des Tacos',
                icon = "fa fa-cutlery",
                description = 'Ingrédients -> 1x Viande, 1x Taco Shell, 1x Salade',
                onSelect = function(args)
                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityMeat)
                        if quantityMeat >= 1 then
                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityTacoShell)
                                if quantityTacoShell >= 1 then
                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityLettuce)
                                        if quantityLettuce >= 1 then
                                            Citizen.CreateThread(function()
                                                TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BBQ", 0, true)
                                                lib.progressCircle({
                                                    name = "making_tacos",
                                                    duration = 15500,
                                                    label = "Préparation Tacos",
                                                    useWhileDead = false,
                                                    canCancel = false,
                                                    position = "bottom",
                                                    controlDisables = {
                                                        disableMovement = true,
                                                        disableCarMovement = false,
                                                        disableMouse = false,
                                                        disableCombat = true,
                                                    }
                                                })
                                                ClearPedTasksImmediately(PlayerPedId())
                                                
                                                -- Retirer les ingrédients et ajouter les Tacos
                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'viande')
                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'taco_shell')
                                                TriggerServerEvent('az_restobar:remove', 'item', 1, 'salade')
                                                TriggerServerEvent('az_restobar:add', 'item', 1, 'tacos')
                                            end)
                                        else
                                            ESX.ShowNotification("Tu n'as pas assez de salade pour faire des Tacos")
                                        end
                                    end, 'salade')
                                else
                                    ESX.ShowNotification("Tu n'as pas assez de taco shells pour faire des Tacos")
                                end
                            end, 'taco_shell')
                        else
                            ESX.ShowNotification("Tu n'as pas assez de viande pour faire des Tacos")
                        end
                    end, 'viande')
                end,
            },
            
            {
                title = 'Faire un Giga Burger',
                icon = "fa fa-cutlery",
                description = 'Ingrédients -> 5x Viande, 1x Pain Burger, 1x Cheddar, 1x Salade',
                onSelect = function(args)
                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityBeef)
                        if quantityBeef >= 5 then
                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityBun)
                                if quantityBun >= 1 then
                                    ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityCheese)
                                        if quantityCheese >= 1 then
                                            ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityLettuce)
                                                if quantityLettuce >= 1 then
                                                    Citizen.CreateThread(function()
                                                        TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BBQ", 0, true)
                                                        lib.progressCircle({
                                                            name = "making_giga_burger",
                                                            duration = 15500,
                                                            label = "Préparation Giga Burger",
                                                            useWhileDead = false,
                                                            canCancel = false,
                                                            position = "bottom",
                                                            controlDisables = {
                                                                disableMovement = true,
                                                                disableCarMovement = false,
                                                                disableMouse = false,
                                                                disableCombat = true,
                                                            }
                                                        })
                                                        ClearPedTasksImmediately(PlayerPedId())
                                                        
                                                        -- Retirer les ingrédients et ajouter le Giga Burger
                                                        TriggerServerEvent('az_restobar:remove', 'item', 5, 'viande')
                                                        TriggerServerEvent('az_restobar:remove', 'item', 1, 'painburger')
                                                        TriggerServerEvent('az_restobar:remove', 'item', 1, 'cheddar')
                                                        TriggerServerEvent('az_restobar:remove', 'item', 1, 'salade')
                                                        TriggerServerEvent('az_restobar:add', 'item', 1, 'giga_burger')
                                                    end)
                                                else
                                                    ESX.ShowNotification("Tu n'as pas assez de salade pour faire un Giga Burger")
                                                end
                                            end, 'salade')
                                        else
                                            ESX.ShowNotification("Tu n'as pas assez de cheddar pour faire un Giga Burger")
                                        end
                                    end, 'cheddar')
                                else
                                    ESX.ShowNotification("Tu n'as pas assez de pains burger pour faire un Giga Burger")
                                end
                            end, 'painburger')
                        else
                            ESX.ShowNotification("Tu n'as pas assez de viande pour faire un Giga Burger")
                        end
                    end, 'viande')
                end,
            }            
            
		}
		
	})
	lib.showContext('burgercook')
end)





RegisterNetEvent('burgerfrite')
AddEventHandler('burgerfrite', function()
	lib.registerContext({
		id = 'burgerfrite',
		title = 'Actions friteuse',
		description = 'Ingrédients ->1x pomme de terre',
		onExit = function()
		end,
		options = {
			{
				title = 'Faire des frites',
				icon = "fa fa-cutlery",
				onSelect = function(args)
					ESX.TriggerServerCallback('az_restobar:getItemAmount', function(quantityWheat)
						if quantityWheat >= 1 then
			
							Citizen.CreateThread(function()
                                TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
								lib.progressCircle({
									name = "making_ecola",
									duration = 15500,
									label = "Préparation Frite",
									useWhileDead = false,
									canCancel = false,
									position = "bottom",
									controlDisables = {
										disableMovement = true,
										disableCarMovement = false,
										disableMouse = false,
										disableCombat = true,
									}
								})
                                ClearPedTasksImmediately(PlayerPedId())
                                
			
								
			                    TriggerServerEvent('az_restobar:remove', 'item', 1, 'pommedeterre')
								TriggerServerEvent('az_restobar:add', 'item', 1, 'frites')
							end)
						else
							ESX.ShowNotification("Tu n'as pas assez de pommedeterre pour faire des frties")
						end
					end, 'pommedeterre')
				end,
			}
			
		}
		
	})
	lib.showContext('burgerfrite')
end)


RegisterNetEvent('burgerglace')
AddEventHandler('burgerglace', function()
	lib.registerContext({
		id = 'burgerglace',
		title = 'Actions Glace',
		description = 'Faire des délicieuses Glaces',
		onExit = function()
		end,
		options = {
			{
				title = 'Faire une Glace OrangeTang',
				icon = "fa fa-ice-cream",
				onSelect = function(args)
					Citizen.CreateThread(function()
						TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
						lib.progressCircle({
							name = "making_orangetang_icecream",
							duration = 15500,
							label = "Préparation Glace OrangeTang",
							useWhileDead = false,
							canCancel = false,
							position = "bottom",
							controlDisables = {
								disableMovement = true,
								disableCarMovement = false,
								disableMouse = false,
								disableCombat = true,
							}
						})
						ClearPedTasksImmediately(PlayerPedId())
						
						-- Ajouter l'item Glace OrangeTang
						TriggerServerEvent('az_restobar:add', 'item', 1, 'glace_orangetang')
					end)
				end,
			},
			{
				title = 'Faire une Glace Meteorite Sunday',
				icon = "fa fa-ice-cream",
				onSelect = function(args)
					Citizen.CreateThread(function()
						TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BBQ", 0, true)
						lib.progressCircle({
							name = "making_meteorite_sunday",
							duration = 15500,
							label = "Préparation Meteorite Sunday",
							useWhileDead = false,
							canCancel = false,
							position = "bottom",
							controlDisables = {
								disableMovement = true,
								disableCarMovement = false,
								disableMouse = false,
								disableCombat = true,
							}
						})
						ClearPedTasksImmediately(PlayerPedId())
						
						-- Ajouter l'item Meteorite Sunday
						TriggerServerEvent('az_restobar:add', 'item', 1, 'meteorite_sunday')
					end)
				end,
			}
		}
	})
	lib.showContext('burgerglace')
end)

Citizen.CreateThread(function()
    local blipCoords = Config.Blips.Position
    local blip = AddBlipForCoord(blipCoords.x, blipCoords.y, blipCoords.z)
    SetBlipSprite(blip, Config.Blips.Sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, Config.Blips.Scale)
    SetBlipColour(blip, Config.Blips.Color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.Blips.Name)
    EndTextCommandSetBlipName(blip)
end)