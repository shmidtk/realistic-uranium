-- CHANGE TO URANIUM FUEL CELL
--data.raw["solar-panel"]["solar-panel"].production = "25kW"
--data.raw["reactor"]["nuclear-reactor"].consumption = "45MW"
--data.raw.item["uranium-fuel-cell"].fuel_value = "8GJ" 



data.raw["recipe"]["uranium-fuel-cell"].ingredients = 
						{
							{type="item",  name = "dtk-uranium-pallets-5", amount = 1},
							{type="item",  name = "dtk-empty-fuel-cell", amount = 1}
						}
data.raw["recipe"]["uranium-fuel-cell"].result_count = 1


data.raw["recipe"]["nuclear-fuel-reprocessing"].ingredients = 
						{
							{type="item",  name = "used-up-uranium-fuel-cell", amount = 1},
							{type="fluid",  name = "nitric-acid", amount = 100}					
						}			
						
data.raw["recipe"]["nuclear-fuel-reprocessing"].results  =
						{
							{type="fluid", name = "dtk-uranium-plutonium-solution-96-1", amount = 100},
							{type="item",  name = "dtk-low-radioactive-waste", amount = 6},
							{type="item",  name = "steel-plate", amount = 5},
							{type="item",  name = "rare-metals", amount = 1},
							{type="item",  name = "tritium", probability = 0.15, amount = 1}
						}

data.raw["recipe"]["nuclear-fuel-reprocessing"].main_product = ""

krastorio.recipes.replaceProduct("nuclear-fuel-reprocessing", "stone", nil)



data.raw.recipe["kovarex-enrichment-process"].hidden = true
data.raw.recipe["uranium-processing"].hidden = true

--Correction of atomic bomb recipe
table.insert(data.raw.technology["atomic-bomb"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-centrifuging-10"})
table.insert(data.raw.technology["atomic-bomb"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-centrifuging-25"})
table.insert(data.raw.technology["atomic-bomb"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-centrifuging-50"})
table.insert(data.raw.technology["atomic-bomb"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-centrifuging-75"})
table.insert(data.raw.technology["atomic-bomb"].effects, {type = "unlock-recipe", recipe = "dtk-uranium-centrifuging-100"})


