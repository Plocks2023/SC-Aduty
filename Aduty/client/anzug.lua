-- ESX = exports["es_extended"]:getSharedObject()

function setUniform(group)
    local playerPed = PlayerPedId()
    
    TriggerEvent('skinchanger:getSkin', function(skin)
        if skin.sex == 0 then

            for k, gruppen in pairs(Config.Rangs) do
                if group == gruppen.rang then
                    TriggerEvent("skinchanger:loadClothes", skin, gruppen.kleidung.male)              				
                end
            end

        elseif skin.sex == 1 then 

            for k, gruppen in pairs(Config.Rangs) do
                if group == gruppen.rang then
                    TriggerEvent("skinchanger:loadClothes", skin, gruppen.kleidung.female)              				
                end
            end

        end
    end)
end

RegisterNetEvent("toggleAduty")
AddEventHandler("toggleAduty", function(source)

    ESX.TriggerServerCallback('rw:getGroup', function(group)
        for k, gruppen in pairs(Config.Rangs) do

            if group == gruppen.rang then
                local playerPed = PlayerPedId()
                if IS_IN_ADUTY then
                    IS_IN_ADUTY = false
                    IS_NAMES_ACTIVE = false
                    IS_HEALTH_ACTIVE = false
                    GodmodeEnde()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                        TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                    lib.notify({
                        title = 'Aduty',
                        description = 'Du hast erfolgreich den Admindienst verlassen',
                        showDuration = true,
                        position = 'top',
                        icon = 'fa-solid fa-thumbs-up',
                        iconColor = '#C53030',
                        iconAnimation = 'beat'
                    })
                else
                    IS_IN_ADUTY = true
                    IS_NAMES_ACTIVE = true
                    IS_HEALTH_ACTIVE = true
                    setUniform(group)
                    Godmode()
                    lib.notify({
                        title = 'Aduty',
                        description = 'Du hast erfolgreich den Admindienst betreten',
                        showDuration = true,
                        position = 'top',
                        icon = 'fa-solid fa-thumbs-up',
                        iconColor = '#0CF556',
                        iconAnimation = 'beat'
                    })
                end
            end
        end
    end)
end)

function Godmode()
    -- print("Godmode aktiviert")
    SetPlayerInvincible(PlayerId(), true)
    SetPedCanRagdoll(PlayerPedId(), false)
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.49) --Supersprint
    RestorePlayerStamina(PlayerId(), 1.0)
    Citizen.CreateThread(function()
        while IS_IN_ADUTY do
            -- print("Godmode Schleife läuft")
            SetPlayerInvincible(PlayerId(), true)
            SetPedCanRagdoll(PlayerPedId(), false)
            Citizen.Wait(0)
        end
    end)
end

function GodmodeEnde()
    -- print("Godmode deaktiviert")
    SetPlayerInvincible(PlayerId(), false)
    SetPedCanRagdoll(PlayerPedId(), true)
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.00) --Supersprint
end

