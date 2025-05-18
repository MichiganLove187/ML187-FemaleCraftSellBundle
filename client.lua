local QBCore = exports['qb-core']:GetCoreObject()
local spawnedTables = {}
local placedTableCoords = nil
local lastSellTime = 0
local currentBuyer = nil
local selling = false
local activeSelling = false
local sellingThread = nil
local hasSpawnedTable = false

---start of shops
local PlayerData = {}

-- Create blips for shops
CreateThread(function()
    for _, shop in pairs(Config.Shops) do
        local blip = AddBlipForCoord(shop.location.x, shop.location.y, shop.location.z)
        SetBlipSprite(blip, shop.blipSprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, shop.blipScale)
        SetBlipColour(blip, shop.blipColor)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(shop.blipName)
        EndTextCommandSetBlipName(blip)
    end
end)

-- Create shop interaction zones
CreateThread(function()
    while true do
        local sleep = 1000
        local pos = GetEntityCoords(PlayerPedId())
        
        for _, shop in pairs(Config.Shops) do
            local dist = #(pos - shop.location)
            
            if dist < 10 then
                sleep = 0
                DrawMarker(2, shop.location.x, shop.location.y, shop.location.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.2, 255, 255, 255, 255, 0, 0, 0, 1, 0, 0, 0)
                
                if dist < 2 then
                    DrawText3D(shop.location.x, shop.location.y, shop.location.z + 0.2, '~g~E~w~ - FemaleCraft Store!')
                    if IsControlJustPressed(0, 38) then -- E key
                        OpenShopMenu(shop)
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

-- Shop menu
function OpenShopMenu(shop)
    local menuItems = {}
    for k, v in pairs(shop.items) do
        menuItems[#menuItems + 1] = {
            header = v.label,
            txt = "Price: $" .. v.price,
            params = {
                event = "ml187-femalecraftsellbundle:client:buyItem",
                args = {
                    item = v.name,
                    price = v.price,
                    label = v.label
                }
            }
        }
    end
    
    exports['qb-menu']:openMenu(menuItems)
end

-- Buy item event handler
RegisterNetEvent('ml187-femalecraftsellbundle:client:buyItem', function(data)
    TriggerServerEvent('ml187-femalecraftsellbundle:server:buyItem', data)
end)

-- 3D Text function
function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

--- end of shop

-- Crafting Table Functions
local function SpawnCraftingTable(coords)
    local model = `v_res_mddresser`
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
    
    local obj = CreateObject(model, coords.x, coords.y, coords.z - 1.0, false, false, false)
    PlaceObjectOnGroundProperly(obj)
    FreezeEntityPosition(obj, true)
    SetEntityHeading(obj, coords.w)
    
    exports['qb-target']:AddTargetEntity(obj, {
        options = {
            {
                type = "client",
                event = "ml187-femalecraftsellbundle:client:OpenCraftingMenu",
                icon = "fas fa-hammer",
                label = "Open Crafting Table",
            },
            {
                type = "client",
                event = "ml187-femalecraftsellbundle:client:PickupTable",
                icon = "fas fa-hand-paper",
                label = "Pickup Table",
            }
        },
        distance = 2.0
    })
    
    return obj
end

RegisterNetEvent('ml187-femalecraftsellbundle:client:PlaceTable', function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    
    if not hasSpawnedTable then
        -- Remove table from inventory first
        TriggerServerEvent('ml187-femalecraftsellbundle:server:RemoveTable')
        
        local tableObj = SpawnCraftingTable(vector4(pos.x, pos.y, pos.z, heading))
        spawnedTables[#spawnedTables + 1] = tableObj
        placedTableCoords = pos
        hasSpawnedTable = true
        
        local tableData = {
            x = pos.x,
            y = pos.y,
            z = pos.z,
            w = heading,
            source = GetPlayerServerId(PlayerId())
        }
        
        TriggerServerEvent('ml187-femalecraftsellbundle:server:SyncTable', tableData)
    end
end)

RegisterNetEvent('ml187-femalecraftsellbundle:client:SyncTable', function(tableData)
    if tableData.source ~= GetPlayerServerId(PlayerId()) and not hasSpawnedTable then
        local tableObj = SpawnCraftingTable(vector4(tableData.x, tableData.y, tableData.z, tableData.w))
        spawnedTables[#spawnedTables + 1] = tableObj
        hasSpawnedTable = true
    end
end)

RegisterNetEvent('ml187-femalecraftsellbundle:client:PickupTable', function()
    if placedTableCoords then
        -- Only give table if you're the original placer
        if GetPlayerServerId(PlayerId()) == originalPlacer then
            TriggerServerEvent('ml187-femalecraftsellbundle:server:GiveTable')
        end
        
        for k, v in pairs(spawnedTables) do
            DeleteObject(v)
            spawnedTables[k] = nil
        end
        
        TriggerServerEvent('ml187-femalecraftsellbundle:server:GiveTable')
        TriggerServerEvent('ml187-femalecraftsellbundle:server:SyncTableRemoval')
        placedTableCoords = nil
        hasSpawnedTable = false
    end
end)

-- Add this new event
RegisterNetEvent('ml187-femalecraftsellbundle:client:SyncTableRemoval', function()
    for k, v in pairs(spawnedTables) do
        DeleteObject(v)
        spawnedTables[k] = nil
    end
    hasSpawnedTable = false
    placedTableCoords = nil
end)

RegisterNetEvent('ml187-femalecraftsellbundle:server:GiveTable', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player then
        -- Direct inventory manipulation with the exact item name from your shared items
        Player.Functions.AddItem('crafting_table', 1, false, {})
        -- Visual feedback
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['crafting_table'], "add")
        TriggerClientEvent('QBCore:Notify', src, "Picked up crafting table", "success", 2500)
    end
end)

RegisterNetEvent('ml187-femalecraftsellbundle:client:OpenCategoryMenu', function(data)
    local categoryMenu = {
        {
            header = "← Go Back",
            params = {
                event = "ml187-femalecraftsellbundle:client:OpenCraftingMenu"
            }
        }
    }
    
    if Config.Recipes and Config.Recipes[data.category] then
        for itemName, recipeData in pairs(Config.Recipes[data.category]) do
            local materialText = "Required: "
            if recipeData.materials then
                for material, amount in pairs(recipeData.materials) do
                    if QBCore.Shared.Items[material] then
                        materialText = materialText .. QBCore.Shared.Items[material].label .. " x" .. amount .. ", "
                    end
                end
            end
            
            categoryMenu[#categoryMenu + 1] = {
                header = recipeData.label or itemName,
                txt = materialText:sub(1, -3),
                params = {
                    event = "ml187-femalecraftsellbundle:client:CraftItem",
                    args = {
                        item = itemName,
                        category = data.category
                    }
                }
            }
        end
    end
    
    exports['qb-menu']:openMenu(categoryMenu)
end)

RegisterNetEvent('ml187-femalecraftsellbundle:client:OpenCraftingMenu', function()
    local mainMenu = {
        {
            header = "Luxury Crafting Table",
            isMenuHeader = true
        },
        {
            header = "👟 Shoes",
            txt = "Craft luxury footwear",
            params = {
                event = "ml187-femalecraftsellbundle:client:OpenCategoryMenu",
                args = {
                    category = "shoes"
                }
            }
        },
        {
            header = "👩‍🦰 Wigs",
            txt = "Craft premium Wigs",
            params = {
                event = "ml187-femalecraftsellbundle:client:OpenCategoryMenu",
                args = {
                    category = "wigs"
                }
            }
        },
        {
            header = "🛍️ Bags",
            txt = "Craft premium Bags",
            params = {
                event = "ml187-femalecraftsellbundle:client:OpenCategoryMenu",
                args = {
                    category = "bags"
                }
            }
        },
        {
            header = "💅 Nails",
            txt = "Craft luxury Nails",
            params = {
                event = "ml187-femalecraftsellbundle:client:OpenCategoryMenu",
                args = {
                    category = "nails"
                }
            }
        },
        {
            header = "📿 Necklaces",
            txt = "Craft luxury necklaces",
            params = {
                event = "ml187-femalecraftsellbundle:client:OpenCategoryMenu",
                args = {
                    category = "necklaces"
                }
            }
        },
        {
            header = "👁️ Lashes",
            txt = "Craft luxury Lashes",
            params = {
                event = "ml187-femalecraftsellbundle:client:OpenCategoryMenu",
                args = {
                    category = "lashes"
                }
            }
        },
        {
            header = "⌚ Bracelets",
            txt = "Craft premium Bracelets",
            params = {
                event = "ml187-femalecraftsellbundle:client:OpenCategoryMenu",
                args = {
                    category = "bracelets"
                }
            }
        },
        {
            header = "👂 Earrings",
            txt = "Craft designer Earrings",
            params = {
                event = "ml187-femalecraftsellbundle:client:OpenCategoryMenu",
                args = {
                    category = "earrings"
                }
            }
        },
        {
            header = "❌ Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu"
            }
        }
    }
    exports['qb-menu']:openMenu(mainMenu)
end)

RegisterNetEvent('ml187-femalecraftsellbundle:client:CraftItem', function(data)
    -- Debug prints to track data flow
    print("Category:", data.category)
    print("Item:", data.item)
    
    -- Get recipe from correct category
    local categoryRecipes = Config.Recipes[data.category]
    local recipe = categoryRecipes[data.item]
    
    if recipe then
        QBCore.Functions.TriggerCallback('ml187-femalecraftsellbundle:server:HasMaterials', function(hasMaterials)
            if hasMaterials then
                QBCore.Functions.Progressbar("crafting_item", "Crafting " .. recipe.label, recipe.time, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mini@repair",
                    anim = "fixing_a_ped",
                    flags = 49,
                }, {}, {}, function()
                    TriggerServerEvent('ml187-femalecraftsellbundle:server:CraftItem', data.item, data.category)
                end)
            else
                QBCore.Functions.Notify("Missing materials!", "error")
            end
        end, data.item, data.category)
    else
        QBCore.Functions.Notify("Recipe not found!", "error")
    end
end)

