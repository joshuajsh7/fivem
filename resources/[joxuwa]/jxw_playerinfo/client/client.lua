Citizen.CreateThread(function()
    local z_key = 48
    while true do
        Citizen.Wait(1)
        if IsControlJustPressed(5, z_key) then
            TriggerEvent('chatMessage', '', {255, 0, 0}, 'Z Key Pressed')
        end
    end
end)