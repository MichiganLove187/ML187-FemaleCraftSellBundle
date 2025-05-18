Config = {}

Config.CraftingTableItem = 'fcrafting_table'
Config.SellCooldown = 300 -- 60 seconds between selling attempts 60000 original =60 sec

Config.Commands = {
    startSelling = "fsell",
    stopSelling = "fstopsell"
}

Config.Selling = {
    maxItemsPerPurchase = 5, -- Maximum items a NPC can buy in one transaction
    enableRandomAmount = true -- If true, NPCs will buy random amounts up to maxItemsPerPurchase
}

Config.BuyerPeds = {
    "s_f_m_fembarber",
    "s_f_m_sweatshop_01",
    "s_f_y_movprem_01",
    "s_f_y_hooker_01",
    "s_f_y_shop_mid",
    "a_f_y_business_01",
    "a_f_y_business_02",
    "a_f_y_business_03",
    "a_f_y_business_04",
    "a_f_m_bevhills_01",
    "a_f_m_bevhills_02"
}

Config.Shops = {
    {
        location = vector3(-821.7, -192.58, 37.58), -- Example location, change as needed
        blipSprite = 211,
        blipColor = 8,
        blipScale = 1.0,
        blipName = "Female Craft Store",
        items = {
            { name = "fabric", price = 15, label = "Fabric" },
            { name = "leather", price = 35, label = "Leather" },
            { name = "thread", price = 5, label = "Thread" },
            { name = "rubber", price = 20, label = "Rubber" },
            { name = "wigcap", price = 50, label = "Wig Cap" },
            { name = "wigbundle", price = 100, label = "Wig Bundle" },
            { name = "sewingkit", price = 25, label = "Sewing Kit" },
            { name = "cloth", price = 5, label = "Cloth" },
            { name = "acrylic-liquid", price = 8, label = "Acrylic Liquid" },
            { name = "acrylic-powder", price = 7, label = "Acrylic Powder" },
            { name = "acrylic-nails", price = 9, label = "Acrylic Nails" },
            { name = "silver", price = 86, label = "Silver" },
            { name = "diamond", price = 150, label = "Diamond" },
            { name = "polybutylene", price = 125, label = "Polybutylene" },
            { name = "terephthalate", price = 150, label = "Terephthalate" },
            { name = "beads", price = 3, label = "Beads" },
            { name = "string", price = 2, label = "String" },
            { name = "goldflakes", price = 78, label = "GoldFlakes" },
            { name = "plastic", price = 6, label = "Plastic" },
            { name = "joint", price = 6, label = "Joint" },
            { name = "fcrafting_table", price = 1000, label = "Crafting Table" },
            -- Add more items as needed
        }
    }
    -- You can add more shop locations here
}

