local function openMenuBurgerShot()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openburgershot",
    })
end

local function closeMenuBurgerShot()
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "closeburgershot",
    })
end

RegisterNUICallback("exit", function(data)
    closeMenuBurgerShot()
end)

RegisterNetEvent('openMenu')
AddEventHandler('openMenu', function(menuType)
    if menuType == 'burgershot' then
        openMenuBurgerShot()
    end
end)