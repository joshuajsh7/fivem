Citizen.CreateThread(function()
    local z_key = 48
    while true do
        Citizen.Wait(1)
        if IsControlJustPressed(0, z_key) then
            t = os.date('*t')
            TriggerEvent('chatMessage', '', {255, 0, 0}, t.sec)
        end
    end
end)