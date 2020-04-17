

local standard_fluid = data.raw.fluid["light-oil"]
local chemical_recipe = data.raw.recipe["light-oil"]


--Uranium Slurry -- Fluid
local dtk_uranium_slurry = table.deepcopy(standard_fluid)
dtk_uranium_slurry.name = 'dtk-uranium-slurry'
dtk_uranium_slurry.base_color = {r=0.0, g=0.102, b=0.0}
dtk_uranium_slurry.flow_color = {r=0.0, g=0.102, b=0.0}
dtk_uranium_slurry.icon = "__NuclearShmidtk__/graphics/resources/uranium-slurry.png"
dtk_uranium_slurry.icon_size = 64
dtk_uranium_slurry.order = "a[fluid]-b[uranium-slurry]"

--URANIUM ACID SOLUTION
local dtk_uranium_acid_slurry = table.deepcopy(standard_fluid)
dtk_uranium_acid_slurry.name = 'dtk-uranium-acid-solution'
dtk_uranium_acid_slurry.base_color = {r=0.153, g=0.153, b=0.0}
dtk_uranium_acid_slurry.flow_color = {r=0.153, g=0.153, b=0.0}
dtk_uranium_acid_slurry.icon = "__NuclearShmidtk__/graphics/resources/uranium-acid-solution.png"
dtk_uranium_acid_slurry.icon_size = 64
dtk_uranium_acid_slurry.order = "a[fluid]-b[uranium-slurry]"


-- dirty WATER
local dtk_stone_slurry = table.deepcopy(standard_fluid)
dtk_stone_slurry.name = 'dtk-stone-slurry'
dtk_stone_slurry.base_color = {145, 110, 39}
dtk_stone_slurry.flow_color = {145, 110, 39}
dtk_stone_slurry.icon = "__NuclearShmidtk__/graphics/resources/dirty-water.png"
dtk_stone_slurry.icon_size = 64
dtk_stone_slurry.order = "a[fluid]-b[dirty_water]"

-- URANIUM SALT SOLUTION
local dtk_uranium_salt_solution = table.deepcopy(standard_fluid)
dtk_uranium_salt_solution.name = 'dtk-uranium-salt-solution'
dtk_uranium_salt_solution.base_color = {181, 162, 0}
dtk_uranium_salt_solution.flow_color = {181, 162, 0}
dtk_uranium_salt_solution.icon = "__NuclearShmidtk__/graphics/resources/uranium-salt-solution.png"
dtk_uranium_salt_solution.icon_size = 64
dtk_uranium_salt_solution.order = "a[fluid]-b[uranium-salt-solution]"


-- HYDROGEN
local dtk_hydrogen = table.deepcopy(standard_fluid)
dtk_hydrogen.name = 'dtk-hydrogen'
dtk_hydrogen.base_color = {255, 255, 255}
dtk_hydrogen.flow_color = {255, 255, 255}
dtk_hydrogen.icon = "__NuclearShmidtk__/graphics/resources/hydrogen.png"
dtk_hydrogen.icon_size = 64
dtk_hydrogen.order = "a[fluid]-b[hydrogen]"


data:extend(
    {	
        dtk_uranium_slurry,
        {  --URANIUM SLURRY RECIPE
            type = "recipe",
            name = "dtk-uranium-slurry-preparation",
            category = "chemistry",
            energy_required = 12,
            enabled = false,
            ingredients = {
                            {type="item",  name = "dtk-uranium-powder", amount = 25},
                            {type="fluid", name = "water",          amount = 75}
                        },
            results = {
            				{type="fluid", name="dtk-uranium-slurry", amount=100}
                      },
            icon = "__NuclearShmidtk__/graphics/resources/uranium-slurry.png",
            icon_size = 64,
            subgroup = "fluid-recipes",
            order = "a[fluid-chemistry]-f[uranium-slurry]"
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
            icon = "__NuclearShmidtk__/graphics/resources/uranium-acid-solution.png",
            icon_size = 64,
            subgroup = "fluid-recipes",
            order = "a[fluid-chemistry]-f[uranium-slurry]"
        },

        dtk_stone_slurry,
        dtk_uranium_salt_solution,
        dtk_hydrogen


    }
)