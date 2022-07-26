-- Variables
local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local CurrentWeaponData, CanShoot, MultiplierAmount = {}, true, 0

-- Handlers

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.TriggerCallback("weapons:server:GetConfig", function(RepairPoints)
        for k, data in pairs(RepairPoints) do
            Config.WeaponRepairPoints[k].IsRepairing = data.IsRepairing
            Config.WeaponRepairPoints[k].RepairingData = data.RepairingData
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    for k in pairs(Config.WeaponRepairPoints) do
        Config.WeaponRepairPoints[k].IsRepairing = false
        Config.WeaponRepairPoints[k].RepairingData = {}
    end
end)

-- Functions

local function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

-- Events

RegisterNetEvent("weapons:client:SyncRepairShops", function(NewData, key)
    Config.WeaponRepairPoints[key].IsRepairing = NewData.IsRepairing
    Config.WeaponRepairPoints[key].RepairingData = NewData.RepairingData
end)

RegisterNetEvent("addAttachment", function(component)
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    local WeaponData = QBCore.Shared.Weapons[weapon]
    GiveWeaponComponentToPed(ped, GetHashKey(WeaponData.name), GetHashKey(component))
end)

RegisterNetEvent('weapons:client:EquipTint', function(tint)
    local player = PlayerPedId()
    local weapon = GetSelectedPedWeapon(player)
    SetPedWeaponTintIndex(player, weapon, tint)
end)

RegisterNetEvent('weapons:client:SetCurrentWeapon', function(data, bool)
    if data ~= false then
        CurrentWeaponData = data
    else
        CurrentWeaponData = {}
    end
    CanShoot = bool
end)

RegisterNetEvent('weapons:client:SetWeaponQuality', function(amount)
    if CurrentWeaponData and next(CurrentWeaponData) then
        TriggerServerEvent("weapons:server:SetWeaponQuality", CurrentWeaponData, amount)
    end
end)

RegisterNetEvent('weapon:client:AddAmmo', function(type, amount, itemData)
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    if CurrentWeaponData then
        if QBCore.Shared.Weapons[weapon]["name"] ~= "weapon_unarmed" and QBCore.Shared.Weapons[weapon]["ammotype"] == type:upper() then
            local total = GetAmmoInPedWeapon(ped, weapon)
            local _, maxAmmo = GetMaxAmmo(ped, weapon)
            if total < maxAmmo then
                QBCore.Functions.Progressbar("taking_bullets", Lang:t('info.loading_bullets'), Config.ReloadTime, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    if QBCore.Shared.Weapons[weapon] then
                        AddAmmoToPed(ped,weapon,amount)
                        MakePedReload(ped)
                        TriggerServerEvent("weapons:server:AddWeaponAmmo", CurrentWeaponData, total + amount)
                        TriggerServerEvent('QBCore:Server:RemoveItem', itemData.name, 1, itemData.slot)
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[itemData.name], "remove")
                        TriggerEvent('QBCore:Notify', Lang:t('success.reloaded'), "success")
                    end
                end, function()
                    QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
                end)
            else
                QBCore.Functions.Notify(Lang:t('error.max_ammo'), "error")
            end
        else
            QBCore.Functions.Notify(Lang:t('error.no_weapon'), "error")
        end
    else
        QBCore.Functions.Notify(Lang:t('error.no_weapon'), "error")
    end
end)

RegisterNetEvent("weapons:client:EquipAttachment", function(ItemData, attachment)
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    local WeaponData = QBCore.Shared.Weapons[weapon]
    if weapon ~= `WEAPON_UNARMED` then
        WeaponData.name = WeaponData.name:upper()
        if WeaponAttachments[WeaponData.name] then
            if WeaponAttachments[WeaponData.name][attachment]['item'] == ItemData.name then
                TriggerServerEvent("weapons:server:EquipAttachment", ItemData, CurrentWeaponData, WeaponAttachments[WeaponData.name][attachment])
            else
                QBCore.Functions.Notify(Lang:t('error.no_support_attachment'), "error")
            end
        end
    else
        QBCore.Functions.Notify(Lang:t('error.no_weapon_in_hand'), "error")
    end
end)

-- Threads

