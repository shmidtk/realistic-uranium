require("prototypes.items")
require("prototypes.items-unit")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.fluid")
require("prototypes.fluid-unit")
require("prototypes.resources")
require("prototypes.entity")



--Pair of commands to force recipe updates
--/c game.player.force.technologies['uranium-processing'].researched=true
--/c game.player.force.technologies['uranium-processing'].researched=false

-- My uranium adds
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-powder-proc"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-slurry-preparation"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-slurry-acidification"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-salt-extraction"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-dirty-water-treatment"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-plant-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-salt-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-yellow-cake"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-yellow-cake-drumming"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-ok-liquoir-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-unh-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-unh-backing-to-uo3"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-fluorhydric-acid"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-sulfur-trioxide-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-sulfuric-acid-from-trioxide"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uo2-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-calcium-silicat-to-bricks"})

table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-tetrafluorite-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-fluorum-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-hexafluorite-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-geseous-diffusion"})




table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "empty-fuel-cell"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "uranium-238-2"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "uranium-235-2"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "uranium-hexafluoride"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "uranium-hexafluoride-2"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "gas-centrifuge"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "low-enriched-uranium-hexafluoride"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "highly-enriched-uranium-hexafluoride"})
table.insert(data.raw["technology"]["nuclear-fuel-reprocessing"].effects, {type = "unlock-recipe", recipe = "advanced-uranium-fuel-reprocessing"})
table.insert(data.raw["technology"]["nuclear-power"].effects, {type = "unlock-recipe", recipe = "uranium-neutron-absorption"})
table.insert(data.raw["technology"]["nuclear-power"].effects, {type = "unlock-recipe", recipe = "plutonium-239"})
table.insert(data.raw["technology"]["nuclear-power"].effects, {type = "unlock-recipe", recipe = "plutonium-238"})
table.insert(data.raw["technology"]["uranium-ammo"].effects, {type = "unlock-recipe", recipe = "highly-radioactive-rounds-magazine"})
table.insert(data.raw["technology"]["atomic-bomb"].effects, {type = "unlock-recipe", recipe = "nuclear-uranium-bomb"})
table.insert(data.raw["technology"]["atomic-bomb"].effects, {type = "unlock-recipe", recipe = "nuclear-plutonium-bomb"})

data:extend({
    {
        type = "fuel-category",
        name = "thorium-fuel"
    },
    {
        type = "recipe-category",
        name = "nwaste"
	},
	{
		type = "recipe-category",
		name = "uranium-processing"
	},
})

-- CHANGING RECIPES

data.raw.recipe["uranium-fuel-cell"].ingredients = 
{
	{"empty-fuel-cell", 10},
	{"uranium-235", 1},
	{"uranium-238", 19},
}
data.raw.recipe["uranium-processing"].results = 
{
	{name = "uranium-235", amount = 1, probability = 0.007},
	{name = "uranium-238", amount = 1, probability = 0.993},
	{name = "radium-226", amount = 1, probability = 0.01},
}
data.raw.recipe["kovarex-enrichment-process"].results = 
{
	{type = "fluid", name = "highly-enriched-uranium-hexafluoride", amount = 2050},
}
data.raw.recipe["nuclear-reactor"].ingredients = 
{
	{"advanced-circuit", 500},
	{"concrete", 500},
	{"copper-plate", 500},
	{"steel-plate", 500},
	{"water-barrel", 250},
}

-- SETTINGS
if settings.startup["disable-kovarex-enrichment-process"].value then
	data.raw.recipe["kovarex-enrichment-process"].hidden = true
end

if settings.startup["thorium-as-nuclear-fuel"].value then
	data.raw.item["thorium-fuel-cell"].fuel_category = "nuclear"
end

if settings.startup["disable-vht-nuclear-reactor"].value then
	data.raw.recipe["vht-nuclear-reactor"].hidden = true;
end


-- CHANGES TO VANILA URANIUM MINING

data.raw.resource["uranium-ore"].minable.required_fluid = nil;
data.raw.resource["uranium-ore"].minable.fluid_amount  = 0;