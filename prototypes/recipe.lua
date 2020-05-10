


local dtk_uranium_plant_recipe =  table.deepcopy(data.raw["recipe"]["oil-refinery"])
dtk_uranium_plant_recipe.name = 'dtk-uranium-plant-recipe'
dtk_uranium_plant_recipe.enabled = false
dtk_uranium_plant_recipe.result = 'dtk-uranium-refinery-plant'
dtk_uranium_plant_recipe.result_count = 1


data:extend(
{--URANIUM PROCESSING

--    {  --URANIUM SLURRY
--        type = "recipe",
--        name = "uranium-slurry-preparation",
--        category = "chemistry",
--        energy_required = 12, --fix
 --       enabled = false,
--        ingredients = {
--                        {type="item",  name = "uranium-powder", amount = 25},
--                        {type="fluid", name = "water",          amount = 75},
--                      },
--        results = {
--                    {type="fluid", name="dtk-uranium-slurry", amount=100},
--                  },
--        main_product= "",
--        icon_mipmaps = 4,
--      icon = "__RealisticUranium__/graphics/icons/uranium-slurry.png",
 --       icon_size = 32,
 --       subgroup = "fluid-recipes",
 --       order = "a[fluid-chemistry]-f[uranium-slurry]"
 --   },
    dtk_uranium_plant_recipe,
    {  --URANIUM SALT SOLUTION EXTRACTION
    type = "recipe",
    name = "dtk-uranium-salt-extraction",
    category = "uranium-processing",
    energy_required = 12,
    enabled = false,
    ingredients = {
                    {type="fluid",  name = "dtk-uranium-acid-solution", amount = 4000}
                },
    results = {
                    {type="fluid", name="dtk-uranium-salt-solution", amount=24},
                    {type="fluid", name="dtk-stone-slurry", amount= 3985},
                   {type="fluid", name="hydrogen", amount= 14}  --Krastorio Hydrogen
 
                },
    icon = "__RealisticUranium__/graphics/resources/uranium-acid-solution.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "a[fluid-chemistry]-f[uranium-slurry]"
    },

    {  --DIRTY WATER CLARIFICATION
    type = "recipe",
    name = "dtk-dirty-water-treatment",
    category = "uranium-processing",
    energy_required = 4,
    enabled = false,
    ingredients = {
                    {type="fluid",  name = "dtk-stone-slurry", amount = 200}
                },
    results = {
                    {type="fluid", name="water", amount = 150},
                    {type="item", name="stone", amount= 48} 
                },
    icon = "__RealisticUranium__/graphics/recipes/water-treatment.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "a[fluid-chemistry]-f[dirty-water-treatment]"
    },
    
})