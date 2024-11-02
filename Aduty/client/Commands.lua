
RegisterCommand('v', function(source)

    if IS_IN_ADUTY == true then 
        -- lib.print.info('Es geht alles!')
        if IS_IN_VANISH == true then 
            VanishStop()
            lib.notify({
                title = 'Aduty',
                description = 'Du hast erfolgreich den Vanish verlassen',
                showDuration = true,
                position = 'top',
                icon = 'fa-solid fa-thumbs-up',
                iconColor = '#C53030',
                iconAnimation = 'beat'
            })
        else 
            IS_IN_VANISH = true
            VanishStart()
            lib.notify({
                title = 'Aduty',
                description = 'Du hast erfolgreich den Vanish betreten',
                showDuration = true,
                position = 'top',
                icon = 'fa-solid fa-thumbs-up',
                iconColor = '#0CF556',
                iconAnimation = 'beat'
            })
        end
    else 
        lib.notify({
            title = 'Aduty',
            description = 'Du bist nicht im Aduty',
            showDuration = true,
            position = 'top',
            icon = 'fa-solid fa-thumbs-up',
            iconColor = '#C53030',
            iconAnimation = 'beat'
        })
    end

end)

RegisterCommand('superjump', function(source)

    if IS_IN_ADUTY == true then
        -- lib.print.info('Es geht alles!')
        if IS_SUPERJUMP_ACTIVE == true then 
            IS_SUPERJUMP_ACTIVE = false
            DeactivateSuperjump()
            lib.notify({
                title = 'Aduty',
                description = 'Du hast erfolgreich den Superjump deaktiviert',
                showDuration = true,
                position = 'top',
                icon = 'fa-solid fa-thumbs-up',
                iconColor = '#0CF556',
                iconAnimation = 'beat'
            })
        else 
            IS_SUPERJUMP_ACTIVE = true
            ActivateSuperjump()
            lib.notify({
                title = 'Aduty',
                description = 'Du hast erfolgreich den Superjump aktiviert',
                showDuration = true,
                position = 'top',
                icon = 'fa-solid fa-thumbs-up',
                iconColor = '#0CF556',
                iconAnimation = 'beat'
            })
        end
    else 
        lib.notify({
            title = 'Aduty',
            description = 'Du bist nicht im Aduty',
            showDuration = true,
            position = 'top',
            icon = 'fa-solid fa-thumbs-up',
            iconColor = '#C53030',
            iconAnimation = 'beat'
        })
    end

end)

RegisterCommand('adminmenu', function(source)
    if IS_IN_ADUTY == true then
        lib.showContext('adminmenu')
    else 
        lib.notify({
            title = 'Aduty',
            description = 'Du bist nicht im Aduty',
            showDuration = true,
            position = 'top',
            icon = 'fa-solid fa-thumbs-up',
            iconColor = '#C53030',
            iconAnimation = 'beat'
        })
    end
end)