Citizen.CreateThread(function()
    while true do
        -- Prevent crashing
        Citizen.Wait(0)
        
        -- These natives have to be called every frame.
        -- Set traffic density to 0
        SetVehicleDensityMultiplierThisFrame(0.0)
        -- Set npc / ai peds density to 0
        SetPedDensityMultiplierThisFrame(0.0)
        -- Set random vehicles (car scenarios / cars driving off from a parking spot etc.) to 0
        SetRandomVehicleDensityMultiplierThisFrame(0.0)
        -- Set random parked vehicles (parked car scenarios) to 0
        SetParkedVehicleDensityMultiplierThisFrame(0.0)
        -- Set random npc / ai peds or scenario peds to 0
        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
        -- Stop garbage trucks from randomly spawning
        SetGarbageTrucks(false)
        -- Stop random boats from spawning in the water
        SetRandomBoats(false)
        -- Disable random cops walking / driving around)
        SetCreateRandomCops(false)
        -- Stop random cops (not in a scenario) from spawning
        SetCreateRandomCopsNotOnScenarios(false)
        -- Stop random cops (in a scenario) from spawning
        SetCreateRandomCopsOnScenarios(false)
        
        local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
        ClearAreaOfVehicles(x, y, z, 3000, false, false, false, false, false)
        RemoveVehiclesFromGeneratorsInArea(x - 3000.0, y - 3000.0, z - 3000.0, x + 3000.0, y + 3000.0, z + 3000.0)
    end
end)