CreateThread(function()
    SetWeaponsNoAutoswap(true)
end)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        if IsPedArmed(ped, 7) == 1 and (IsControlJustReleased(0, 24) or IsDisabledControlJustReleased(0, 24)) then
            local weapon = GetSelectedPedWeapon(ped)
            local ammo = GetAmmoInPedWeapon(ped, weapon)
            TriggerServerEvent("weapons:server:UpdateWeaponAmmo", CurrentWeaponData, tonumber(ammo))
            if MultiplierAmount > 0 then
                TriggerServerEvent("weapons:server:UpdateWeaponQuality", CurrentWeaponData, MultiplierAmount)
                MultiplierAmount = 0
            end
        end
        local currentWeapon = GetSelectedPedWeapon(ped)
        if currentWeapon == 883325847 and (IsControlJustReleased(0, 24) or IsDisabledControlJustReleased(0, 24)) then
            local weapon = GetSelectedPedWeapon(ped)
            local ammo = GetAmmoInPedWeapon(ped, weapon)
            TriggerServerEvent("weapons:server:UpdateWeaponAmmo", CurrentWeaponData, tonumber(ammo))
        end
        Wait(1)
    end
end)

CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            local ped = PlayerPedId()
            if CurrentWeaponData and next(CurrentWeaponData) then
                if IsPedShooting(ped) then
                    local weapon = GetSelectedPedWeapon(ped)
                    if CanShoot then
                        if weapon and weapon ~= 0 and QBCore.Shared.Weapons[weapon] then
                            local ammo = GetAmmoInPedWeapon(ped, weapon)
                            if QBCore.Shared.Weapons[weapon]["name"] == "weapon_snowball" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "snowball", 1)
                            elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_pipebomb" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_pipebomb", 1)
                                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                                RemoveAllPedWeapons(ped, true)
                                TriggerEvent('weapons:client:SetCurrentWeapon', nil, false)
                            elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_molotov" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_molotov", 1)
                                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                                RemoveAllPedWeapons(ped, true)
                                TriggerEvent('weapons:client:SetCurrentWeapon', nil, false)
                            elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_stickybomb" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_stickybomb", 1)
                                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                                RemoveAllPedWeapons(ped, true)
                                TriggerEvent('weapons:client:SetCurrentWeapon', nil, false)
                            elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_grenade" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_grenade", 1)
                                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                                RemoveAllPedWeapons(ped, true)
                                TriggerEvent('weapons:client:SetCurrentWeapon', nil, false)
                            elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_bzgas" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_bzgas", 1)
                                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                                RemoveAllPedWeapons(ped, true)
                                TriggerEvent('weapons:client:SetCurrentWeapon', nil, false)
                            elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_proxmine" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_proxmine", 1)
                                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                                RemoveAllPedWeapons(ped, true)
                                TriggerEvent('weapons:client:SetCurrentWeapon', nil, false)
                            elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_ball" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_ball", 1)
                                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                                RemoveAllPedWeapons(ped, true)
                                TriggerEvent('weapons:client:SetCurrentWeapon', nil, false)
                            elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_smokegrenade" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_smokegrenade", 1)
                                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                                RemoveAllPedWeapons(ped, true)
                                TriggerEvent('weapons:client:SetCurrentWeapon', nil, false)
                            elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_flare" then
                                TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_flare", 1)
                                SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                                RemoveAllPedWeapons(ped, true)
                                TriggerEvent('weapons:client:SetCurrentWeapon', nil, false)
                            else
                                if ammo > 0 then
                                    MultiplierAmount = MultiplierAmount + 1
                                end
                            end
                        end
                    else
                        if weapon ~= -1569615261 then
                            TriggerEvent('inventory:client:CheckWeapon', QBCore.Shared.Weapons[weapon]["name"])
                            QBCore.Functions.Notify(Lang:t('error.weapon_broken'), "error")
                            MultiplierAmount = 0
                        end
                    end
                end
            end
        end
        Wait(1)
    end
end)

local headerOpen = false

CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            local inRange = false
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            for k, data in pairs(Config.WeaponRepairPoints) do
                local distance = #(pos - data.coords)
                if distance < 10 then
                    inRange = true
                    if distance < 1 and not headerOpen then
                        headerOpen = true
                        exports['qb-menu']:showHeader({
                            {
                                header = 'Weapon Repair Shop',
                                txt = 'Open Shop',
                                params = {
                                    event = "qb-weapons:client:requestRepairMenu"
                                }
                            }
                        })
                    end
                    if distance > 1 and headerOpen then
                        headerOpen = false
                        exports['qb-menu']:closeMenu()
                    end
                
                    if distance < 1 then
                        DrawText3Ds(data.coords.x, data.coords.y, data.coords.z, 'Weapon Repair Shop')
                    end
                    -- if distance < 1 then
                    --     if data.IsRepairing then
                    --         if data.RepairingData.CitizenId ~= PlayerData.citizenid then
                    --             DrawText3Ds(data.coords.x, data.coords.y, data.coords.z, 'The repairshop in this moment is ~r~NOT~w~ usable.')
                    --         else
                    --             if not data.RepairingData.Ready then
                    --                 DrawText3Ds(data.coords.x, data.coords.y, data.coords.z, 'Your weapon will be repaired.')
                    --             else
                    --                 DrawText3Ds(data.coords.x, data.coords.y, data.coords.z, '[E] - Take Weapon Back')
                    --             end
                    --         end
                    --     else
                    --         if CurrentWeaponData and next(CurrentWeaponData) then
                    --             if not data.RepairingData.Ready then
                    --                 local WeaponData = QBCore.Shared.Weapons[GetHashKey(CurrentWeaponData.name)]
                    --                 local WeaponClass = (QBCore.Shared.SplitStr(WeaponData.ammotype, "_")[2]):lower()
                    --                 DrawText3Ds(data.coords.x, data.coords.y, data.coords.z, '[E] Repair Weapon, ~g~$'..Config.WeaponRepairCosts[WeaponClass]..'~w~')
                    --                 if IsControlJustPressed(0, 38) then
                    --                     QBCore.Functions.TriggerCallback('weapons:server:RepairWeapon', function(HasMoney)
                    --                         if HasMoney then
                    --                             CurrentWeaponData = {}
                    --                         end
                    --                     end, k, CurrentWeaponData)
                    --                 end
                    --             else
                    --                 if data.RepairingData.CitizenId ~= PlayerData.citizenid then
                    --                     DrawText3Ds(data.coords.x, data.coords.y, data.coords.z, 'The repairshop is this moment ~r~NOT~w~ usable.')
                    --                 else
                    --                     DrawText3Ds(data.coords.x, data.coords.y, data.coords.z, '[E] - Take Weapon Back')
                    --                     if IsControlJustPressed(0, 38) then
                    --                         TriggerServerEvent('weapons:server:TakeBackWeapon', k, data)
                    --                     end
                    --                 end
                    --             end
                    --         else
                    --             if data.RepairingData.CitizenId == nil then
                    --                 DrawText3Ds(data.coords.x, data.coords.y, data.coords.z, 'You dont have a weapon in your hands.')
                    --             elseif data.RepairingData.CitizenId == PlayerData.citizenid then
                    --                 DrawText3Ds(data.coords.x, data.coords.y, data.coords.z, '[E] - Take Weapon Back')
                    --                 if IsControlJustPressed(0, 38) then
                    --                     TriggerServerEvent('weapons:server:TakeBackWeapon', k, data)
                    --                 end
                    --             end
                    --         end
                    --     end
                    -- end
                end
            end
            if not inRange then
                Wait(1000)
            end
        end
        Wait(3)
    end
end)

RegisterNetEvent('qb-weapons:client:requestRepair')
AddEventHandler('qb-weapons:client:requestRepair', function(wepData)
    TriggerServerEvent('qb-weapons:server:repairCurrentWeapon', wepData)
end)

RegisterNetEvent('qb-weapons:client:requestRepairMenu')
AddEventHandler('qb-weapons:client:requestRepairMenu', function()
    local WeaponData = nil
    if CurrentWeaponData then
        WeaponData = QBCore.Shared.Weapons[GetHashKey(CurrentWeaponData.name)]
    end
    local WeaponClass = nil
    if WeaponData and CurrentWeaponData.name then
        if WeaponData.ammotype then
            WeaponClass = (QBCore.Shared.SplitStr(WeaponData.ammotype, "_")[2]):lower()
        end
    end
    local repairShop = {
        {
            header = 'Weapon Repairs',
            isMenuHeader = true,
        }
    }
    if WeaponClass then
        repairShop[#repairShop + 1] = {
            header = 'Repair Weapon',
            txt = 'Repair your current weapon: $' .. Config.WeaponRepairCosts[WeaponClass],
            params = {
                event = "qb-weapons:client:requestRepair",
                args = {
                    wepData = CurrentWeaponData
                }
            }
        }
    end
    repairShop[#repairShop + 1] = {
        header = "Pickup Repaired Weapon",
        txt = "",
        params = {
            isServer = true,
            event = "qb-weapons:server:pickupFixed",
            args = {}
        }
    }
    exports['qb-menu']:openMenu(repairShop)    

end)