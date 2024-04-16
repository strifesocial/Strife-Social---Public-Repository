-- Define the command handler function
RegisterCommand("discord", function(source, args, rawCommand)
    -- Get the player's server ID
    local playerId = tonumber(source)
    
    -- Check if the source is a valid player
    if playerId then
        -- Send the Discord link to the player's in-game chat
        TriggerClientEvent('chat:addMessage', playerId, {
            color = {255, 0, 0}, -- Red color for the message
            multiline = true, -- Allow multiline message
            args = {"[Server]", "Join our Discord server: https://dsc.gg/striferp"}
        })
    end
end)
