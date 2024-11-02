--Superjump

function ActivateSuperjump()
    IS_SUPERJUMP_ACTIVE = true
    Citizen.CreateThread(function()
        while IS_SUPERJUMP_ACTIVE do
            local playerPed = PlayerPedId()
            SetSuperJumpThisFrame(PlayerId())
            Citizen.Wait(0)
        end
    end)
end

function DeactivateSuperjump()
    IS_SUPERJUMP_ACTIVE = false
end

--Vanish 

function VanishStart()
    IS_IN_VANISH = true
    SetEntityVisible(PlayerPedId(), false, 0) 

end

function VanishStop()
    IS_IN_VANISH = false
    SetEntityVisible(PlayerPedId(), true, 0)

end