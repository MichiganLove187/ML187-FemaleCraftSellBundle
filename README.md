# Ml187 Craft Sell Bundle

A FiveM resource for QBCore framework that adds MultiCraftSellBundle. Designed For Females to have more activity's!.

PLEASE DO NOT TRY AND RESELL

## Features

Multiple Crafts: Shoes, Wigs, Bags, Nails, Necklaces, Lashes, Bracelets and Earrings!!!

Portable Crafting table That Syncs with other players

Nice Simple Crafting Animations

Lightweight (optimized for best FPS)

## Installation

1. Download the resource and place it in your server's resources folder
2. Add Items to qbcore Shared Items.Lua
3. Configure the resource in the config.lua file to your liking
4. Restart your server

## Configuration

The resource is highly configurable through the `config.lua` file:

- `Config.CraftingTableItem` - Change to whatever item name youd Like!
- `Config.SellCooldown` - Cool Down BetweenSales! (THIS WILL ALSO CONTROL HOW NPC SPAWN)
- `Config.Commands` - Changeable commands for start sell or stop sell!
- `Config.BuyerPeds` - ADD OR REMOVE ANY PEDS YOUD LIKE!
- `Config.Shops` - Change coords of the shop or add more adjust blip settings etc!
- `Config.Recipes` - Feel Free to Change Recipes But DO NOT CHANGE CATAGORYS AS IT WILL BREAK THE SCRIPT
- `Config.SellPrices` - Adjustable Sale Prices! and items to sell !
- `Config.NPCDialogs` - FUTURE NPC DIAG UPDATE --UNFINISHED

## How to Use

1. Place Crafting Table on ground
2. Get Supplies From Shop
3. Craft Whatever Item you wish
4. Use Sell command and sell

## Credits

