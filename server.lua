RegisterServerEvent("arp-idgun-save")
    AddEventHandler("arp-idgun-save", function( coords, heading, model )
    file = io.open( "id-gun.txt", "a")
    if file then
        file:write("Coordinates: " .. coords .. "\nHeading: " .. heading .. "\nHash: " .. model .. "\n\n")
    end
    file:close()

    file2 = io.open( "id-gun-door.txt", "a")
    if file2 then
        file2:write("{\n    info = \"NAME\",\n    active = true,\n    id = 0,\n    coords = " .. coords .. ",\n    model = " .. model .. ",\n    lock = true,\n    desc = \"\",\n    access = {\n        job = {},\n        business = {\n            [\"job_name\"] = true,\n        },\n    },\n    forceUnlocked = false,\n},\n\n")
    end
    file2:close()
end)