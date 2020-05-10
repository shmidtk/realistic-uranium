

local standard_fluid = data.raw.fluid["light-oil"]
local chemical_recipe = data.raw.recipe["light-oil"]


--Uranium Slurry -- Fluid
local dtk_uranium_slurry = table.deepcopy(standard_fluid)
dtk_uranium_slurry.name = 'dtk-uranium-slurry'
dtk_uranium_slurry.base_color = {r=0.0, g=0.102, b=0.0}
dtk_uranium_slurry.flow_color = {r=0.0, g=0.102, b=0.0}
dtk_uranium_slurry.icon = "__RealisticUranium__/graphics/resources/uranium-slurry.png"
dtk_uranium_slurry.icon_size = 64
dtk_uranium_slurry.order = "u[uranium-fluids]-b[uranium-slurry]"

--URANIUM ACID SOLUTION
local dtk_uranium_acid_slurry = table.deepcopy(standard_fluid)
dtk_uranium_acid_slurry.name = 'dtk-uranium-acid-solution'
dtk_uranium_acid_slurry.base_color = {r=0.153, g=0.153, b=0.0}
dtk_uranium_acid_slurry.flow_color = {r=0.153, g=0.153, b=0.0}
dtk_uranium_acid_slurry.icon = "__RealisticUranium__/graphics/resources/uranium-acid-solution.png"
dtk_uranium_acid_slurry.icon_size = 64
dtk_uranium_acid_slurry.order = "u[uranium-fluids]-b[uranium-slurry]"


-- dirty WATER
local dtk_stone_slurry = table.deepcopy(standard_fluid)
dtk_stone_slurry.name = 'dtk-stone-slurry'
dtk_stone_slurry.base_color = {145, 110, 39}
dtk_stone_slurry.flow_color = {145, 110, 39}
dtk_stone_slurry.icon = "__RealisticUranium__/graphics/resources/dirty-water-2.png"
dtk_stone_slurry.icon_size = 64
dtk_stone_slurry.order = "u[uranium-fluids]-b[dirty_water]"

-- URANIUM SALT SOLUTION
local dtk_uranium_salt_solution = table.deepcopy(standard_fluid)
dtk_uranium_salt_solution.name = 'dtk-uranium-salt-solution'
dtk_uranium_salt_solution.base_color = {181, 162, 0}
dtk_uranium_salt_solution.flow_color = {181, 162, 0}
dtk_uranium_salt_solution.icon = "__RealisticUranium__/graphics/resources/uranium-salt-solution.png"
dtk_uranium_salt_solution.icon_size = 64
dtk_uranium_salt_solution.order = "u[uranium-fluids]-b[uranium-salt-solution]"

--sulfuric-acid-from-trioxide
local dtk_sulfuric_acid_from_trioxide = table.deepcopy(data.raw.recipe["sulfuric-acid"])
        dtk_sulfuric_acid_from_trioxide.name = 'dtk-sulfuric-acid-from-trioxide'
        dtk_sulfuric_acid_from_trioxide.ingredients = 
                                                        {
                                                            {type="fluid", name="dtk-sulfur-trioxide", amount=100},
                                                            {type="fluid", name="water", amount=100},
                                                        }
        dtk_sulfuric_acid_from_trioxide.subgroup = "fluid-recipes"
        dtk_sulfuric_acid_from_trioxide.order = "u[uranium-fluid-chemistry]-f[sulfuric-acid-from-trioxide]"