Created by [ML187]
```
-- Add these items to your QBCore shared items.lua file
--ml187femalecraftsellbundle
    fcrafting_table                        = { name = 'fcrafting_table', label = 'Female Crafting Table', weight = 0, type = 'item', image = 'fcrafting_table.png', unique = true, useable = true, shouldClose = true, description = 'Female Crafting Table' },
    acrylicliquid                        = { name = 'acrylicliquid', label = 'Acrylic Liquid', weight = 0, type = 'item', image = 'acrylicliquid.png', unique = false, useable = false, shouldClose = false, description = 'Acrylic Liquid' },
    acrylicpowder                        = {name = 'acrylicpowder', label = 'Acrylic Powder', weight = 0, type = 'item', image = 'acrylicpowder.png', unique = false, useable = false, shouldClose = false, description = 'Acrylic Powder' },
    acrylicnails                        = {name = 'acrylicnails', label = 'Acrylic Nails', weight = 0, type = 'item', image = 'acrylicnails.png', unique = false, useable = false, shouldClose = false, description = 'Acryilic Nails' },
    wigcap                        = {name = 'wigcap', label = 'Wig Cap', weight = 0, type = 'item', image = 'wigcap.png', unique = false, useable = false, shouldClose = false, description = 'Wig?' },
    wigbundle                        = {name = 'wigbundle', label = 'Wig Bundle', weight = 0, type = 'item', image = 'wigbundle.png', unique = false, useable = false, shouldClose = false, description = 'Wig?' },
    long_curly                        = {name = 'long_curly', label = 'Long Curly Wig', weight = 0, type = 'item', image = 'wiglongcurly.png', unique = false, useable = false, shouldClose = false, description = 'Wig?' },
    short_hair_wig                        = {name = 'short_hair_wig', label = 'Short Hair Wig', weight = 0, type = 'item', image = 'shorthairwig.png', unique = false, useable = false, shouldClose = false, description = 'Wig?' },
    bangwigs                        = {name = 'bangwigs', label = 'Bang Wig', weight = 0, type = 'item', image = 'bangwigs.png', unique = false, useable = false, shouldClose = false, description = 'Wig?' },
    braidwigs                        = {name = 'braidwigs', label = 'Braid Wig', weight = 0, type = 'item', image = 'braidwigs.png', unique = false, useable = false, shouldClose = false, description = 'Wig?' },
    straightwigs                        = {name = 'straightwigs', label = 'Straight Wigs', weight = 0, type = 'item', image = 'straightwig.png', unique = false, useable = false, shouldClose = false, description = 'Wig?' },
    bowling_bag                        = {name = 'bowling_bag', label = 'Bowling Bag', weight = 0, type = 'item', image = 'bowlingbag.png', unique = false, useable = false, shouldClose = false, description = 'HandBag!' },
    pale_pink_bag                        = {name = 'pale_pink_bag', label = 'Pale Pink Bag', weight = 0, type = 'item', image = 'palepinkbag.png', unique = false, useable = false, shouldClose = false, description = 'HandBag!' },
    pink_heart_bag                        = {name = 'pink_heart_bag', label = 'Pink Heart Bag', weight = 0, type = 'item', image = 'pinkheartbag.png', unique = false, useable = false, shouldClose = false, description = 'HandBag!' },
    pink_tote_bag                        = {name = 'pink_tote_bag', label = 'Pink Tote Bag', weight = 0, type = 'item', image = 'pinktotebag.png', unique = false, useable = false, shouldClose = false, description = 'HandBag!' },
    cfnnails                        = {name = 'cfnnails', label = 'Cfn Nails', weight = 0, type = 'item', image = 'cfn-nails.png', unique = false, useable = false, shouldClose = false, description = 'Nails!!!' },
    stinails                        = {name = 'stinails', label = 'Sti Nails', weight = 0, type = 'item', image = 'sti-nails.png', unique = false, useable = false, shouldClose = false, description = 'Nails!!!' },
    almnails                        = {name = 'almnails', label = 'Alm Nails', weight = 0, type = 'item', image = 'alm-nails.png', unique = false, useable = false, shouldClose = false, description = 'Nails!!!' },
    squnails                        = {name = 'squnails', label = 'Squ Nails', weight = 0, type = 'item', image = 'squ-nails.png', unique = false, useable = false, shouldClose = false, description = 'Nails!!!' },
    flanails                        = {name = 'flanails', label = 'Fla Nails', weight = 0, type = 'item', image = 'fla-nails.png', unique = false, useable = false, shouldClose = false, description = 'Nails!!!' },
    heels                        = {name = 'heels', label = 'Heels', weight = 0, type = 'item', image = 'heels.png', unique = false, useable = false, shouldClose = false, description = 'Shoes?' },
    furboots                        = {name = 'furboots', label = 'Fur Boots', weight = 0, type = 'item', image = 'furboots.png', unique = false, useable = false, shouldClose = false, description = 'Shoes?' },
    dheels                        = {name = 'dheels', label = 'Designer Heels', weight = 0, type = 'item', image = 'dheels.png', unique = false, useable = false, shouldClose = false, description = 'Shoes?' },
    lheels                        = {name = 'lheels', label = 'Luxury Heels', weight = 0, type = 'item', image = 'lheels.png', unique = false, useable = false, shouldClose = false, description = 'Shoes?' },
    lboots                        = {name = 'lboots', label = 'Luxury Boots', weight = 0, type = 'item', image = 'lboots.png', unique = false, useable = false, shouldClose = false, description = 'Shoes?' },
    cubanchain                        = {name = 'cubanchain', label = 'Cuban Chain', weight = 0, type = 'item', image = 'cubanchain.png', unique = false, useable = false, shouldClose = false, description = 'This has to be worth a good Penny' },
    heartnecklace                        = {name = 'heartnecklace', label = 'Heart Necklace', weight = 0, type = 'item', image = 'heartnecklace.png', unique = false, useable = false, shouldClose = false, description = 'This has to be worth a good Penny' },
    rubynecklace                        = {name = 'rubynecklace', label = 'Ruby Necklace', weight = 0, type = 'item', image = 'rubynecklace.png', unique = false, useable = false, shouldClose = false, description = 'This has to be worth a good Penny' },
    crystalnecklace                        = {name = 'crystalnecklace', label = 'Crystal Necklace', weight = 0, type = 'item', image = 'crystalnecklace.png', unique = false, useable = false, shouldClose = false, description = 'This has to be worth a good Penny' },
    pearlnecklace                        = {name = 'pearlnecklace', label = 'Pearl Necklace', weight = 0, type = 'item', image = 'pearlnecklace.png', unique = false, useable = false, shouldClose = false, description = 'This has to be worth a good Penny' },
    coloredlashes                        = {name = 'coloredlashes', label = 'Colored Lashes', weight = 0, type = 'item', image = 'coloredlashes.png', unique = false, useable = false, shouldClose = false, description = 'Eyelashes?' },
    volumelashes                        = { name = 'volumelashes', label = 'Volume Lashes', weight = 0, type = 'item', image = 'volumelashes.png', unique = false, useable = false, shouldClose = false, description = 'Eyelashes?' },
    straightlashes                        = { name = 'straightlashes', label = 'Straight Lashes', weight = 0, type = 'item', image = 'straightlashes.png', unique = false, useable = false, shouldClose = false, description = 'Eyelashes?' },
    falselashes                        = { name = 'falselashes', label = 'False Lashes', weight = 0, type = 'item', image = 'falselashes.png', unique = false, useable = false, shouldClose = false, description = 'Eyelashes?' },
    cuff                        = { name = 'cuff', label = 'Cuff', weight = 0, type = 'item', image = 'cuff.png', unique = false, useable = false, shouldClose = false, description = 'Wow These Look Nice!' },
    cuban                        = { name = 'cuban', label = 'cuban Bracelet', weight = 0, type = 'item', image = 'cuban.png', unique = false, useable = false, shouldClose = false, description = 'Wow These Look Nice!' },
    hoops                        = { name = 'hoops', label = 'Hoop Earrings', weight = 0, type = 'item', image = 'hoops.png', unique = false, useable = false, shouldClose = false, description = 'Wow These Look Nice!' },
    dangel                        = { name = 'dangel', label = 'Dangel Earrings', weight = 0, type = 'item', image = 'dangel.png', unique = false, useable = false, shouldClose = false, description = 'Wow These Look Nice!' },
    studs                        = { name = 'studs', label = 'Diamond Studs', weight = 0, type = 'item', image = 'studs.png', unique = false, useable = false, shouldClose = false, description = 'Wow These Look Nice!' },
    gages                        = { name = 'gages', label = 'Gages', weight = 0, type = 'item', image = 'gages.png', unique = false, useable = false, shouldClose = false, description = 'Ears?' },
    plastic                        = { name = 'plastic', label = 'Plastic', weight = 0, type = 'item', image = 'plastic.png', unique = false, useable = false, shouldClose = false, description = 'Flimsy?' },
    silver                        = { name = 'silver', label = 'Silver', weight = 0, type = 'item', image = 'silver.png', unique = false, useable = false, shouldClose = false, description = 'Hmm This got some weight to it !' },
    diamond                        = { name = 'diamond', label = 'Diamond', weight = 0, type = 'item', image = 'diamond.png', unique = false, useable = false, shouldClose = false, description = 'Oh Snap A Diamond!' },
    goldflakes                        = { name = 'goldflakes', label = 'Gold Flakes', weight = 0, type = 'item', image = '14kgoldflakes.png', unique = false, useable = false, shouldClose = false, description = 'Nice and Shiny!' },
    string                        = { name = 'string', label = 'String', weight = 0, type = 'item', image = 'string.png', unique = false, useable = false, shouldClose = false, description = 'String Maybe for beads or someting?' },
    beads                        = { name = 'beads', label = 'Beads', weight = 0, type = 'item', image = 'beads.png', unique = false, useable = false, shouldClose = false, description = 'Beads ?' },
    polybutylene                        = { name = 'polybutylene', label = 'Polybutylene', weight = 0, type = 'item', image = 'polybutylene.png', unique = false, useable = false, shouldClose = false, description = 'What is this for ?' },
    terephthalate                        = { name = 'terephthalate', label = 'Terephthalate', weight = 0, type = 'item', image = 'terephthalate.png', unique = false, useable = false, shouldClose = false, description = 'What is this for ?' },
    pearls                        = { name = 'pearls', label = 'Pearls', weight = 0, type = 'item', image = 'pearls.png', unique = false, useable = false, shouldClose = false, description = 'Expensive Pearls Maybe i can make a Necklace!' },
    crystal                        = { name = 'crystal', label = 'Crystal', weight = 0, type = 'item', image = 'crystal.png', unique = false, useable = false, shouldClose = false, description = 'crystal ? whats this for!' },
    ruby                        = { name = 'ruby', label = 'Ruby', weight = 0, type = 'item', image = 'ruby.png', unique = false, useable = false, shouldClose = false, description = 'Hmm A ruby Make Some Jewlery?' },
    fabric                        = { name = 'fabric', label = 'Fabric', weight = 0, type = 'item', image = 'fabric.png', unique = false, useable = false, shouldClose = false, description = 'Fabric For All Kinds of stuff !' },
    leather                        = { name = 'leather', label = 'Leather', weight = 0, type = 'item', image = 'leather.png', unique = false, useable = false, shouldClose = false, description = 'Leather Maybe Make a Handbag ?' },
    thread                        = { name = 'thread', label = 'Thread', weight = 0, type = 'item', image = 'thread.png', unique = false, useable = false, shouldClose = false, description = 'Thread For Sewing?' },
    rubber                        = { name = 'rubber', label = 'Rubber', weight = 0, type = 'item', image = 'rubber.png', unique = false, useable = false, shouldClose = false, description = 'Rubber? Maybe Try Crafting !' },
    sewing_kit                        = { name = 'sewing_kit', label = 'Sewing Kit', weight = 0, type = 'item', image = 'sewingkit.png', unique = false, useable = false, shouldClose = false, description = 'A Sewing Kit ?' },
```

