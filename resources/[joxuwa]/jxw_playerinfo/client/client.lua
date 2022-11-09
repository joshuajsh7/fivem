Citizen.CreateThread(function()
    local z_key = 48
    while true do
        Citizen.Wait(1)
        if IsControlJustPressed(0, z_key) then
            local second = GetLocalTime()
            local s1 = GET_LOCAL_TIME(%second)
            TriggerEvent('chatMessage', '', {255, 0, 0}, s1)
        end
    end
end)