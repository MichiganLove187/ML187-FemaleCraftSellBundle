local QBCore = exports['qb-core']:GetCoreObject()

--shop
RegisterNetEvent('ml187-femalecraftsellbundle:server:buyItem')
AddEventHandler('ml187-femalecraftsellbundle:server:buyItem', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local price = tonumber(data.price)
    local cash = Player.PlayerData.money["cash"]

    if cash >= price then
        -- First remove the money
        Player.Functions.RemoveMoney("cash", price)
        -- Then give the item
        Player.Functions.AddItem(data.item, 1)
        
        -- Notify the player
        TriggerClientEvent('QBCore:Notify', src, "Purchased " .. data.label .. " for $" .. price, "success")
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[data.item], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, "You don't have enough cash!", "error")
    end
end)
--shop


QBCore.Functions.CreateUseableItem(Config.CraftingTableItem, function(source, item)
    TriggerClientEvent("ml187-femalecraftsellbundle:client:PlaceTable", source)
end)

RegisterNetEvent('ml187-femalecraftsellbundle:server:SyncTable', function(tableData)
    TriggerClientEvent('ml187-femalecraftsellbundle:client:SyncTable', -1, tableData)
end)

RegisterNetEvent('ml187-femalecraftsellbundle:server:SyncTableRemoval', function()
    TriggerClientEvent('ml187-femalecraftsellbundle:client:SyncTableRemoval', -1)
end)

QBCore.Functions.CreateCallback('ml187-femalecraftsellbundle:server:HasMaterials', function(source, cb, item, category)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItems = true
    
    local recipe = Config.Recipes[category][item]
    if not recipe then cb(false) return end
    
    for material, amount in pairs(recipe.materials) do
        local playerItem = Player.Functions.GetItemByName(material)
        if not playerItem or playerItem.amount < amount then
            hasItems = false
            break
        end
    end
    
    cb(hasItems)
end)

QBCore.Functions.CreateCallback('ml187-femalecraftsellbundle:server:GetInventory', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        cb(Player.PlayerData.items)
    else
        cb({})
    end
end)

RegisterNetEvent('ml187-femalecraftsellbundle:server:CraftItem', function(item, category)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local recipe = Config.Recipes[category][item]
    
    if recipe and Player then
        -- Debug prints to track process
        print("Starting craft for: " .. item)
        print("Player found: " .. Player.PlayerData.citizenid)
        
        -- Remove materials first
        for material, amount in pairs(recipe.materials) do
            Player.Functions.RemoveItem(material, amount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[material], "remove")
        end
        
        -- Force give item with direct inventory update
        Player.Functions.AddItem(item, 1)
        
        -- Send multiple notifications to ensure player sees them
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('QBCore:Notify', src, "Crafted: " .. recipe.label, "success", 3500)
        
        -- Additional debug print
        print("Craft complete - Item: " .. item .. " Category: " .. category)
    end
end)

RegisterNetEvent('ml187-femalecraftsellbundle:server:RemoveTable', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.CraftingTableItem, 1)
end)

RegisterNetEvent('ml187-femalecraftsellbundle:server:GiveTable', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.CraftingTableItem, 1)
end)

--added
RegisterNetEvent('ml187-femalecraftsellbundle:server:SellItem', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemData = Player.Functions.GetItemByName(item)
    
    if not itemData then return end
    
    local maxAmount = Config.Selling.maxItemsPerPurchase
    local amountToBuy = Config.Selling.enableRandomAmount and math.random(1, maxAmount) or 1
    amountToBuy = math.min(amountToBuy, itemData.amount)
    
    -- Get the correct price from the config
    local priceData = Config.SellPrices[item]
    local itemPrice = math.random(priceData.min, priceData.max)
    local totalPrice = itemPrice * amountToBuy
    
    if Player.Functions.RemoveItem(item, amountToBuy) then
        Player.Functions.AddMoney('cash', totalPrice)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "remove")
        TriggerClientEvent('QBCore:Notify', src, "Sold " .. amountToBuy .. "x " .. QBCore.Shared.Items[item].label .. " for $" .. totalPrice, "success")
    end
end)

QBCore.Functions.CreateCallback('ml187-femalecraftsellbundle:server:HasSellableItems', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local hasSellable = false
    
    for k, v in pairs(Player.PlayerData.items) do
        if v and Config.SellPrices[v.name] then
            hasSellable = true
            break
        end
    end
    
    cb(hasSellable)
end)

