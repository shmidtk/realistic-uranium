--{ -- Mining resources
--   type = "item",
--    name = "dtk-uranium-powder",
--    icon = "__NuclearShmidtk__/graphics/resources/uranium-powder-64.png",
--    icon_size = 64,
--    subgroup = "intermediate-product",
--    order = "g[dtk-uranium-powder]",
--    stack_size = 100
--  },

  local standard_item = data.raw.item["iron-stick"]
  local assembler_recipe = data.raw.recipe["iron-stick"]


  --Uranium powder
  local dtk_uranium_powder = table.deepcopy(standard_item)
        dtk_uranium_powder.name = 'dtk-uranium-powder'
        dtk_uranium_powder.icon = "__NuclearShmidtk__/graphics/resources/uranium-powder-64.png"
        dtk_uranium_powder.icon_size = 64
        dtk_uranium_powder.subgroup = "intermediate-product"
        dtk_uranium_powder.order = "g[dtk-uranium-powder]"
        dtk_uranium_powder.stack_size = 100
        

  local dtk_uranium_powder_recipe = table.deepcopy(assembler_recipe)
        dtk_uranium_powder_recipe.name = "dtk-uranium-powder"
        dtk_uranium_powder_recipe.energy_required = 12
        dtk_uranium_powder_recipe.enabled = true
        dtk_uranium_powder_recipe.ingredients = {
                                                        {type = "item", name = "uranium-ore", amount = 10}
                                                }
        dtk_uranium_powder_recipe.result = "dtk-uranium-powder"
        dtk_uranium_powder_recipe.result_count = 10
        dtk_uranium_powder_recipe.icon = "__NuclearShmidtk__/graphics/resources/uranium-powder-64.png"
        dtk_uranium_powder_recipe.icon_size = 64
        dtk_uranium_powder_recipe.subgroup = "intermediate-product"
        dtk_uranium_powder_recipe.order = "f[dtk-uranium-powder]"

    

  data:extend(
    {
        dtk_uranium_powder,
        dtk_uranium_powder_recipe
    }
  )