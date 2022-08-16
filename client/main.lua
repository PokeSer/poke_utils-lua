RegisterNetEvent('poke_utils:useItem', function(provisionType, interactionType)
    StartTaskItemInteraction(PlayerPedId(), GetHashKey(provisionType), GetHashKey(interactionType), 1, 0, 0)
end)