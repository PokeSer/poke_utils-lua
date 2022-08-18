RegisterNetEvent('poke_utils:useItem', function(provisionType, interactionType)
    Citizen.InvokeNative(0xAE72E7DF013AAA61, PlayerPedId(), provisionType, interactionType, 1, 0, 0.0)
end)