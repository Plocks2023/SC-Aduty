-- Shownames
local DrawText3D = function(x, y, z, text, r, g, b, scale)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0, scale or 0.2)
    SetTextColour(r, g, b, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(0, 0)
    ClearDrawOrigin()
end



Citizen.CreateThread(function()
    while true do
        Wait(0)

            local players = GetActivePlayers()
			for i = 1, #players do

				local currentplayer = players[i]
                local ped = GetPlayerPed(currentplayer)

                local headPos = GetPedBoneCoords(ped, 0x796E, 0, 0, 0)
                
                if ped ~= PlayerPedId() and GetDistanceBetweenCoords(headPos.x, headPos.y, headPos.z, GetEntityCoords(PlayerPedId()).x, GetEntityCoords(PlayerPedId()).y, GetEntityCoords(PlayerPedId()).z, false) < ESP_DISTANCE_IS then
                    if IS_NAMES_ACTIVE then
                        DrawText3D(headPos.x, headPos.y, headPos.z + 0.3, "[" .. GetPlayerServerId(currentplayer) .. "] " .. GetPlayerName(currentplayer), 255, 255, 255, 0.25)
                    end
                    if IS_HEADDOTS_ACTIVE then
                        DrawText3D(headPos.x, headPos.y, headPos.z + 0.1, ".", 255, 255, 255, 0.5)
                    end
                    if IS_HEALTH_ACTIVE then
                        local cK, cL =
                        GetOffsetFromEntityInWorldCoords(ped, 0.75, 0.0, -0.8),
                        GetOffsetFromEntityInWorldCoords(ped, 0.75, 0.0, 0.6)
                        local be, cu, cv = GetScreenCoordFromWorldCoord(table.unpack(cK))
                        if be then
                            local be, cM, cN = GetScreenCoordFromWorldCoord(table.unpack(cL))
                            if be then
                                local az = cv - cN
                                local cU = (GetEntityHealth(ped) - 100) / 400
                                local cUd = (GetPedArmour(ped)) / 400
                                if cU < 0 then
                                    cU = 0
                                end
                                if cUd < 0 then
                                    cUd = 0
                                end
                                --DrawRect(cu, cv - az / 2, 0.005 * az, az, 255, 33, 33, 255)
                                if cU > 0 then
                                    DrawRect(cu, cv - az / 2, 0.005 * az, az * cU * 4, 33, 255, 33, 255)
                                end
                                if cUd > 0 then
                                    DrawRect(cu - 0.005, cv - az / 2, 0.005 * az, az * cU * 4, 0, 0, 255, 255)
                                end
                            end
                        end
                    end
                end
            end
        
    end
end)
