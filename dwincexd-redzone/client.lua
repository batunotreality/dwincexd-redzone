local QBCore = exports['qb-core']:GetCoreObject()

local dwincexdbaba = vector3(2748.335, 1536.159, 58.232)
local blipboyut31sexporn = 180
local canAzaltma = 0

Citizen.CreateThread(function()
    local muhammettalhaaaa = 0
    
    while true do
        Citizen.Wait(100)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        
        if #(playerCoords - dwincexdbaba) < blipboyut31sexporn then
            if IsPedInAnyVehicle(playerPed, true) and not isDead then
                if canAzaltma < GetGameTimer() then
                    local currentHealth = GetEntityHealth(playerPed)
                    SetEntityHealth(playerPed, currentHealth - 5)
                    canAzaltma = GetGameTimer() + 1250
                    if muhammettalhaaaa < GetGameTimer() then
                        QBCore.Functions.Notify("Redzone bölgesinde arabanın içinde olduğun için canın azalıyor!", "error")
                        muhammettalhaaaa = GetGameTimer() + 8000
                    end
                end
            end
        else
            Citizen.Wait(1000)
        end
    end
end)

Citizen.CreateThread(function()
    local blip = AddBlipForCoord(dwincexdbaba)
    SetBlipSprite(blip, 84)
    SetBlipDisplay(blip, 2)
    SetBlipScale(blip, 0.75)
    SetBlipColour(blip, 1)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Redzone")
    EndTextCommandSetBlipName(blip)
    blipDaire = AddBlipForRadius(dwincexdbaba, blipboyut31sexporn+0.0)
    SetBlipSprite(blipDaire, 9)
    SetBlipColour(blipDaire, 49)
    SetBlipAlpha(blipDaire, 80)
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 250
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 140)
end