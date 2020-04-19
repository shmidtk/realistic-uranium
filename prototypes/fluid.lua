

data:extend(
{	
	{
		type = "fluid",
		name = "uranium-hexafluoride",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0.06, g=0.78, b=0.23},
		flow_color = {r=0.06, g=0.78, b=0.23},
		max_temperature = 100,
		icon = "__NuclearShmidtk__/graphics/icons/uranium-hexafluoride.png",
        icon_size = 64,
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[uranium-hexafluoride]"
	},{
		type = "fluid",
		name = "low-enriched-uranium-hexafluoride",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0.06, g=0.78, b=0.23},
		flow_color = {r=0.06, g=0.78, b=0.23},
		max_temperature = 100,
		icon = "__NuclearShmidtk__/graphics/icons/low-enriched-uranium-hexafluoride.png",
        icon_size = 64,
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[low-enriched-uranium-hexafluoride]"
	},
	{
		type = "fluid",
		name = "highly-enriched-uranium-hexafluoride",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0.06, g=0.78, b=0.23},
		flow_color = {r=0.06, g=0.78, b=0.23},
		max_temperature = 100,
		icon = "__NuclearShmidtk__/graphics/icons/highly-enriched-uranium-hexafluoride.png",
        icon_size = 64,
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[highly-enriched-uranium-hexafluoride]"
	},
	{ --fluorhydric-acid
	type = "fluid",
	name = "fluorhydric-acid",
	default_temperature = 25,
	heat_capacity = "1KJ",
	base_color = {r=0.52, g=0.78, b=0.06},
	flow_color = {r=0.52, g=0.78, b=0.06},
	max_temperature = 100,
	icon = "__NuclearShmidtk__/graphics/icons/fluorhydric-acid.png",
	icon_size = 64,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	order = "a[fluid]-b[fluorhydric-acid]"
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
	
})