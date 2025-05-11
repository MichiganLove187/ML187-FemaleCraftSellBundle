# Ml187 Craft Sell Bundle

A FiveM resource for QBCore framework that adds MultiCraftSellBundle. Designed For Females to have more activity's!.

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
	['acrylic-liquid'] 			     	 = {['name'] = 'acrylic-liquid', 				    ['label'] = 'Acrylic Liquid',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'acrylic-liquid.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,       ['description'] = ''},
	['acrylic-powder'] 			     	 = {['name'] = 'acrylic-powder', 				    ['label'] = 'Acrylic Powder',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'acrylic-powder.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['acrylic-nails'] 			     	 = {['name'] = 'acrylic-nails', 				    ['label'] = 'Acrylic Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'acrylic-nails.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['handbag_leather'] 			     	 = {['name'] = 'handbag_leather', 				    ['label'] = 'Handbag Leather',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_leather.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['handbag_sewing_kits'] 			     	 = {['name'] = 'handbag_sewing_kits', 				    ['label'] = 'Handbag Sewing Kits',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_sewing_kits.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['description'] = ''},
	['handbag_cloth'] 			     	 = {['name'] = 'handbag_cloth', 				    ['label'] = 'Handbag Cloth',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['wigcap'] 			     	 = {['name'] = 'wigcap', 				    ['label'] = 'Wig Cap',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'wigcap.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['wigbundle'] 			     	 = {['name'] = 'wigbundle', 				    ['label'] = 'Wig Bundle',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'wigbundle.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['sewingkit'] 			     	 = {['name'] = 'sewingkit', 				    ['label'] = 'Sewing Kit',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'sewingkit.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['long_curly'] 			     	 = {['name'] = 'long_curly', 				    ['label'] = 'Long Curly',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'long_curly.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['short_hair_wig'] 			     	 = {['name'] = 'short_hair_wig', 				    ['label'] = 'Short Hair Wig',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'short_hair_wig.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['long_blonde_wig'] 			     	 = {['name'] = 'long_blonde_wig', 				    ['label'] = 'Long Blonde Wig',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['40inchwigs'] 			     	 = {['name'] = '40inchwigs', 				    ['label'] = '40 Inch Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['braidwigs'] 			     	 = {['name'] = 'braidwigs', 				    ['label'] = 'Braid Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['bodywavewigs'] 			     	 = {['name'] = 'bodywavewigs', 				    ['label'] = 'Body Wave Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['bangwigs'] 			     	 = {['name'] = 'bangwigs', 				    ['label'] = 'Bang Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['straightwigs'] 			     	 = {['name'] = 'straightwigs', 				    ['label'] = 'Straight Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['naturalwavewigs'] 			     	 = {['name'] = 'naturalwavewigs', 				    ['label'] = 'Natural Wave Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['deepwavewigs'] 			     	 = {['name'] = 'deepwavewigs', 				    ['label'] = 'Deep Wave Wigs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,       ['description'] = ''},
	['bowling_bag'] 			     	 = {['name'] = 'bowling_bag', 				    ['label'] = 'Bowling Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['pale_pink_bag'] 			     	 = {['name'] = 'pale_pink_bag', 				    ['label'] = 'Pale Pink Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['pink_heart_bag'] 			     	 = {['name'] = 'pink_heart_bag', 				    ['label'] = 'Pink Heart Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['pink_tote_bag'] 			     	 = {['name'] = 'pink_tote_bag', 				    ['label'] = 'Pink Tote Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['tote_bag'] 			     	 = {['name'] = 'tote_bag', 				    ['label'] = 'Tote Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['elegancy_beauty_bag'] 			     	 = {['name'] = 'elegancy_beauty_bag', 				    ['label'] = 'Elegancy Beauty Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['small_yellow_bag'] 			     	 = {['name'] = 'small_yellow_bag', 				    ['label'] = 'Small Yellow Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['funky_bag'] 			     	 = {['name'] = 'funky_bag', 				    ['label'] = 'Funky Bag',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['cfn-nails'] 			     	 = {['name'] = 'cfn-nails', 				    ['label'] = 'Cfn Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['sti-nails'] 			     	 = {['name'] = 'sti-nails', 				    ['label'] = 'Sti Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['alm-nails'] 			     	 = {['name'] = 'alm-nails', 				    ['label'] = 'Alm Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['lip-nails'] 			     	 = {['name'] = 'lip-nails', 				    ['label'] = 'Lip Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['bal-nails'] 			     	 = {['name'] = 'bal-nails', 				    ['label'] = 'Bal Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['squ-nails'] 			     	 = {['name'] = 'squ-nails', 				    ['label'] = 'Squ Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,       ['description'] = ''},
	['fla-nails'] 			     	 = {['name'] = 'fla-nails', 				    ['label'] = 'Fla Nails',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['description'] = ''},
	['chanelheels'] 			     	 = {['name'] = 'chanelheels', 				    ['label'] = 'Chanel Heels',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['uggs'] 			     	 = {['name'] = 'uggs', 				    ['label'] = 'Uggs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['ysl'] 			     	 = {['name'] = 'ysl', 				    ['label'] = 'YSL Heels',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['christianlouboutin'] 			     	 = {['name'] = 'christianlouboutin', 				    ['label'] = 'Christian Louboutin',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['jimmychoo'] 			     	 = {['name'] = 'jimmychoo', 				    ['label'] = 'Jimmy Choos',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['cubanchain'] 			     	 = {['name'] = 'cubanchain', 				    ['label'] = 'Cuban Chain',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['heartnecklace'] 			     	 = {['name'] = 'heartnecklace', 				    ['label'] = 'Heart Necklace',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['rubynecklace'] 			     	 = {['name'] = 'rubynecklace', 				    ['label'] = 'Ruby Necklace',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['crystalnecklace'] 			     	 = {['name'] = 'crystalnecklace', 				    ['label'] = Crystal Necklace',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['pearlnecklace'] 			     	 = {['name'] = 'pearlnecklace', 				    ['label'] = 'Pearl Necklace',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['coloredlashes'] 			     	 = {['name'] = 'coloredlashes', 				    ['label'] = 'Colored Lashes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['volumelashes'] 			     	 = {['name'] = 'volumelashes', 				    ['label'] = 'Volume Lashes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['straightlashes'] 			     	 = {['name'] = 'straightlashes', 				    ['label'] = 'Straight Lashes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['falselash'] 			     	 = {['name'] = 'falselashes', 				    ['label'] = 'False Lashes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['rusticcuff'] 			     	 = {['name'] = 'rusticcuff', 				    ['label'] = 'Rustic Cuff',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['cuban'] 			     	 = {['name'] = 'cuban', 				    ['label'] = 'Cuban Bracelet',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['hoops'] 			     	 = {['name'] = 'hoops', 				    ['label'] = 'Hoop Earrings',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['dangel'] 			     	 = {['name'] = 'dangel', 				    ['label'] = 'Dangel Earrings',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['studs'] 			     	 = {['name'] = 'studs', 				    ['label'] = 'Studs',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['gages'] 			     	 = {['name'] = 'gages', 				    ['label'] = 'Gages',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['plastic'] 			     	 = {['name'] = 'plastic', 				    ['label'] = 'Plastic',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['silver'] 			     	 = {['name'] = 'silver', 				    ['label'] = 'Silver',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['diamond'] 			     	 = {['name'] = 'diamond', 				    ['label'] = 'Diamond',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['14kgoldflakes'] 			     	 = {['name'] = '14kgoldflakes', 				    ['label'] = '14k Gold Flakes',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['string'] 			     	 = {['name'] = 'string', 				    ['label'] = 'String',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['beads'] 			     	 = {['name'] = 'beads', 				    ['label'] = 'Beads',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['polybutylene'] 			     	 = {['name'] = 'polybutylene', 				    ['label'] = 'Polybutylene',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['terephthalate'] 			     	 = {['name'] = 'terephthalate', 				    ['label'] = 'Terephthalate',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['pearls'] 			     	 = {['name'] = 'pearls', 				    ['label'] = 'Pearls',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['crystal'] 			     	 = {['name'] = 'crystal', 				    ['label'] = 'crystal',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['ruby'] 			     	 = {['name'] = 'ruby', 				    ['label'] = 'Ruby',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['fabric'] 			     	 = {['name'] = 'fabric', 				    ['label'] = 'Fabric',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['leather'] 			     	 = {['name'] = 'leather', 				    ['label'] = 'Leather',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['thread'] 			     	 = {['name'] = 'thread', 				    ['label'] = 'Thread',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},
	['rubber'] 			     	 = {['name'] = 'rubber', 				    ['label'] = 'Rubber',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'handbag_cloth.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,        ['description'] = ''},

```

