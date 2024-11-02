-- ESX = exports["es_extended"]:getSharedObject()

RegisterCommand("aduty", function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    for k, rang in pairs(Config.Rangs) do
        if xPlayer.getGroup() == rang.rang then

            TriggerClientEvent('toggleAduty', source)

        elseif xPlayer.getGroup() == 'user' then

            TriggerClientEvent('ox_lib:notify', source, {
                title = 'Aduty',
                description = 'Du hast keine Rechte für diesen Befehl',
                showDuration = true,
                position = 'top',
                icon = 'fa-solid fa-thumbs-up',
                iconColor = '#C53030',
                iconAnimation = 'beat'
            })
        end

    end
end, false)