data:extend(
    {	
        dtk_sulfuric_acid_from_trioxide,
        dtk_uranium_slurry,
        {  --URANIUM SLURRY RECIPE
            type = "recipe",
            name = "dtk-uranium-slurry-preparation",
            category = "chemistry",
            energy_required = 4,
            enabled = false,
            ingredients = {
                            {type="item",  name = "dtk-uranium-powder", amount = 25},
                            {type="fluid", name = "water",          amount = 75}
                        },
            results = {
            				{type="fluid", name="dtk-uranium-slurry", amount=100}
                      },
            icon = "__RealisticUranium__/graphics/resources/uranium-slurry.png",
            icon_size = 64,
            subgroup = "fluid-recipes",
            order = "u[uranium-fluid-chemistry]-f[uranium-slurry]"
        },

        dtk_uranium_acid_slurry,
        {  --URANIUM ACID SLURRY RECIPE
            type = "recipe",
            name = "dtk-uranium-slurry-acidification",
            category = "chemistry",
            energy_required = 12,
            enabled = false,
            ingredients = {
                            {type="fluid",  name = "dtk-uranium-slurry", amount = 4000},
                            {type="fluid", name = "sulfuric-acid",          amount = 20},
                            {type="item", name = "iron-plate",          amount = 3}
                        },
            results = {
                            {type="fluid", name="dtk-uranium-acid-solution", amount=4000}
                      },
            icon = "__RealisticUranium__/graphics/resources/uranium-acid-solution.png",
            icon_size = 64,
            subgroup = "fluid-recipes",
            order = "u[uranium-fluid-chemistry]-f[uranium-slurry]"
        },

        dtk_stone_slurry,
        dtk_uranium_salt_solution,
        
        { -- OK LIQUOIR
            type = "fluid",
            name = "dtk-ok-liquoir",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.0, g=0.0, b=0.0},
            flow_color = {r=0.0, g=0.0, b=0.0},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/ok-liquoir.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[ok-liquoir]"
        },

        {  -- YELLOW CAKE PROCESSING INTO OK LIQUOIR
        type = "recipe",
        name = "dtk-ok-liquoir-recipe",
        category = "uranium-processing",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="item", name = "dtk-yellow-cake", amount = 1},
                        {type="fluid", name = "nitric-acid",          amount = 200},
                        {type="fluid", name = "water",          amount = 900}
                    },
        results = {
                        {type="fluid", name="dtk-ok-liquoir", amount= 1200}
                  },
        icon = "__RealisticUranium__/graphics/resources/ok-liquoir.png",
        icon_size = 64,
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[ok-liquoir]"
        },


        { --fluorhydric-acid
            type = "fluid",
            name = "dtk-fluorhydric-acid",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.52, g=0.78, b=0.06},
            flow_color = {r=0.52, g=0.78, b=0.06},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/icons/fluorhydric-acid.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid]"
        },

        { --fluorhydric-acid Production
            type = "recipe",
            name = "dtk-fluorhydric-acid",
            icon = "__RealisticUranium__/graphics/icons/fluorhydric-acid.png",
            icon_size = 64,
            category = "chemistry",
            enabled = false,
            energy_required = 6,
            ingredients = 
            {
                {type="item", name="dtk-fluorite", amount=1},
                {type="fluid", name="sulfuric-acid", amount=100},
            },
            results = 
            {
                {type="fluid", name="dtk-fluorhydric-acid", amount=100},
                {type="item", name='dtk-calcium-sulfate', amount=1}
            },
            subgroup = "fluid-recipes",
            order = "u[uranium-fluid-chemistry]-f[fluorhydric-acid]"
        },

        { --Sulfur-trioxide
            type = "fluid",
            name = "dtk-sulfur-trioxide",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.255, g=0.255, b=0.00},
            flow_color = {r=0.255, g=0.255, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/sulfur-trioxide.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid]"
        },
        
        { -- PROCESSING OF CALCUIM SULFAT TO RECOVER SULUR TRIOXIDE
        type = "recipe",
        name = "dtk-sulfur-trioxide-recipe",
        icon = "__RealisticUranium__/graphics/resources/sulfur-trioxide.png",
        icon_size = 64,
        category = "chemistry",
        enabled = false,
        energy_required = 6,
        ingredients = 
            {
                {type="item", name="dtk-calcium-sulfate", amount=1},
                {type="item", name="stone", amount=1},
            },
        results = 
            {
                {type="fluid", name="dtk-sulfur-trioxide", amount=80},
                {type="item", name='sand', amount=1}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[sulfur-trioxide-recipe]",
        crafting_machine_tint =
            {
                primary = {r = 0.10, g = 0.90, b = 0.10},
                secondary = {r = 0.10, g = 0.90, b = 0.10},
                tertiary = {r = 0.50, g = 0,51, b = 0.51},
            }
        },




        { -- PURE FLUORUM
        type = "fluid",
        name = "dtk-fluorum",
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r=0.255, g=0.255, b=0.204},
        flow_color = {r=0.255, g=0.255, b=0.204},
        max_temperature = 100,
        icon = "__RealisticUranium__/graphics/resources/fluorum.png",
        icon_size = 64,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        order = "u[uranium-fluids]-b[fluorum]"
        },
        
        { -- PROCESSING OF FLUORISATION OF URANIUM TETRAFLUORITE
        type = "recipe",
        name = "dtk-fluorum-recipe",
        icon = "__RealisticUranium__/graphics/resources/fluorum.png",
        icon_size = 64,
        category = "chemistry",
        enabled = false,
        energy_required = 6,
        ingredients = 
            {
                {type="fluid", name="dtk-fluorhydric-acid", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-fluorum", amount=100},
                {type="fluid", name='hydrogen', amount=100}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[fluorum]"
        },



        { --uranium hexafluorite
        type = "fluid",
        name = "dtk-uranium-hexafluorite",
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r=0.204, g=0.204, b=0.00},
        flow_color = {r=0.204, g=0.204, b=0.00},
        max_temperature = 100,
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite.png",
        icon_size = 64,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        order = "u[uranium-fluids]-b[fluorhydric-acid]"
        },
        
        { -- PROCESSING OF FLUORISATION OF URANIUM TETRAFLUORITE
        type = "recipe",
        name = "dtk-uranium-hexafluorite-recipe",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite.png",
        icon_size = 64,
        category = "chemistry",
        enabled = false,
        energy_required = 6,
        ingredients = 
            {
                {type="item", name="dtk-uranium-tetrafluorite", amount=1},
                {type="fluid", name="dtk-fluorum", amount=200},
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite", amount=100}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-hexafluorite]"
        },


        { --uranium hexafluorite DEPLTED
            type = "fluid",
            name = "dtk-uranium-hexafluorite-depleted",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-depleted.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-depleted]"
        },
        { --uranium hexafluorite 1% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-1",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-1.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-1]"
        },
        { --uranium hexafluorite 2% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-2",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-2.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-2]"
        },
        { --uranium hexafluorite 3% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-3",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-3.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-3]"
        },
        { --uranium hexafluorite 4% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-4",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-4.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-4]"
        },
        { --uranium hexafluorite 5% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-5",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-5.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-5]"
        },
        { --uranium hexafluorite 10% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-10",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-10.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-10]"
        },
        { --uranium hexafluorite 25% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-25",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-25.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-25]"
        },
        { --uranium hexafluorite 50% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-50",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-50.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-50]"
        },
        { --uranium hexafluorite 75% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-75",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-75.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-75]"
        },
        { --uranium hexafluorite 100% Grade
            type = "fluid",
            name = "dtk-uranium-hexafluorite-100",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-100.png",
            icon_size = 64,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
            order = "u[uranium-fluids]-b[fluorhydric-acid-100]"
        },

        { -- Geseous diffusion
        type = "recipe",
        name = "dtk-geseous-diffusion",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-5.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 300,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite", amount=150}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=130},
                {type="fluid", name="dtk-uranium-hexafluorite-5", amount=20}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[geseous-diffusion]"
        },

        { -- 1% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-1",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-1.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=30},
                {type="fluid", name="dtk-uranium-hexafluorite-1", amount=70}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-1]"
        },

        { -- 2% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-2",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-2.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-1", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=50},
                {type="fluid", name="dtk-uranium-hexafluorite-2", amount=50}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-2]"
        },


        { -- 3% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-3",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-3.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-2", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=33},
                {type="fluid", name="dtk-uranium-hexafluorite-3", amount=67}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-3]"
        },



        { -- 4% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-4",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-4.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-3", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=25},
                {type="fluid", name="dtk-uranium-hexafluorite-4", amount=75}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-4]"
        },
        
        { -- 5% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-5",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-5.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-4", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=20},
                {type="fluid", name="dtk-uranium-hexafluorite-5", amount=80}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-5]"
        },

        { -- 10% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-10",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-10.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-5", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=50},
                {type="fluid", name="dtk-uranium-hexafluorite-10", amount=50}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-10]"
        },
        { -- 25% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-25",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-25.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-10", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=60},
                {type="fluid", name="dtk-uranium-hexafluorite-25", amount=40}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-25]"
        },
        { -- 50% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-50",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-50.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-25", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=50},
                {type="fluid", name="dtk-uranium-hexafluorite-50", amount=50}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-50]"
        },
        { -- 75% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-75",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-75.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-50", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=34},
                {type="fluid", name="dtk-uranium-hexafluorite-75", amount=66}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-75]"
        },
        { -- 100% CENTRIFUGING
        type = "recipe",
        name = "dtk-uranium-centrifuging-100",
        icon = "__RealisticUranium__/graphics/resources/uranium-hexafluorite-100.png",
        icon_size = 64,
        category = "centrifuging",
        enabled = false,
        energy_required = 10,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-75", amount=100}
            },
        results = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-depleted", amount=25},
                {type="fluid", name="dtk-uranium-hexafluorite-100", amount=75}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-centrifuging-100]"
        },

        { --Uranyl fluoride (UO2F2) 5% Grade
        type = "fluid",
        name = "dtk-uo2f2-5",
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r=0.204, g=0.204, b=0.00},
        flow_color = {r=0.204, g=0.204, b=0.00},
        max_temperature = 100,
        icon = "__RealisticUranium__/graphics/resources/uo2f2-5.png",
        icon_size = 64,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        order = "u[uranium-fluids]-b[uranium-fluoride-5]"
        },
        { -- 5% grade Uranium FLUORIDE UO2F2 recipe (back to uo2)
        type = "recipe",
        name = "dtk-uo2f2-5",
        icon = "__RealisticUranium__/graphics/resources/uo2f2-5.png",
        icon_size = 64,
        category = "chemistry",
        enabled = false,
        energy_required = 6,
        ingredients = 
            {
                {type="fluid", name="dtk-uranium-hexafluorite-5", amount=100},
                {type="fluid", name="steam", amount=200}
            },
        results = 
            {
                {type="fluid", name="dtk-uo2f2-5", amount=100},
                {type="fluid", name="dtk-fluorhydric-acid", amount=400}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[uranium-fluoride-5]"
        },

        { -- Uranium plutunium solution
            type = "fluid",
            name = "dtk-uranium-plutonium-solution-96-1",
            icon = "__RealisticUranium__/graphics/resources/uranium-plutonium-solution.png",
            icon_size = 64,
            subgroup = "intermediate-product",
            order = "h[uranium-plutonium-solution]",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
        },
        { -- Plutonium solution
            type = "fluid",
            name = "dtk-plutonium-solution",
            icon = "__RealisticUranium__/graphics/resources/pu-solution.png",
            icon_size = 64,
            subgroup = "intermediate-product",
            order = "h[plutonium-solution]",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
        },
        { -- high-radiactive-waste
            type = "fluid",
            name = "dtk-high-radiactive-waste",
            icon = "__RealisticUranium__/graphics/resources/high-radioctive-waste.png",
            icon_size = 64,
            subgroup = "intermediate-product",
            order = "h[high-radioctive-waste]",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
        },
        
        { -- PUREX Process
            type = "recipe",
            name = "dtk-purex-1",
            icon = "__RealisticUranium__/graphics/resources/purex.png",
            icon_size = 32,
            category = "uranium-processing",
            enabled = false,
            energy_required = 6,
            ingredients = 
                {
                    {type="fluid", name="dtk-uranium-plutonium-solution-96-1", amount=100},
                    {type="fluid", name="sulfuric-acid", amount=100},
                    {type="fluid", name="light-oil", amount=100}
                },
            results = 
                {
                    {type="fluid", name="dtk-uranium-hexafluorite-1", amount=96},
                    {type="fluid", name="dtk-high-radiactive-waste", amount=3},
                    {type="fluid", name="dtk-plutonium-solution", amount=1},
                },
            subgroup = "fluid-recipes",
            order = "u[uranium-fluid-chemistry]-f[dtk-purex-2]"
        },
        

        { -- MOX used fuel solution
            type = "fluid",
            name = "dtk-uranium-plutonium-solution-88-5",
            icon = "__RealisticUranium__/graphics/resources/uranium-plutonium-solution.png",
            icon_size = 64,
            subgroup = "intermediate-product",
            order = "h[uranium-plutonium-solution]",
            default_temperature = 25,
            heat_capacity = "1KJ",
            base_color = {r=0.204, g=0.204, b=0.00},
            flow_color = {r=0.204, g=0.204, b=0.00},
            max_temperature = 100,
            pressure_to_speed_ratio = 0.4,
            flow_to_energy_ratio = 0.59,
        },

        { -- PUREX Process of MOX FUEL
            type = "recipe",
            name = "dtk-purex-2",
            icon = "__RealisticUranium__/graphics/resources/purex.png",
            icon_size = 32,
            category = "uranium-processing",
            enabled = false,
            energy_required = 6,
            ingredients = 
                {
                    {type="fluid", name="dtk-uranium-plutonium-solution-88-5", amount=100},
                    {type="fluid", name="sulfuric-acid", amount=100},
                    {type="fluid", name="light-oil", amount=100}
                },
            results = 
                {
                    {type="fluid", name="dtk-uranium-hexafluorite-5", amount=92},
                    {type="fluid", name="dtk-high-radiactive-waste", amount=3},
                    {type="fluid", name="dtk-plutonium-solution", amount=5},
                },
            subgroup = "fluid-recipes",
            order = "u[uranium-fluid-chemistry]f[dtk-purex-2]"
        },
    }
)

