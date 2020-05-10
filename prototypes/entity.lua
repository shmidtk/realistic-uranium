

local dtk_uranium_plant =  table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
dtk_uranium_plant.name = 'dtk-uranium-refinery-plant'
dtk_uranium_plant.fluid_boxes = {
                                    {
                                      production_type = "input",
                                      pipe_covers = pipecoverspictures(),
                                      base_area = 10,
                                      base_level = -1,
                                      pipe_connections = {{ type="input", position = {-2, 3} }}
                                    },
                                    {
                                      production_type = "input",
                                      pipe_covers = pipecoverspictures(),
                                      base_area = 10,
                                      base_level = -1,
                                      pipe_connections = {{ type="input", position = {0, 3} }}
                                    },
                                    {
                                      production_type = "input",
                                      pipe_covers = pipecoverspictures(),
                                      base_area = 10,
                                      base_level = -1,
                                      pipe_connections = {{ type="input", position = {2, 3} }}
                                    },
                                    {
                                      production_type = "output",
                                      pipe_covers = pipecoverspictures(),
                                      base_level = 1,
                                      pipe_connections = {{ position = {-2, -3} }}
                                    },
                                    {
                                      production_type = "output",
                                      pipe_covers = pipecoverspictures(),
                                      base_level = 1,
                                      pipe_connections = {{ position = {0, -3} }}
                                    },
                                    {
                                      production_type = "output",
                                      pipe_covers = pipecoverspictures(),
                                      base_level = 1,
                                      pipe_connections = {{ position = {2, -3} }}
                                    }
                                }

dtk_uranium_plant.animation = make_4way_animation_from_spritesheet(
            {
              layers =
              {
                {
                  filename = "__RealisticUranium__/graphics/entity/uranium-refinery/uranium-refinery.png",
                  width = 337,
                  height = 255,
                  frame_count = 1,
                  shift = {2.515625, 0.484375},
                  hr_version =
                  {
                    filename = "__RealisticUranium__/graphics/entity/uranium-refinery/hr-uranium-refinery.png",
                    width = 386,
                    height = 430,
                    frame_count = 1,
                    shift = util.by_pixel(0, -7.5),
                    scale = 0.5
                  }
                },
                {
                  filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
                  width = 337,
                  height = 213,
                  frame_count = 1,
                  shift = util.by_pixel(82.5, 26.5),
                  draw_as_shadow = true,
                  hr_version =
                  {
                    filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
                    width = 674,
                    height = 426,
                    frame_count = 1,
                    shift = util.by_pixel(82.5, 26.5),
                    draw_as_shadow = true,
                    force_hr_shadow = true,
                    scale = 0.5
                  }
                }
              }
            })                                
dtk_uranium_plant.order = "f[nuclear-energy]-a[dtk-uranium-refinery-plant]"
dtk_uranium_plant.minable = {mining_time = 0.1, result = "dtk-uranium-refinery-plant"}
dtk_uranium_plant.crafting_categories = {"uranium-processing"}
dtk_uranium_plant.icon =  "__RealisticUranium__/graphics/icons/uranium-refinery.png"

  



data:extend(
{
  dtk_uranium_plant
})