local resource_autoplace = require("__core__/lualib/resource-autoplace")

--[[thorium_autoplace_settings = {
  name = "thorium-ore",
  order = "b",
  base_density = 2,
  base_spots_per_km2 = 1.1,
  has_starting_area_placement = false,
  random_spot_size_minimum = 0.5,
  random_spot_size_maximum = 3,
  regular_blob_amplitude_multiplier = 1.25,
  richness_post_multiplier = 0.75,
  resource_index = 51,
  regular_rq_factor_multiplier = 0.9}]]--

data:extend(
{
    {
      type = "resource",
      name = "fluorite-ore",
      icon = "__RealisticUranium__/graphics/icons/fluorite.png",
      icon_size = 64,
      flags = {"placeable-neutral"},
      order="a-b-a",
      map_color = {r=0.74, g=0.02, b=0.74},
      minable =
        {
          hardness = 1,
          mining_particle = "coal-particle",
          mining_time = 2,
          result = "dtk-fluorite",
        },
      collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
      selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
      autoplace = resource_autoplace.resource_autoplace_settings
      {
        name = "fluorite-ore",
        order = "b",
        base_density = 2.0,
        base_spots_per_km2 = 1.1,
        has_starting_area_placement = false,
        random_spot_size_minimum = 0.25,
        random_spot_size_maximum = 3,
        regular_blob_amplitude_multiplier = 1,
        regular_rq_factor_multiplier = 0.9,
        candidate_spot_count = 22
      },
      stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
      stages =
        {
          sheet =
          {
            filename = "__RealisticUranium__/graphics/resources/fluorite.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
              {
                filename = "__RealisticUranium__/graphics/resources/hr-fluorite.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5,
              }
          }
        },
        
    },
    {
      type = "autoplace-control",
      name = "fluorite-ore",
      order = "k-a",
      richness = true,
      category = "resource"
    },
    {
      type = "noise-layer",
      name = "fluorite-ore"
    },
})