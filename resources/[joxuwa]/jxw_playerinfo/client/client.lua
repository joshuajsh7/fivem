Citizen.CreateThread(function()
    local z_key = 48
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, z_key) then
            TrigerEvent('chatMessage', '', {255, 0, 0}, 'Z Key Pressed')
        end
    end
end)