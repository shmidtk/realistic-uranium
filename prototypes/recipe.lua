data:extend(
{--URANIUM PROCESSING
    {  --URANIUM POWDER
        type = "recipe",
        name = "uranium-powder",
        category = "centrifuging",
        energy_required = 12, --fix
        enabled = false,
        ingredients = {
            {"uranium-ore", 10}
        },
        result = "uranium-powder",
        result_count = 10,
        icon = "__NuclearShmidtk__/graphics/icons/uranium-powder-64.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "f[uranium-powder]"
    },
    {  --URANIUM SLURRY
        type = "recipe",
        name = "uranium-slurry-preparation",
        category = "chemistry",
        energy_required = 12, --fix
        enabled = false,
        ingredients = {
                        {type="item",  name = "uranium-powder", amount = 25},
                        {type="fluid", name = "water",          amount = 75},
                      },
        results = {
                    {type="fluid", name="uranium-slurry", amount=100},
                  },
        main_product= "",
        icon_mipmaps = 4,
        icon = "__NuclearShmidtk__/graphics/icons/uranium-slurry.png",
        icon_size = 32,
        subgroup = "fluid-recipes",
        order = "a[fluid-chemistry]-f[uranium-slurry]"
    },

    
    {
        type = "recipe",
        name = "plutonium-fuel-cell",
        energy_required = 12,
        enabled = false,
        ingredients = {
            {"empty-fuel-cell", 10},
            {"uranium-238", 17},
            {"plutonium-239", 3},
        },
        result = "plutonium-fuel-cell",
        result_count = 10
    },
    {
        type = "recipe",
        name = "upgraded-plutonium-fuel-cell",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {"plutonium-fuel-cell", 1},
            {"uranium-oxide", 10},
            {"uranium-238", 2},
        },
        result = "upgraded-plutonium-fuel-cell",
        result_count = 1
    },
    {
        type = "recipe",
        name = "thorium-fuel-cell",
        energy_required = 12,
        enabled = false,
        ingredients = {
            {"empty-fuel-cell", 10},
            {"uranium-233", 19},
            {"uranium-236", 1},
        },
        result = "thorium-fuel-cell",
        result_count = 10
    },
    {
        type = "recipe",
        name = "neptunium-fuel-cell",
        energy_required = 12,
        enabled = false,
        ingredients = {
            {"empty-fuel-cell", 10},
            {"neptunium-237", 19},
            {"neptunium-239", 1},
        },
        result = "neptunium-fuel-cell",
        result_count = 10
    },
    {
        type = "recipe",
        name = "empty-fuel-cell",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {"concrete", 2},
            {"steel-plate", 2},
            {"iron-stick", 3},
        },
        result = "empty-fuel-cell",
        result_count = 5
    },
    {
        type = "recipe",
        name = "highly-radioactive-rounds-magazine",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {"uranium-rounds-magazine", 1},
            {"radium-226", 2},
            {"neptunium-237", 1},
        },
        result = "highly-radioactive-rounds-magazine",
        result_count = 1
    },
    {
        type = "recipe",
        name = "nuclear-uranium-bomb",
        enabled = false,
        energy_required = 140,
        ingredients =
        {
            {"uranium-235", 50},
            {"artillery-shell", 1},
            {"steel-plate", 25},
            {"radar", 1},
            {"atomic-bomb", 1},
        },
        result = "nuclear-uranium-bomb"
    },
    {
        type = "recipe",
        name = "nuclear-plutonium-bomb",
        enabled = false,
        energy_required = 140,
        ingredients =
        {
            {"plutonium-239", 45},
            {"plutonium-238", 5},
            {"artillery-shell", 1},
            {"steel-plate", 25},
            {"radar", 1},
            {"atomic-bomb", 1},
        },
        result = "nuclear-plutonium-bomb"
    },
    {
        type = "recipe",
        name = "vht-nuclear-reactor",
        energy_required = 16,
        enabled = false,
        ingredients = {
            {"advanced-circuit", 750},
            {"concrete", 750},
            {"refined-concrete", 250},
            {"copper-plate", 750},
            {"steel-plate", 750},
            {"water-barrel", 500},
        },
        result = "vht-nuclear-reactor",
        result_count = 1
    },
    {
        type = "recipe",
        name = "ms-nuclear-reactor",
        energy_required = 16,
        enabled = false,
        ingredients = {
            {"processing-unit", 300},
            {"concrete", 800},
            {"refined-concrete", 300},
            {"copper-plate", 800},
            {"steel-plate", 800},
            {"water-barrel", 500},
        },
        result = "ms-nuclear-reactor",
        result_count = 1
    },
    {
        type = "recipe",
        name = "nuclear-waste-container",
        energy_required = 16,
        enabled = false,
        ingredients = {
            {"concrete", 100},
            {"refined-concrete", 100},
            {"steel-plate", 50},
            {"advanced-circuit", 25},
        },
        result = "nuclear-waste-container",
        result_count = 1
    },
    {
        type = "recipe",
        name = "gas-centrifuge",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {"advanced-circuit", 100},
            {"refined-concrete", 100},
            {"iron-gear-wheel", 100},
            {"steel-plate", 50},
        },
        result = "gas-centrifuge",
        result_count = 1
    },
    {
        type = "recipe",
        name = "advanced-uranium-fuel-reprocessing",
        emissions_multiplier = 2.5,
        energy_required = 50,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"used-up-uranium-fuel-cell", 5}},
        icon = "__NuclearShmidtk__/graphics/icons/advanced-nuclear-fuel-reprocessing.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[advanced-uranium-fuel-reprocessing]",
        main_product = "",
        results = {
            {
                name = "uranium-238",
                amount = 1
            },
            {
                name = "plutonium-239",
                amount = 2
            },
            {
                name = "neptunium-237",
                amount = 1,
                probability = 0.4,
            },
            {
                name = "uranium-236",
                amount = 1,
                probability = 0.1,
            },
            {
                name = "nuclear-waste",
                amount = 1
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "plutonium-fuel-reprocessing",
        emissions_multiplier = 2.5,
        energy_required = 50,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"used-up-plutonium-fuel-cell", 5}},
        icon = "__NuclearShmidtk__/graphics/icons/plutonium-fuel-reprocessing.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[plutonium-fuel-reprocessing]",
        main_product = "",
        results = {
            {
                name = "uranium-oxide",
                amount = 10
            },
            {
                name = "plutonium-239",
                amount = 1
            },
            {
                name = "nuclear-waste",
                amount = 2
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "thorium-fuel-reprocessing",
        emissions_multiplier = 2.5,
        energy_required = 50,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"used-up-thorium-fuel-cell", 5}},
        icon = "__NuclearShmidtk__/graphics/icons/thorium-fuel-reprocessing.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[thorium-fuel-reprocessing]",
        main_product = "",
        results = {
            {
                name = "uranium-oxide",
                amount = 10
            },
            {
                name = "uranium-233",
                amount = 2
            },
            {
                name = "nuclear-waste",
                amount = 1
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "neptunium-fuel-reprocessing",
        emissions_multiplier = 2.5,
        energy_required = 50,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"used-up-neptunium-fuel-cell", 5}},
        icon = "__NuclearShmidtk__/graphics/icons/neptunium-fuel-reprocessing.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[neptunium-fuel-reprocessing]",
        main_product = "",
        results = {
            {
                name = "uranium-oxide",
                amount = 10
            },
            {
                name = "neptunium-237",
                amount = 1
            },
            {
                name = "nuclear-waste",
                amount = 1
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "upgraded-plutonium-fuel-reprocessing",
        emissions_multiplier = 2.5,
        energy_required = 50,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"used-up-upgraded-plutonium-fuel-cell", 5}},
        icon = "__NuclearShmidtk__/graphics/icons/upgraded-plutonium-fuel-reprocessing.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[upgraded-plutonium-fuel-reprocessing]",
        main_product = "",
        results = {
            {
                name = "uranium-oxide",
                amount = 15
            },
            {
                name = "plutonium-239",
                amount = 1
            },
            {
                name = "nuclear-waste",
                amount = 3
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "uranium-neutron-absorption",
        energy_required = 50,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"uranium-238", 12}, {"uranium-235", 1}},
        icon = "__NuclearShmidtk__/graphics/icons/uranium-neutron-absorption.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[uranium-neutron-absorption]",
        main_product = "",
        results = {
            {
                name = "neptunium-239",
                amount = 6
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "plutonium-239",
        energy_required = 80,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"neptunium-239", 2}},
        icon = "__NuclearShmidtk__/graphics/icons/plutonium-239.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[plutonium-239]",
        main_product = "",
        results = {
            {
                name = "plutonium-239",
                amount = 2
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "plutonium-238",
        energy_required = 80,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"neptunium-237", 2}},
        icon = "__NuclearShmidtk__/graphics/icons/plutonium-238.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[plutonium-238]",
        main_product = "",
        results = {
            {
                name = "plutonium-238",
                amount = 2
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "thorium-processing",
        energy_required = 25,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"thorium-ore", 10}},
        icon = "__NuclearShmidtk__/graphics/icons/thorium-processing.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[thorium-processing]",
        main_product = "",
        results = {
            {
                name = "thorium-232",
                amount = 1
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "thorium-neutron-absorption",
        energy_required = 100,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"thorium-232", 12}, {"uranium-235", 1}},
        icon = "__NuclearShmidtk__/graphics/icons/thorium-neutron-absorption.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[thorium-neutron-absorption]",
        main_product = "",
        results = {
            {
                name = "uranium-233",
                amount = 6
            },
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "uranium-hexafluoride",
        energy_required = 30,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"uranium-238", 5}},
        icon = "__NuclearShmidtk__/graphics/icons/uranium-hexafluoride.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[uranium-hexafluoride]",
        main_product = "",
        results = 
        {
            {type="fluid", name="uranium-hexafluoride", amount=100},
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "uranium-hexafluoride-2",
        energy_required = 30,
        enabled = false,
        category = "centrifuging",
        ingredients = {{"uranium-oxide", 20}},
        icon = "__NuclearShmidtk__/graphics/icons/uranium-hexafluoride.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[uranium-hexafluoride-2]",
        main_product = "",
        results = 
        {
            {type="fluid", name="uranium-hexafluoride", amount=100},
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "low-enriched-uranium-hexafluoride",
        energy_required = 100,
        enabled = false,
        category = "centrifuging",
        ingredients = {{type="fluid", name="uranium-hexafluoride", amount=100}},
        icon = "__NuclearShmidtk__/graphics/icons/low-enriched-uranium-hexafluoride.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[low-enriched-uranium-hexafluoride]",
        main_product = "",
        results = 
        {
            {type="fluid", name="low-enriched-uranium-hexafluoride", amount=100},
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "highly-enriched-uranium-hexafluoride",
        energy_required = 120,
        enabled = false,
        category = "centrifuging",
        ingredients = {{type="fluid", name="low-enriched-uranium-hexafluoride", amount=100}},
        icon = "__NuclearShmidtk__/graphics/icons/highly-enriched-uranium-hexafluoride.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[highly-enriched-uranium-hexafluoride]",
        main_product = "",
        results = 
        {
            {type="fluid", name="highly-enriched-uranium-hexafluoride", amount=50},
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "uranium-238-2",
        energy_required = 20,
        enabled = false,
        category = "centrifuging",
        ingredients = {{type="fluid", name="low-enriched-uranium-hexafluoride", amount=50}},
        icon = "__NuclearShmidtk__/graphics/icons/uranium-238-hex.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[uranium-238-2]",
        main_product = "",
        results = 
        {
            {type="item", name="uranium-238", amount=5},
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "uranium-235-2",
        energy_required = 30,
        enabled = false,
        category = "centrifuging",
        ingredients = {{type="fluid", name="highly-enriched-uranium-hexafluoride", amount=50}},
        icon = "__NuclearShmidtk__/graphics/icons/uranium-235-hex.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "r[uranium-processing]-e[uranium-235-2]",
        main_product = "",
        results = 
        {
            {type="item", name="uranium-235", amount=1},
        },
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "fluorite",
        icon = "__NuclearShmidtk__/graphics/icons/fluorite.png",
        icon_size = 64,
        category = "chemistry",
        enabled = false,
        energy_required = 6,
        ingredients = 
        {
            {type="item", name="uranium-ore", amount=8},
            {type="item", name="stone", amount=10},
            {type="fluid", name="sulfuric-acid", amount=25},
        },
        results = 
        {
            {type="fluid", name="uranium-hexafluoride", amount=4},
            {type="item", name="fluorite", amount=2},
        },
        subgroup = "fluid-recipes",
        order = "a[fluid-chemistry]-f[fluorite]",
        crafting_machine_tint =
        {
            primary = {r = 0.10, g = 0.80, b = 0.10},
            secondary = {r = 0.10, g = 0.80, b = 0.10},
            tertiary = {r = 0.50, g = 0,51, b = 0.51},
        }
    },
    {
        type = "recipe",
        name = "fluorhydric-acid",
        icon = "__NuclearShmidtk__/graphics/icons/fluorhydric-acid.png",
        icon_size = 64,
        category = "chemistry",
        enabled = false,
        energy_required = 6,
        ingredients = 
        {
            {type="item", name="fluorite", amount=1},
            {type="fluid", name="sulfuric-acid", amount=15},
            {type="fluid", name="water", amount=80},
        },
        results = 
        {
            {type="fluid", name="fluorhydric-acid", amount=30},
        },
        subgroup = "fluid-recipes",
        order = "a[fluid-chemistry]-f[fluorhydric-acid]",
        crafting_machine_tint =
        {
            primary = {r = 0.10, g = 0.90, b = 0.10},
            secondary = {r = 0.10, g = 0.90, b = 0.10},
            tertiary = {r = 0.50, g = 0,51, b = 0.51},
        }
    },
    {
    type = "recipe",
    name = "burial-uranium-hexafluoride",
    emissions_multiplier = 4,
    energy_required = 10,
    enabled = false,
    category = "nwaste",
    ingredients = 
    {
      {type = "fluid", name = "uranium-hexafluoride", amount = 50},
    },
    icon = "__NuclearShmidtk__/graphics/icons/burial-uranium-hexafluoride.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "f[burial-uranium-hexafluoride]",
    results =
    {

    }
    },
    {
    type = "recipe",
    name = "burial-uranium-oxide",
    emissions_multiplier = 4,
    energy_required = 10,
    enabled = false,
    category = "nwaste",
    ingredients = 
    {
      {type="item", name="uranium-oxide", amount=5},
    },
    icon = "__NuclearShmidtk__/graphics/icons/burial-uranium-oxide.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "f[burial-uranium-oxide]",
    results =
    {

    }
    },
    {
    type = "recipe",
    name = "burial-nuclear-waste",
    emissions_multiplier = 5,
    energy_required = 10,
    enabled = false,
    category = "nwaste",
    ingredients = 
    {
      {type="item", name="nuclear-waste", amount=1},
    },
    icon = "__NuclearShmidtk__/graphics/icons/burial-nuclear-waste.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "f[burial-nuclear-waste]",
    results =
    {

    }
    },
})