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
    ['fcrafting_table'] 			     	 = {['name'] = 'fcrafting_table', 				    ['label'] = 'Female Crafting Table',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'fcrafting_table.png',         	['unique'] = true,     ['useable'] = true,     ['shouldClose'] = true,        ['description'] = 'Female Crafting Table'},
	['acrylic-liquid'] 			     	 = {['name'] = 'acrylic-liquid', 				    ['label'] = 'Acrylic Liquid',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'acrylicliquid.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,   ['combinable'] = nil,    ['description'] = ''},
	['acrylic-powder'] 			     	 = {['name'] = 'acrylic-powder', 				    ['label'] = 'Acrylic Powder',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'acrylicpowder.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = ''},
	['acrylic-nails'] 			     	 = {['name'] = 'acrylic-nails', 				    ['label'] = 'Acrylic Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'acrylicnails.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = ''},
	['wigcap'] 			     	 = {['name'] = 'wigcap', 				    ['label'] = 'Wig Cap',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'wigcap.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = ''},
	['wigbundle'] 			     	 = {['name'] = 'wigbundle', 				    ['label'] = 'Wig Bundle',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'wigbundle.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = ''},
	['long_curly'] 			     	 = {['name'] = 'long_curly', 				    ['label'] = 'Long Curly',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'wiglongcurly.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = ''},
	['short_hair_wig'] 			     	 = {['name'] = 'short_hair_wig', 				    ['label'] = 'Short Hair Wig',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'shorthairwig.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false, ['combinable'] = nil,       ['description'] = ''},
	['braidwigs'] 			     	 = {['name'] = 'braidwigs', 				    ['label'] = 'Braid Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'braidwig.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = ''},
	['bangwigs'] 			     	 = {['name'] = 'bangwigs', 				    ['label'] = 'Bang Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'bangwig.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = ''},
	['straightwigs'] 			     	 = {['name'] = 'straightwigs', 				    ['label'] = 'Straight Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'straightwig.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = ''},
	['bowling_bag'] 			     	 = {['name'] = 'bowling_bag', 				    ['label'] = 'Bowling Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'bowlingbag.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = ''},
	['pale_pink_bag'] 			     	 = {['name'] = 'pale_pink_bag', 				    ['label'] = 'Pale Pink Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'palepinkbag.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,  ['combinable'] = nil,      ['description'] = ''},
	['pink_heart_bag'] 			     	 = {['name'] = 'pink_heart_bag', 				    ['label'] = 'Pink Heart Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'pinkheartbag.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false, ['combinable'] = nil,       ['description'] = ''},
	['pink_tote_bag'] 			     	 = {['name'] = 'pink_tote_bag', 				    ['label'] = 'Pink Tote Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'pinktotebag.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = ''},
	['cfn-nails'] 			     	 = {['name'] = 'cfn-nails', 				    ['label'] = 'Cfn Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'cfn-nails.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = ''},
	['sti-nails'] 			     	 = {['name'] = 'sti-nails', 				    ['label'] = 'Sti Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'sti-nails.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = ''},
	['alm-nails'] 			     	 = {['name'] = 'alm-nails', 				    ['label'] = 'Alm Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'alm-nails.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,    ['description'] = ''},
	['squ-nails'] 			     	 = {['name'] = 'squ-nails', 				    ['label'] = 'Squ Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'squ-nails.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,  ['combinable'] = nil,     ['description'] = ''},
	['fla-nails'] 			     	 = {['name'] = 'fla-nails', 				    ['label'] = 'Fla Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'fla-nails.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = ''},
	['heels'] 			     	 = {['name'] = 'heels', 				    ['label'] = 'Heels',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'heels.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,  ['combinable'] = nil,      ['description'] = ''},
	['furboots'] 			     	 = {['name'] = 'furboots', 				    ['label'] = 'Fur Boots',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'furboots.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['dheels'] 			     	 = {['name'] = 'dheels', 				    ['label'] = 'Designer Heels',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'dheels.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['lheels'] 			     	 = {['name'] = 'lheels', 				    ['label'] = 'Luxury Heels',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'lheels.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['lboots'] 			     	 = {['name'] = 'lboots', 				    ['label'] = 'Luxury Boots',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'lboots.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['cubanchain'] 			     	 = {['name'] = 'cubanchain', 				    ['label'] = 'Cuban Chain',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'cubanchain.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['heartnecklace'] 			     	 = {['name'] = 'heartnecklace', 				    ['label'] = 'Heart Necklace',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'heartnecklace.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['rubynecklace'] 			     	 = {['name'] = 'rubynecklace', 				    ['label'] = 'Ruby Necklace',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'rubynecklace.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['crystalnecklace'] 			     	 = {['name'] = 'crystalnecklace', 				    ['label'] = 'Crystal Necklace',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'crystalnecklace.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['pearlnecklace'] 			     	 = {['name'] = 'pearlnecklace', 				    ['label'] = 'Pearl Necklace',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'pearlnecklace.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['coloredlashes'] 			     	 = {['name'] = 'coloredlashes', 				    ['label'] = 'Colored Lashes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'coloredlashes.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['volumelashes'] 			     	 = {['name'] = 'volumelashes', 				    ['label'] = 'Volume Lashes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'volumelashes.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['straightlashes'] 			     	 = {['name'] = 'straightlashes', 				    ['label'] = 'Straight Lashes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'straightlashes.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['falselashes'] 			     	 = {['name'] = 'falselashes', 				    ['label'] = 'False Lashes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'falselashes.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['cuff'] 			     	 = {['name'] = 'cuff', 				    ['label'] = 'Cuff',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'cuff.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['cuban'] 			     	 = {['name'] = 'cuban', 				    ['label'] = 'Cuban Bracelet',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'cuban.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['hoops'] 			     	 = {['name'] = 'hoops', 				    ['label'] = 'Hoop Earrings',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'hoops.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['dangel'] 			     	 = {['name'] = 'dangel', 				    ['label'] = 'Dangel Earrings',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'dangle.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['studs'] 			     	 = {['name'] = 'studs', 				    ['label'] = 'Studs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'studs.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['gages'] 			     	 = {['name'] = 'gages', 				    ['label'] = 'Gages',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'gages.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['plastic'] 			     	 = {['name'] = 'plastic', 				    ['label'] = 'Plastic',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['silver'] 			     	 = {['name'] = 'silver', 				    ['label'] = 'Silver',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'silver.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['diamond'] 			     	 = {['name'] = 'diamond', 				    ['label'] = 'Diamond',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'diamond.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['14kgoldflakes'] 			     	 = {['name'] = '14kgoldflakes', 				    ['label'] = '14k Gold Flakes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = '14kgoldflakes.png',         	['unique'] = true,     ['useable'] = false,     ['combinable'] = nil,     ['shouldClose'] = false,        ['description'] = ''},
	['string'] 			     	 = {['name'] = 'string', 				    ['label'] = 'String',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'string.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['beads'] 			     	 = {['name'] = 'beads', 				    ['label'] = 'Beads',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'beads.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,       ['description'] = ''},
	['polybutylene'] 			     	 = {['name'] = 'polybutylene', 				    ['label'] = 'Polybutylene',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'polybutylene.png',         	['unique'] = true,     ['useable'] = false,     ['combinable'] = nil,     ['shouldClose'] = false,        ['description'] = ''},
	['terephthalate'] 			     	 = {['name'] = 'terephthalate', 				    ['label'] = 'Terephthalate',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'terephthalate.png',         	['unique'] = true,     ['useable'] = false, ['combinable'] = nil,     ['shouldClose'] = false,        ['description'] = ''},
	['pearls'] 			     	 = {['name'] = 'pearls', 				    ['label'] = 'Pearls',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'pearls.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['crystal'] 			     	 = {['name'] = 'crystal', 				    ['label'] = 'crystal',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'crystal.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['ruby'] 			     	 = {['name'] = 'ruby', 				    ['label'] = 'Ruby',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'ruby.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['fabric'] 			     	 = {['name'] = 'fabric', 				    ['label'] = 'Fabric',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'fabric.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['leather'] 			     	 = {['name'] = 'leather', 				    ['label'] = 'Leather',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'leather.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,        ['description'] = ''},
	['thread'] 			     	 = {['name'] = 'thread', 				    ['label'] = 'Thread',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'thread.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,            ['combinable'] = nil,    ['description'] = ''},
	['rubber'] 			     	 = {['name'] = 'rubber', 				    ['label'] = 'Rubber',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,            ['combinable'] = nil,    ['description'] = ''},
    ['sewing_kit'] 			     	 = {['name'] = 'sewing_kit', 				    ['label'] = 'Sewing Kit',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'sewingkit.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,    ['combinable'] = nil,     ['description'] = ''},

    ['delivery_box']             = {['name'] = 'delivery_box',              ['label'] = 'Delivery Box',               ['weight'] = 1000,    ['type'] = 'item',      ['image'] = 'deliverybox.png',      ['unique'] = false,     ['useable'] = false,    ['shouldClose'] = true,     ['combinable'] = nil,   ['description'] = 'A box for packaging fashion items for delivery.'},

```

