lib.registerContext({
    id = 'adminmenu',
    title = 'Adminmenu',
    options = {

        {
            title = 'Vanish',
            description = 'Betrete den Vanish',
            icon = 'fa-regular fa-thumbs-up',
            onSelect = function()
                if IS_IN_VANISH == true then 
                    lib.print.error('Vanish = true')
                else 
                    VanishStart()
                end
            end,

        },
        {
            title = 'Vanish',
            description = 'Verlasse den Vanish',
            icon = 'fa-regular fa-thumbs-down',
            onSelect = function()
                if IS_IN_VANISH == true then 
                    VanishStop()
                else 
                    lib.print.error('Vanish = false')
                end
            end,

        },
        {
            title = 'SuperJump',
            description = 'Aktiviere den SuperJump',
            icon = 'fa-regular fa-thumbs-up',
            onSelect = function()
                if IS_SUPERJUMP_ACTIVE == true then 
                    lib.print.error('SuperJump = false')
                else 
                    ActivateSuperjump()
                end
            end,

        },
        {
            title = 'SuperJump',
            description = 'Deaktiviere den SuperJump',
            icon = 'fa-regular fa-thumbs-down',
            onSelect = function()
                if IS_SUPERJUMP_ACTIVE == true then 
                    DeactivateSuperjump()
                else 
                    lib.print.error('SuperJump = true')
                end
            end,

        },
    }
})