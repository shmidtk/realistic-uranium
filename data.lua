--require("prototypes.items")
require("prototypes.items-unit")
require("prototypes.recipe")
require("prototypes.technology")
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
--table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-yellow-cake-drumming"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-ok-liquoir-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-unh-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-unh-backing-to-uo3"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-fluorhydric-acid"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-sulfur-trioxide-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-sulfuric-acid-from-trioxide"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uo2-recipe"})
--table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-calcium-silicat-to-bricks"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-tetrafluorite-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-fluorum-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-hexafluorite-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-geseous-diffusion"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uo2f2-5"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-adu-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-adu-uo2-5"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-empty-fuel-cell"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-pallets-recipe"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-tetrafluorite-depleted"})
table.insert(data.raw["technology"]["uranium-processing"].effects, {type = "unlock-recipe", recipe = "dtk-u-238"})


data:extend({
	{
		type = "recipe-category",
		name = "uranium-processing"
	},
})

-- CHANGING RECIPES

-- CHANGES TO VANILA URANIUM MINING

data.raw.resource["uranium-ore"].minable.required_fluid = nil;
data.raw.resource["uranium-ore"].minable.fluid_amount  = 0;

-- CHANGES TO VANILA CENTRIFUGE
data.raw["assembling-machine"]["centrifuge"].fluid_boxes =	{
																{
																	production_type = "input",
																	pipe_picture = assembler3pipepictures(),
																	pipe_covers = pipecoverspictures(),
																	base_area = 10,
																	base_level = -1,
																	pipe_connections = {{ type="input", position = {0, -2} }},
																	secondary_draw_orders = { north = -1 }
																},
																{
																	production_type = "output",
																	pipe_picture = assembler3pipepictures(),
																	pipe_covers = pipecoverspictures(),
																	base_area = 10,
																	base_level = -1,
																	pipe_connections = {{ type="output", position = {0, 2} }},
																	secondary_draw_orders = { north = -1 }
																},
																{
																	production_type = "output",
																	pipe_picture = assembler3pipepictures(),
																	pipe_covers = pipecoverspictures(),
																	base_area = 10,
																	base_level = -1,
																	pipe_connections = {{ type="output", position = {2, 0} }},
																	secondary_draw_orders = { north = -1 }
																},
																off_when_no_fluid_recipe = true
															}
data.raw["assembling-machine"]["centrifuge"].energy_usage = "800kW"

table.insert(data.raw["technology"]["nuclear-fuel-reprocessing"].effects, {type = "unlock-recipe", recipe = "dtk-plutonium-extraction"})
table.insert(data.raw["technology"]["nuclear-fuel-reprocessing"].effects, {type = "unlock-recipe", recipe = "dtk-purex-1"})


