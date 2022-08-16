local VORPInv = exports["vorp_inventory"]:vorp_inventoryApi()

CreateThread(function()
    for k,v in pairs(Config.ItemToUse) do
        VORPInv.RegisterUsableItem(v.item, function(data)
            TriggerClientEvent('poke_utils:useItem', data.source, v.ProvisionType, v.InteractionType)
        end)
    end
end)