function StartSellingLoop()
    sellingThread = CreateThread(function()
        while activeSelling do
            if not selling then
                -- Check if player has any sellable items
                QBCore.Functions.TriggerCallback('ml187-femalecraftsellbundle:server:HasSellableItems', function(hasSellable)
                    if hasSellable then
                        AttemptToSell()
                    else
                        activeSelling = false
                        QBCore.Functions.Notify("Stopped selling - No more items to sell!", "error")
                    end
                end)
            end
            Wait(Config.SellCooldown)
        end
    end)
end

RegisterCommand(Config.Commands.startSelling, function()
    if not activeSelling then
        activeSelling = true
        StartSellingLoop()
        QBCore.Functions.Notify("Started selling mode - NPCs will approach you", "success")
    end
end)

RegisterCommand(Config.Commands.stopSelling, function()
    if activeSelling then
        activeSelling = false
        if currentBuyer then CleanupSale() end
        QBCore.Functions.Notify("Stopped selling mode", "success")
    end
end)

function AttemptToSell()
    selling = true
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local spawnPoint = GetNearbySpawnPoint(pedCoords)
    
    if not spawnPoint then return end
    
    local model = Config.BuyerPeds[math.random(#Config.BuyerPeds)]
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(GetHashKey(model)) do Wait(1) end
    
    currentBuyer = CreatePed(4, GetHashKey(model), spawnPoint.x, spawnPoint.y, spawnPoint.z, 0.0, true, true)
    SetEntityHeading(currentBuyer, 0.0)
    SetPedDefaultComponentVariation(currentBuyer)
    
    TaskGoToEntity(currentBuyer, ped, -1, 2.0, 1.0, 0, 0)
    
    -- Create a thread to continuously show the approach dialog while NPC is walking
    local dialogThread = CreateThread(function()
        local dialogText = Config.NPCDialogs.approach[math.random(#Config.NPCDialogs.approach)]
        while DoesEntityExist(currentBuyer) and selling and 
              #(GetEntityCoords(currentBuyer) - GetEntityCoords(ped)) > 2.5 do
            local npcCoords = GetEntityCoords(currentBuyer)
            DrawText3D(npcCoords.x, npcCoords.y, npcCoords.z + 1.0, dialogText)
            Wait(0)
        end
    end)
    
    -- Wait for NPC to reach player
    while DoesEntityExist(currentBuyer) and selling and 
          #(GetEntityCoords(currentBuyer) - GetEntityCoords(ped)) > 2.5 do
        Wait(100)
    end
    
    -- Once NPC reaches player, open sell menu
    if DoesEntityExist(currentBuyer) and selling then
        OpenSellMenu()
    end
end

function OpenSellMenu()
    local sellMenu = {
        {
            header = "Sell Items",
            isMenuHeader = true
        }
    }
    
    QBCore.Functions.TriggerCallback('ml187-femalecraftsellbundle:server:GetInventory', function(inventory)
        for k, v in pairs(inventory) do
            if Config.SellPrices[v.name] then
                sellMenu[#sellMenu + 1] = {
                    header = v.label,
                    txt = "Amount: " .. v.amount,
                    params = {
                        event = "ml187-femalecraftsellbundle:client:TryToSell",
                        args = {
                            item = v.name
                        }
                    }
                }
            end
        end
        
        exports['qb-menu']:openMenu(sellMenu)
    end)
end

RegisterNetEvent('ml187-femalecraftsellbundle:client:TryToSell', function(data)
    local chance = Config.SellPrices[data.item].chance
    local dialogText = ""
    
    if math.random(100) <= chance then
        local price = math.random(Config.SellPrices[data.item].min, Config.SellPrices[data.item].max)
        dialogText = Config.NPCDialogs.accept[math.random(#Config.NPCDialogs.accept)]
        
        -- Create a thread to show the accept dialog for a few seconds
        CreateThread(function()
            local endTime = GetGameTimer() + 3000 -- Show for 3 seconds
            while DoesEntityExist(currentBuyer) and GetGameTimer() < endTime do
                local npcCoords = GetEntityCoords(currentBuyer)
                DrawText3D(npcCoords.x, npcCoords.y, npcCoords.z + 1.0, dialogText)
                Wait(0)
            end
        end)
        
        TriggerServerEvent('ml187-femalecraftsellbundle:server:SellItem', data.item, price)
    else
        dialogText = Config.NPCDialogs.reject[math.random(#Config.NPCDialogs.reject)]
        
        -- Create a thread to show the reject dialog for a few seconds
        CreateThread(function()
            local endTime = GetGameTimer() + 3000 -- Show for 3 seconds
            while DoesEntityExist(currentBuyer) and GetGameTimer() < endTime do
                local npcCoords = GetEntityCoords(currentBuyer)
                DrawText3D(npcCoords.x, npcCoords.y, npcCoords.z + 1.0, dialogText)
                Wait(0)
            end
        end)
    end
    
    -- Wait a moment before cleaning up
    Wait(3000)
    CleanupSale()
end)

function CleanupSale()
    if DoesEntityExist(currentBuyer) then
        TaskWanderStandard(currentBuyer, 10.0, 10)
        Wait(5000)
        DeleteEntity(currentBuyer)
    end
    currentBuyer = nil
    selling = false
end

function GetNearbySpawnPoint(playerCoords)
    local spawnRadius = 20.0
    local tries = 0
    while tries < 10 do
        local x = playerCoords.x + math.random(-spawnRadius, spawnRadius)
        local y = playerCoords.y + math.random(-spawnRadius, spawnRadius)
        local z = playerCoords.z
        local _, groundZ = GetGroundZFor_3dCoord(x, y, z, 0)
        
        if groundZ then
            return vector3(x, y, groundZ)
        end
        tries = tries + 1
    end
    return nil
end
