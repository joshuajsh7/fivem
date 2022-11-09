Citizen.CreateThread(function()
    local z_key = 48
    while true do
        Citizen.Wait(1)
        if IsControlJustPressed(0, z_key) then
            local timestamp = os.time()
            local d = os.date('*t', timestamp).wday
            local h = tonumber(os.date('%H', timestamp))
            local m = tonumber(os.date('%M', timestamp))
            TriggerEvent('chatMessage', '', {255, 0, 0}, m)
        end
    end
end)