Config.Recipes = {
    shoes = {
        ["heels"] = {
            label = "Heels",
            time = 5000,
            materials = {
                ["fabric"] = 5,
                ["leather"] = 3,
                ["thread"] = 2,
                ["rubber"] = 2
            }
        },
        ["furboots"] = {
            label = "Fur Boots",
            time = 6000,
            materials = {
                ["fabric"] = 5,
                ["leather"] = 3,
                ["thread"] = 2,
                ["rubber"] = 2
            }
        },
        ["dheels"] = {
            label = "Designer Heels",
            time = 6000,
            materials = {
                ["fabric"] = 5,
                ["leather"] = 3,
                ["thread"] = 2,
                ["rubber"] = 2
            }
        },
        ["lheels"] = { 
            label = "Luxury Heels",
            time = 6000,
            materials = {
                ["fabric"] = 5,
                ["leather"] = 3,
                ["thread"] = 2,
                ["rubber"] = 2
            }
        },
        ["lboots"] = { 
            label = "Luxury Boots",
            time = 6000,
            materials = {
                ["fabric"] = 5,
                ["leather"] = 3,
                ["thread"] = 2,
                ["rubber"] = 2
            }
        },
    },
    wigs = {
        ["long_curly"] = {
            label = "Long Curly Wig",
            time = 4000,
            materials = {
                ["wigcap"] = 1,
                ["wigbundle"] = 1,
                ["sewingkit"] = 1
            }
        },
        ["short_hair_wig"] = {
            label = "Short Hair Wig",
            time = 4000,
            materials = {
                ["wigcap"] = 1,
                ["wigbundle"] = 1,
                ["sewingkit"] = 1
            }
        },
        ["braidwigs"] = {
            label = "Braided Wig",
            time = 4000,
            materials = {
                ["wigcap"] = 1,
                ["wigbundle"] = 1,
                ["sewingkit"] = 1
            }
        },
        ["bangwigs"] = {
            label = "Bang Wig",
            time = 4000,
            materials = {
                ["wigcap"] = 1,
                ["wigbundle"] = 1,
                ["sewingkit"] = 1
            }
        },
        ["straightwigs"] = {
            label = "Straight Wig",
            time = 4000,
            materials = {
                ["wigcap"] = 1,
                ["wigbundle"] = 1,
                ["sewingkit"] = 1
            }
        },
    },
    bags = {
        ["bowling_bag"] = {
            label = "Bowling Bag",
            time = 3000,
            materials = {
                ["leather"] = 1,
                ["sewing_kits"] = 1,
                ["cloth"] = 1
            }
        },
        ["pale_pink_bag"] = {
            label = "Pale Pink Bag",
            time = 3000,
            materials = {
                ["leather"] = 1,
                ["sewing_kits"] = 1,
                ["cloth"] = 1
            }
        },
        ["pink_heart_bag"] = {
            label = "Pink Heart Bag",
            time = 3000,
            materials = {
                ["leather"] = 1,
                ["sewing_kits"] = 1,
                ["cloth"] = 1
            }
        },
        ["pink_tote_bag"] = {
            label = "Pink Tote Bag",
            time = 3000,
            materials = {
                ["leather"] = 1,
                ["sewing_kits"] = 1,
                ["cloth"] = 1
            }
        },
    },
    nails = {
        ["cfnnails"] = {
            label = "Cfn Nails",
            time = 5000,
            materials = {
                ["acrylicliquid"] = 1,
                ["acrylicpowder"] = 1,
                ["acrylicnails"] = 1
            }
        },
        ["stinails"] = {
            label = "Sti Nails",
            time = 4000,
            materials = {
                ["acrylicliquid"] = 1,
                ["acrylicpowder"] = 1,
                ["acrylicnails"] = 1
            }
        },
        ["almnails"] = {
            label = "Alm Nails",
            time = 4000,
            materials = {
                ["acrylicliquid"] = 1,
                ["acrylicpowder"] = 1,
                ["acrylicnails"] = 1
            }
        },
        ["squnails"] = {
            label = "Bal Nails",
            time = 4000,
            materials = {
                ["acrylicliquid"] = 1,
                ["acrylicpowder"] = 1,
                ["acrylicnails"] = 1
            }
        },
        ["flanails"] = {
            label = "Fal Nails",
            time = 4000,
            materials = {
                ["acrylicliquid"] = 1,
                ["acrylicpowder"] = 1,
                ["acrylicnails"] = 1
            }
        },
    },
    necklaces = {
        ["cubanchain"] = {
            label = "Cuban Chain",
            time = 6000,
            materials = {
                ["silver"] = 2,
                ["diamond"] = 2
            }
        },
        ["heartnecklace"] = {
            label = "Heart Necklace",
            time = 6000,
            materials = {
                ["silver"] = 2,
                ["diamond"] = 2
            }
        },
        ["rubynecklace"] = {
            label = "Gold Chain",
            time = 6000,
            materials = {
                ["ruby"] = 2,
                ["silver"] = 2
            }
        },
        ["crystalnecklace"] = {
            label = "Crystal Necklace",
            time = 6000,
            materials = {
                ["crystal"] = 2,
                ["silver"] = 2
            }
        },
        ["pearlnecklace"] = {
            label = "Pearl Necklace",
            time = 6000,
            materials = {
                ["pearls"] = 2,
                ["string"] = 2
            }
        },
    },
    lashes = {
        ["falselash"] = {
            label = "False Lashes",
            time = 8000,
            materials = {
                ["polybutylene"] = 3,
                ["terephthalate"] = 1,
            }
        },
        ["straightlashes"] = {
            label = "Straight Lashes",
            time = 8000,
            materials = {
                ["polybutylene"] = 3,
                ["terephthalate"] = 1,
            }
        },
        ["volumelash"] = {
            label = "Volume Lash",
            time = 8000,
            materials = {
                ["polybutylene"] = 3,
                ["terephthalate"] = 1,
            }
        },
        ["coloredlashes"] = {
            label = "Colored Lashes",
            time = 8000,
            materials = {
                ["polybutylene"] = 3,
                ["terephthalate"] = 1,
            }
        },
    },
    bracelets = {
        ["cuff"] = {
            label = "Cuff",
            time = 5000,
            materials = {
                ["beads"] = 10,
                ["string"] = 2
            }
        },
        ["cuban"] = {
            label = "Cuban",
            time = 5000,
            materials = {
                ["diamond"] = 3,
                ["silver"] = 5
            }
        },
    },
    earrings = {
        ["hoops"] = {
            label = "Hoop Earrings",
            time = 4000,
            materials = {
                ["silver"] = 2,
                ["goldflakes"] = 1
            }
        },
        ["dangel"] = {
            label = "Dangel Earrings",
            time = 4000,
            materials = {
                ["diamond"] = 2,
                ["silver"] = 1
            }
        },
        ["studs"] = {
            label = "Diamond Studs",
            time = 4000,
            materials = {
                ["diamond"] = 2,
                ["silver"] = 2
            }
        },
        ["gages"] = {
            label = "Gages",
            time = 4000,
            materials = {
                ["plastic"] = 2,
            }
        }
    }
}

Config.SellPrices = {
    ["long_curly"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["short_hair_wig"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["braidwigs"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["bangwigs"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["straightwigs"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["bowling_bag"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["pale_pink_bag"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["pink_heart_bag"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["pink_messenger_bag"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["pink_tote_bag"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["tote_bag"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["elegancy_beauty_bag"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["small_yellow_bag"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["funky_bag"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["cfnnails"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["stinails"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["almnails"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["squnails"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["flanails"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["gages"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["studs"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["dangel"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["hoops"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["cuban"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["cuff"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["falselash"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["straightlashes"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["volumelashes"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["coloredlashes"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["pearlnecklace"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["crystalnecklace"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["rubynecklace"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["heartnecklace"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["cubanchain"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["lboots"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["lheels"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["dheels"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["furboots"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["heels"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
}

Config.NPCDialogs = {
    approach = {
        "Hey, I heard you're selling luxury items?",
        "I'm interested in what you've got. Can I see?",
        "Show me what you're offering, I'm looking for something special.",
        "I need something high-end. What do you have?",
        "My friend recommended your products. What's available?"
    },
    accept = {
        "I'll take it! This is exactly what I wanted.",
        "Seems like a fair price. I'll buy it.",
        "Deal! This will look perfect on me.",
        "I've been looking for something like this. I'll buy it.",
        "This is gorgeous! Here's your money."
    },
    reject = {
        "Not interested. The quality doesn't seem right.",
        "That's not what I'm looking for. Maybe next time.",
        "No thanks, I was expecting something different.",
        "I'll have to pass. It's not my style.",
        "Too expensive for what it is. I'll look elsewhere."
    }
}
