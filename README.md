# Aduty
# README.md

Free Fivem ESX/OX Aduty script with Commands and Simpel Config

===========================================================================

### Required:

* Ox_Lib (https://github.com/overextended/ox_lib)
* ESX (https://www.esx-framework.org/)

===========================================================================

If you need help or find bugs just join our Discord. If you have any wishes you can also tell us that. (https://discord.gg/sYdtgZ2FUy)

===========================================================================

### CMD

* /aduty  =  Aduty
* /v  =  Vanish
* /superjump  =  Superjump
* /adminmenu  =  Adminmenu
  
===========================================================================

###Docs

1. If you want to add more ranks go to the config and copy a rank. Change “rang=” to the rank you want and change the clothing. There is no limit to how many ranks there can be.

2. If you want to change the notify search in the client files for **“lib.notify({ ...”** and change it to your notify. In the server files, search for **“TriggerClientEvent(‘ox_lib:notify’ ...”** and change this to your notify as well.

3. If your standard rang for your useres isn`t **"user"** go to server/commands.lua line 10 and change the user from **elseif xPlayer.getGroup() == 'user' then**

4. If you don't want a Supersprint, then go to client/anzug.lua and Delete **SetRunSprintMultiplierForPlayer(PlayerId(), 1.49) --Supersprint** (Line: 77) and **SetRunSprintMultiplierForPlayer(PlayerId(), 1.00) --Supersprint** (Line: 93)

5. Export **exports('isInDuty', checkDutyStatus)**

   5.1  How you use it:
   
        local isInDuty = exports['Aduty']:isInDuty()

        if isInDuty then
             print('Player is in Aduty')
             -- for exampel you can spawn a car....
        else
             print('Player isn't in Aduty')
             -- and can make here a Noify that he must be in the aduty for spawning a car

        end

   5.2 For what you use it? 
       For example, if you have an admin menu, you can build in commands that are only executed when someone is in Aduty

===========================================================================

### Version

* 1.1.0

        
