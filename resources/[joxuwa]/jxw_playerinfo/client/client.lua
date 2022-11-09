Citizen.CreateThread(function()
    local z_key = 48
    while true do
        Citizen.Wait(1)
        if IsControlJustPressed(0, z_key) then
            local time = GetLocalTime()
            TriggerEvent('chatMessage', '', {255, 0, 0}, time)
        end
    end
end)