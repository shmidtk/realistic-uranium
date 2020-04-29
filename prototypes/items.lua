data:extend(
{
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

  { -- THORIUM ORE
  type = "item",
  name = "thorium-ore",
  icon = "__NuclearShmidtk__/graphics/icons/thorium-ore.png",
  icon_size = 64,
  subgroup = "raw-resource",
  order = "g[thorium-ore]",
  stack_size = 50
},

})