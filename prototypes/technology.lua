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
        name = "dtk-plutonium-fuel-reprocessing",
        icon = "__NuclearShmidtk__/graphics/technology/plutonium-fuel-reprocessing.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "dtk-mox-fuel-pellet"
            },
            {
                type = "unlock-recipe",
                recipe = "dtk-mox-fuel-cell"
            },
            {
                type = "unlock-recipe",
                recipe = "dtk-purex-2"
            },  
            {
                type = "unlock-recipe",
                recipe = "dtk-molten-salt"
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

  
})