--Uranium Slurry -- Fluid
local dtk_uranium_slurry = table.deepcopy(data.raw.fluid["light-oil"])
dtk_uranium_slurry.name = 'dtk-uranium-slurry'
dtk_uranium_slurry.base_color = {r=0.25, g=0.102, b=0.25}
dtk_uranium_slurry.flow_color = {r=0.25, g=0.102, b=0.25}
dtk_uranium_slurry.icon = "__NuclearShmidtk__/graphics/resources/uranium-slurry.png"
dtk_uranium_slurry.icon_size = 64
dtk_uranium_slurry.order = "a[fluid]-b[uranium-slurry]"

--URANIUM ACID SLURRY RECIPE
local dtk_uranium_acid_slurry = table.deepcopy(data.raw.fluid["light-oil"])
dtk_uranium_acid_slurry.name = 'dtk-uranium-acid-solution'
dtk_uranium_acid_slurry.base_color = {r=0.153, g=0.153, b=0.0}
dtk_uranium_acid_slurry.flow_color = {r=0.153, g=0.153, b=0.0}
dtk_uranium_acid_slurry.icon = "__NuclearShmidtk__/graphics/resources/uranium-acid-solution.png"
dtk_uranium_acid_slurry.icon_size = 64
dtk_uranium_acid_slurry.order = "a[fluid]-b[uranium-slurry]"



data:extend(
    {	
        dtk_uranium_slurry,
        {  --URANIUM SLURRY RECIPE
            type = "recipe",
            name = "dtk-uranium-slurry-preparation",
            category = "chemistry",
            energy_required = 12,
            enabled = true,
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
            enabled = true,
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
    }
)