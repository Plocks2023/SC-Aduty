-- Resource Metadata
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'itsplocks'
description 'Aduty System by Plocks'
version '1.0.0'

lua54 'yes'

-- What to run
shared_scripts {
    '@es_extended/imports.lua', --ESX
    'config.lua',
    '@ox_lib/init.lua', --OX_LIB
    '@oxmysql/lib/MySQL.lua', --SQL
}

client_scripts {
    'client/main.lua',
    'client/functions.lua',
    'client/anzug.lua',
    'client/Commands.lua',
    'client/events.lua',
    'client/menu.lua',
}

server_script {
    'server/main.lua',
    'server/commands.lua',
    'server/function.lua',
}

escrow_ignore {
    'config.lua',
    'client/Commands.lua',
    'client/menu.lua',
    'server/commands.lua'
}