
data:extend(
    {



{ -- DTK Hydrogen
type = "fluid",
name = "dtk-hydrogen",
default_temperature = 25,
heat_capacity = "1KJ",
base_color = {r=0.102, g=0.204, b=0.255},
flow_color = {r=0.102, g=0.204, b=0.255},
max_temperature = 100,
icon = "__RealisticUranium__/graphics/resources/hydrogen.png",
icon_size = 64,
pressure_to_speed_ratio = 0.4,
flow_to_energy_ratio = 0.59,
order = "a[fluid]-e[hydrogen]"
},

{  -- DTK Hydrogen recipe (Steam reforming)
type = "recipe",
name = "dtk-hydrogen-recipe",
category = "chemistry",
energy_required = 12,
enabled = false,
ingredients = {
                {type="fluid",  name = "petroleum-gas", amount = 35},
                {type="fluid",  name = "steam", amount = 35},
            },
results = {
                {type="fluid", name="dtk-hydrogen", amount=100}                    
            },
icon = "__RealisticUranium__/graphics/resources/hydrogen.png",
icon_size = 64,
subgroup = 'intermediate-product',
order =  "a[oil-processing]-b[dtk-hydrogen-recipe]"
},



{ -- DTK Hydrogen chloride
type = "fluid",
name = "dtk-hydrogen-chloride",
default_temperature = 25,
heat_capacity = "1KJ",
base_color = {r=255, g=255, b=0.0},
flow_color = {r=0.255, g=0.255, b=0.0},
max_temperature = 100,
icon = "__RealisticUranium__/graphics/resources/hydrogen-chloride.png",
icon_size = 64,
pressure_to_speed_ratio = 0.4,
flow_to_energy_ratio = 0.59,
order = "a[fluid]-e[hydrogen-chloride]"
},

{  -- DTK Hydrogen chloride recipe
type = "recipe",
name = "dtk-hydrogen-chloride-recipe",
category = "chemistry",
energy_required = 20,
enabled = false,
ingredients = {
                {type="fluid",  name = "water", amount = 100},
            },
results = {
                {type="fluid", name="dtk-hydrogen-chloride", amount=7}                    
            },
icon = "__RealisticUranium__/graphics/resources/hydrogen-chloride.png",
icon_size = 64,
subgroup = 'intermediate-product',
order =  "a[oil-processing]-b[hydrogen-chloride-recipe]"
},


-- add nytrogen from air in one process and  add oxygen from air



{ -- DTK oxygen
type = "fluid",
name = "dtk-oxygen",
default_temperature = 25,
heat_capacity = "1KJ",
base_color = {r=0.5, g=0.7, b=1},
flow_color = {r=0.5, g=0.7, b=1},
max_temperature = 100,
icon = "__RealisticUranium__/graphics/resources/oxygen.png",  
icon_size = 64,
pressure_to_speed_ratio = 0.4,
flow_to_energy_ratio = 0.59,
order = "a[fluid]-e[oxygen]"
},

{  -- DTK nitrogen recipe
type = "recipe",
name = "dtk-oxygen-recipe",
category = "chemistry",
energy_required = 12,
enabled = false,
results = {
                {type="fluid", name="dtk-oxygen", amount=100}                  
            },
icon = "__RealisticUranium__/graphics/resources/oxygen.png", 
icon_size = 64,
subgroup = 'intermediate-product',
order =  "a[oil-processing]-b[oxygen-recipe]"
},



{ -- DTK nitrogen
type = "fluid",
name = "dtk-nitrogen",
default_temperature = 25,
heat_capacity = "1KJ",
base_color = {r=0.5, g=0.7, b=1},
flow_color = {r=0.5, g=0.7, b=1},
max_temperature = 100,
icon = "__RealisticUranium__/graphics/resources/nitrogen.png",  
icon_size = 64,
pressure_to_speed_ratio = 0.4,
flow_to_energy_ratio = 0.59,
order = "a[fluid]-e[nitrogen]"
},

{  -- DTK nitrogen recipe
type = "recipe",
name = "dtk-nitrogen-recipe",
category = "chemistry",
energy_required = 12,
enabled = false,
results = {
                {type="fluid", name="dtk-nitrogen", amount=100}                  
            },
icon = "__RealisticUranium__/graphics/resources/nitrogen.png", 
icon_size = 64,
subgroup = 'intermediate-product',
order =  "a[oil-processing]-b[nitrogen-recipe]"
},





{ -- DTK ammonia
type = "fluid",
name = "dtk-ammonia",
default_temperature = 25,
heat_capacity = "1KJ",
base_color = {r=0.5, g=0.7, b=1},
flow_color = {r=0.5, g=0.7, b=1},
max_temperature = 100,
icon = "__RealisticUranium__/graphics/resources/ammonia.png",  
icon_size = 64,
pressure_to_speed_ratio = 0.4,
flow_to_energy_ratio = 0.59,
order = "a[fluid]-e[ammonia]"
},

{  -- DTK ammonia recipe
type = "recipe",
name = "dtk-ammonia-recipe",
category = "chemistry",
energy_required = 12,
enabled = false,
ingredients = {
                {type="fluid",  name = "dtk-hydrogen", amount = 90},
                {type="item",  name = "dtk-nitrogen", amount = 30}
            },
results = {
                {type="fluid", name="dtk-ammonia", amount=60}                  
            },
icon = "__RealisticUranium__/graphics/resources/ammonia.png", 
icon_size = 64,
subgroup = 'intermediate-product',
order =  "a[oil-processing]-b[ammonia-recipe]"
},




{ -- DTK nitric acid
type = "fluid",
name = "dtk-nitric-acid",
default_temperature = 25,
heat_capacity = "1KJ",
base_color = {r=0.5, g=0.7, b=1},
flow_color = {r=0.5, g=0.7, b=1},
max_temperature = 100,
icon = "__RealisticUranium__/graphics/resources/nitric-acid.png",  
icon_size = 64,
pressure_to_speed_ratio = 0.4,
flow_to_energy_ratio = 0.59,
order = "a[fluid]-e[nitric-acid]"
},

{  -- DTK nitric acid
type = "recipe",
name = "dtk-nitric-acid-recipe",
category = "chemistry",
energy_required = 12,
enabled = false,
ingredients = {
                {type="fluid",  name = "dtk-ammonia", amount = 80},
                {type="item",  name = "copper-plate", amount = 1},
                {type="fluid", name = "dtk-oxygen", amount = 100}
            },
results = {
                {type="fluid", name="dtk-nitric-acid", amount=60},
                {type="fluid", name = "water", amount = 100}                   
            },
icon = "__RealisticUranium__/graphics/resources/nitric-acid.png", 
icon_size = 64,
subgroup = 'intermediate-product',
order =  "a[oil-processing]-b[nitric-acid-recipe]"
},

    }
)