Config = {}

Config.CraftingTableItem = 'fcrafting_table'
Config.SellCooldown = 600 -- 60 seconds between selling attempts 60000 original =60 sec

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
        blipSprite = 71,
        blipColor = 0,
        blipScale = 0.7,
        blipName = "Female Craft Store",
        items = {
            { name = "rolex", price = 100, label = "Golden Watch" },
            { name = "rolex", price = 100, label = "Golden Watch" },
            { name = "rolex", price = 100, label = "Golden Watch" },
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
        ["cfn-nails"] = {
            label = "Cfn Nails",
            time = 5000,
            materials = {
                ["acrylic-liquid"] = 1,
                ["acrylic-powder"] = 1,
                ["acrylic-nails"] = 1
            }
        },
        ["sti-nails"] = {
            label = "Sti Nails",
            time = 4000,
            materials = {
                ["acrylic-liquid"] = 1,
                ["acrylic-powder"] = 1,
                ["acrylic-nails"] = 1
            }
        },
        ["alm-nails"] = {
            label = "Alm Nails",
            time = 4000,
            materials = {
                ["acrylic-liquid"] = 1,
                ["acrylic-powder"] = 1,
                ["acrylic-nails"] = 1
            }
        },
        ["squ-nails"] = {
            label = "Bal Nails",
            time = 4000,
            materials = {
                ["acrylic-liquid"] = 1,
                ["acrylic-powder"] = 1,
                ["acrylic-nails"] = 1
            }
        },
        ["fla-nails"] = {
            label = "Fal Nails",
            time = 4000,
            materials = {
                ["acrylic-liquid"] = 1,
                ["acrylic-powder"] = 1,
                ["acrylic-nails"] = 1
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
            label = "Luxury Watch",
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
                ["14kgoldflakes"] = 1
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
    ["cfn-nails"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["sti-nails"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["alm-nails"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["squ-nails"] = {
        min = 650,
        max = 1300,
        chance = 90
    },
    ["fla-nails"] = {
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
        "Hey, I heard you're selling something?",
        "I'm interested in what you've got.",
        "Show me what you're offering."
    },
    accept = {
        "I'll take it!",
        "Seems like a fair price.",
        "Deal!"
    },
    reject = {
        "Not interested.",
        "That's not what I'm looking for.",
        "No thanks."
    }
}
