data:extend(
{
    {
        -- enables advanced 
        type = "technology",
        name = "dtk-uranium-centrifuging-tech",
        icon = "__NuclearShmidtk__/graphics/technology/centrifuging.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "dtk-uranium-centrifuging-1"
            },
            {
                type = "unlock-recipe",
                recipe = "dtk-uranium-centrifuging-2"
            },
            {
                type = "unlock-recipe",
                recipe = "dtk-uranium-centrifuging-3"
            },
            {
                type = "unlock-recipe",
                recipe = "dtk-uranium-centrifuging-4"
            },
            {
                type = "unlock-recipe",
                recipe = "dtk-uranium-centrifuging-5"
            },
        },
        prerequisites = {"uranium-processing"},
        unit =
        {
            count = 1000,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        },
        order = "c-c"
    },


	{
        -- enables plutonium fuel reprocessing
        type = "technology",
        name = "plutonium-fuel-reprocessing",
        icon = "__NuclearShmidtk__/graphics/technology/plutonium-fuel-reprocessing.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "plutonium-fuel-cell"
            },
            {
                type = "unlock-recipe",
                recipe = "upgraded-plutonium-fuel-cell"
            },
            {
                type = "unlock-recipe",
                recipe = "plutonium-fuel-reprocessing"
            },
            {
                type = "unlock-recipe",
                recipe = "upgraded-plutonium-fuel-reprocessing"
            },
        },
        prerequisites = {"nuclear-fuel-reprocessing"},
        prerequisites = {"nuclear-power"},
        unit =
        {
            count = 1000,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        },
        order = "c-c"
    },
    {
        -- enables neptunium fuel reprocessing
        type = "technology",
        name = "neptunium-fuel-reprocessing",
        icon = "__NuclearShmidtk__/graphics/technology/neptunium-fuel-reprocessing.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "neptunium-fuel-cell"
            },
            {
                type = "unlock-recipe",
                recipe = "neptunium-fuel-reprocessing"
            },
        },
        prerequisites = {"nuclear-fuel-reprocessing"},
        prerequisites = {"nuclear-power"},
        unit =
        {
            count = 1000,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        },
        order = "c-c"
    },
    {
        -- enables very high temperature nuclear reactor
        type = "technology",
        name = "vht-nuclear-reactor",
        icon = "__NuclearShmidtk__/graphics/technology/very-high-temp-nuclear-reactor.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "vht-nuclear-reactor"
            },
        },
        prerequisites = {"nuclear-fuel-reprocessing"},
        prerequisites = {"nuclear-power"},
        prerequisites = {"plutonium-fuel-reprocessing"},
        unit =
        {
            count = 1000,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        order = "c-c"
    },
    {
        -- enables thorium processing
        type = "technology",
        name = "thorium-processing",
        icon = "__NuclearShmidtk__/graphics/technology/thorium-processing.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "thorium-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "thorium-fuel-cell"
            },
        },
        prerequisites = {"nuclear-fuel-reprocessing"},
        prerequisites = {"nuclear-power"},
        prerequisites = {"plutonium-fuel-reprocessing"},
        unit =
        {
            count = 1250,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        order = "c-c"
    },
    {
        -- enables thorium neutron absorption
        type = "technology",
        name = "thorium-neutron-absorption",
        icon = "__NuclearShmidtk__/graphics/technology/thorium-neutron-absorption.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "thorium-neutron-absorption"
            },
        },
        prerequisites = {"thorium-processing"},
        prerequisites = {"nuclear-power"},
        prerequisites = {"plutonium-fuel-reprocessing"},
        unit =
        {
            count = 1500,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        order = "c-c"
    },
    {
        -- enables thorium fuel reprocessing
        type = "technology",
        name = "thorium-fuel-reprocessing",
        icon = "__NuclearShmidtk__/graphics/technology/thorium-fuel-reprocessing.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "thorium-fuel-reprocessing"
            },
        },
        prerequisites = {"thorium-processing"},
        prerequisites = {"nuclear-power"},
        prerequisites = {"plutonium-fuel-reprocessing"},
        unit =
        {
            count = 1000,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        order = "c-c"
    },
    {
        -- enables molten salt nuclear reactor
        type = "technology",
        name = "ms-nuclear-reactor",
        icon = "__NuclearShmidtk__/graphics/technology/molten-salt-nuclear-reactor.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "ms-nuclear-reactor"
            },
        },
        prerequisites = {"thorium-processing"},
        prerequisites = {"thorium-neutron-absorption"},
        prerequisites = {"vht-nuclear-reactor"},
        unit =
        {
            count = 1750,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        order = "c-c"
    },
    {
        -- enables nuclear waste container
        type = "technology",
        name = "nuclear-waste-container",
        icon = "__NuclearShmidtk__/graphics/technology/nuclear-waste-container.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "nuclear-waste-container"
            },
            {
                type = "unlock-recipe",
                recipe = "burial-uranium-oxide"
            },
            {
                type = "unlock-recipe",
                recipe = "burial-uranium-hexafluoride"
            },
            {
                type = "unlock-recipe",
                recipe = "burial-nuclear-waste"
            },
        },
        prerequisites = {"nuclear-power"},
        unit =
        {
            count = 250,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 45
        },
        order = "c-c"
    },
})