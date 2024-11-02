IS_IN_ADUTY = false

IS_IN_VANISH = false 

IS_SUPERJUMP_ACTIVE = false

IS_NAMES_ACTIVE = false

IS_HEADDOTS_ACTIVE = false

IS_HEALTH_ACTIVE = false

ESP_DISTANCE_IS = 200


-- Funktion, um den Dienststatus zu überprüfen
function checkDutyStatus()
    --print("checkDutyStatus wurde aufgerufen. IS_IN_ADUTY ist: " .. tostring(IS_IN_ADUTY))
    return IS_IN_ADUTY
end

-- Export der Funktion, damit sie in anderen Skripten verwendet werden kann
exports('isInDuty', checkDutyStatus)

--local isInDuty = exports['Aduty']:isInDuty()