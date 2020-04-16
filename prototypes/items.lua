data:extend(
{
  { -- VERY HIGH TEMPERATURE NUCLEAR REACTOR
    type = "item",
    name = "vht-nuclear-reactor",
    icon = "__NuclearShmidtk__/graphics/icons/vht-nuclear-reactor.png",
    icon_size = 32,
    subgroup = "energy",
    order = "f[nuclear-energy]-a[vht-nuclear-reactor]",
    place_result = "vht-nuclear-reactor",
    stack_size = 10
  },
  { -- MOLTEN SALT NUCLEAR REACTOR
    type = "item",
    name = "ms-nuclear-reactor",
    icon = "__NuclearShmidtk__/graphics/icons/ms-nuclear-reactor.png",
    icon_size = 32,
    subgroup = "energy",
    order = "f[nuclear-energy]-a[ms-nuclear-reactor]",
    place_result = "ms-nuclear-reactor",
    stack_size = 10
  },
  { -- NUCLEAR WASTE CONTAINER
    type = "item",
    name = "nuclear-waste-container",
    icon = "__NuclearShmidtk__/graphics/icons/nuclear-waste-container.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "f[nuclear-energy]-a[nuclear-waste-container]",
    place_result = "nuclear-waste-container",
    stack_size = 10
  },
  { -- GAS CENTRIFUGE
    type = "item",
    name = "gas-centrifuge",
    icon = "__NuclearShmidtk__/graphics/icons/gas-centrifuge.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "f[nuclear-energy]-a[ngas-centrifuge",
    place_result = "gas-centrifuge",
    stack_size = 10
  },
  { -- NUCLEAR WASTE
    type = "item",
    name = "nuclear-waste",
    icon = "__NuclearShmidtk__/graphics/icons/nuclear-waste.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "h[nuclear-waste]",
    stack_size = 5
  },
  { -- FLUORITE
    type = "item",
    name = "fluorite",
    icon = "__NuclearShmidtk__/graphics/icons/fluorite.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "h[fluorite]",
    stack_size = 100
  },
  { -- RADIUM-226
    type = "item",
    name = "radium-226",
    icon = "__NuclearShmidtk__/graphics/icons/radium-226.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[radium-226]",
    stack_size = 100
  },
  { -- NEPTUNIUM 237
    type = "item",
    name = "neptunium-237",
    icon = "__NuclearShmidtk__/graphics/icons/neptunium-237.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[neptunium-237]",
    stack_size = 100
  },
  { -- NEPTUNIUM 239
    type = "item",
    name = "neptunium-239",
    icon = "__NuclearShmidtk__/graphics/icons/neptunium-239.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[neptunium-239]",
    stack_size = 100
  },
  { -- PLUTONIUM 238
    type = "item",
    name = "plutonium-238",
    icon = "__NuclearShmidtk__/graphics/icons/plutonium-238.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[plutonium-238]",
    stack_size = 100
  },
  { -- PLUTONIUM 239
    type = "item",
    name = "plutonium-239",
    icon = "__NuclearShmidtk__/graphics/icons/plutonium-239.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[plutonium-239]",
    stack_size = 100
  },
  { -- THORIUM 232
    type = "item",
    name = "thorium-232",
    icon = "__NuclearShmidtk__/graphics/icons/thorium-232.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[thorium-232]",
    stack_size = 100
  },
  { -- URANIUM 233
    type = "item",
    name = "uranium-233",
    icon = "__NuclearShmidtk__/graphics/icons/uranium-233.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[uranium-233]",
    stack_size = 100
  },
  { -- URANIUM 236
    type = "item",
    name = "uranium-236",
    icon = "__NuclearShmidtk__/graphics/icons/uranium-236.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[uranium-236]",
    stack_size = 100
  },
  { -- USED UP PLUTONIUM FUEL CELL (MOX)
    type = "item",
    name = "used-up-plutonium-fuel-cell",
    icon = "__NuclearShmidtk__/graphics/icons/used-up-plutonium-fuel-cell.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[used-up-plutonium-fuel-cell]",
    stack_size = 50
  },
  { -- USED UP UPGRADED PLUTONIUM FUEL CELL (MOX)
    type = "item",
    name = "used-up-upgraded-plutonium-fuel-cell",
    icon = "__NuclearShmidtk__/graphics/icons/used-up-upgraded-plutonium-fuel-cell.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[used-up-upgraded-plutonium-fuel-cell]",
    stack_size = 50
  },
  { -- USED UP UPGRADED NEPTUNIUM FUEL CELL
    type = "item",
    name = "used-up-neptunium-fuel-cell",
    icon = "__NuclearShmidtk__/graphics/icons/used-up-neptunium-fuel-cell.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[used-up-neptunium-fuel-cell]",
    stack_size = 50
  },
  { -- USED UP THORIUM FUEL CELL
    type = "item",
    name = "used-up-thorium-fuel-cell",
    icon = "__NuclearShmidtk__/graphics/icons/used-up-thorium-fuel-cell.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[used-up-thorium-fuel-cell]",
    stack_size = 50
  },
  { -- EMPTY FUEL CELL
    type = "item",
    name = "empty-fuel-cell",
    icon = "__NuclearShmidtk__/graphics/icons/empty-fuel-cell.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "g[empty-fuel-cell]",
    stack_size = 50
  },
  { -- THORIUM ORE
    type = "item",
    name = "thorium-ore",
    icon = "__NuclearShmidtk__/graphics/icons/thorium-ore.png",
    icon_size = 64,
    subgroup = "raw-resource",
    order = "g[thorium-ore]",
    stack_size = 50
  },
  { -- URANIUM OXIDE
    type = "item",
    name = "uranium-oxide",
    icon = "__NuclearShmidtk__/graphics/icons/uranium-oxide.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "h[uranium-oxide]",
    stack_size = 100
  },
  { -- PLUTONIUM FUEL CELL
	type = "item",
	name = "plutonium-fuel-cell",
	icon = "__NuclearShmidtk__/graphics/icons/plutonium-fuel-cell.png",
	icon_size = 32,
	flags = {},
	subgroup = "intermediate-product",
	order = "r[uranium-processing]-b[plutonium-fuel-cell]",
	fuel_category = "nuclear",
	burnt_result = "used-up-plutonium-fuel-cell",
	fuel_value = "7GJ",
	stack_size = 50
  },
  { -- NEPTUNIUM FUEL CELL
	type = "item",
	name = "neptunium-fuel-cell",
	icon = "__NuclearShmidtk__/graphics/icons/neptunium-fuel-cell.png",
	icon_size = 32,
	flags = {},
	subgroup = "intermediate-product",
	order = "r[uranium-processing]-b[neptunium-fuel-cell]",
	fuel_category = "nuclear",
	burnt_result = "used-up-neptunium-fuel-cell",
	fuel_value = "4GJ",
	stack_size = 50
  },
  { -- UPGRADED PLUTONIUM FUEL CELL
	type = "item",
	name = "upgraded-plutonium-fuel-cell",
	icon = "__NuclearShmidtk__/graphics/icons/upgraded-plutonium-fuel-cell.png",
	icon_size = 32,
	flags = {},
	subgroup = "intermediate-product",
	order = "r[uranium-processing]-b[upgraded-plutonium-fuel-cell]",
	fuel_category = "nuclear",
	burnt_result = "used-up-upgraded-plutonium-fuel-cell",
	fuel_value = "10GJ",
	stack_size = 50
  },
  { -- THORIUM FUEL CELL
  	type = "item",
  	name = "thorium-fuel-cell",
  	icon = "__NuclearShmidtk__/graphics/icons/thorium-fuel-cell.png",
  	icon_size = 32,
  	flags = {},
  	subgroup = "intermediate-product",
  	order = "r[uranium-processing]-b[thorium-fuel-cell]",
  	fuel_category = "thorium-fuel",
  	burnt_result = "used-up-thorium-fuel-cell",
  	fuel_value = "12GJ",
  	stack_size = 50
  },
  { -- HIGHLY RADIOACTIVE ROUNDS MAGAZINE
        type = "ammo",
        name = "highly-radioactive-rounds-magazine",
        icon = "__NuclearShmidtk__/graphics/icons/highly-radioactive-rounds-magazine.png",
        icon_size = 32,
        flags = {},
        ammo_type = {
            category = "bullet",
            action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    source_effects = {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot"
                    },
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit"
                        },
                        {
                            type = "damage",
                            damage = {amount = 50, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 10,
        subgroup = "ammo",
        order = "a[basic-clips]-d[highly-radioactive-rounds-magazine]",
        stack_size = 200
  },
  { -- URANIUM NUCLEAR BOMB
    type = "ammo",
    name = "nuclear-uranium-bomb",
    icon = "__NuclearShmidtk__/graphics/icons/nuclear-uranium-bomb.png",
    icon_size = 64,
    ammo_type =
    {
      category = "artillery-shell",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "artillery",
          projectile = "nuclear-uranium-bomb",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash"
          },
        }
      },
    },
    subgroup = "ammo",
    order = "d[explosive-cannon-shell]-d[artillery]",
    stack_size = 1
  },
  { -- PLUTONIUM NUCLEAR BOMB
    type = "ammo",
    name = "nuclear-plutonium-bomb",
    icon = "__NuclearShmidtk__/graphics/icons/nuclear-plutonium-bomb.png",
    icon_size = 64,
    ammo_type =
    {
      category = "artillery-shell",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "artillery",
          projectile = "nuclear-plutonium-bomb",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash"
          },
        }
      },
    },
    subgroup = "ammo",
    order = "d[explosive-cannon-shell]-d[artillery]",
    stack_size = 1
  }
})