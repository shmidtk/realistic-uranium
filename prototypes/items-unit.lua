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
        dtk_uranium_powder_recipe.name = "dtk-uranium-powder-proc"
        dtk_uranium_powder_recipe.energy_required = 12
        dtk_uranium_powder_recipe.enabled = false
        dtk_uranium_powder_recipe.ingredients = {
                                                        {type = "item", name = "uranium-ore", amount = 10}
                                                }
        dtk_uranium_powder_recipe.result = "dtk-uranium-powder"
        dtk_uranium_powder_recipe.result_count = 10
        dtk_uranium_powder_recipe.icon = "__NuclearShmidtk__/graphics/resources/uranium-powder-64.png"
        dtk_uranium_powder_recipe.icon_size = 64
        dtk_uranium_powder_recipe.subgroup = "intermediate-product"
        dtk_uranium_powder_recipe.order = "f[dtk-uranium-powder]"

  --Uranium salt
  local dtk_uranium_salt = table.deepcopy(standard_item)
      dtk_uranium_salt.name = 'dtk-uranium-salt'
      dtk_uranium_salt.icon = "__NuclearShmidtk__/graphics/resources/uranium-salt.png"
      dtk_uranium_salt.icon_size = 64
      dtk_uranium_salt.subgroup = "intermediate-product"
      dtk_uranium_salt.order = "g[dtk-uranium-salt]"
      dtk_uranium_salt.stack_size = 100
        

  local dtk_uranium_salt_recipe = table.deepcopy(assembler_recipe)
        dtk_uranium_salt_recipe.name = "dtk-uranium-salt-recipe"
        dtk_uranium_salt_recipe.energy_required = 12
        dtk_uranium_salt_recipe.enabled = false
        dtk_uranium_salt_recipe.category = "chemistry"
        dtk_uranium_salt_recipe.ingredients = {
                                                      {type = "fluid", name = "dtk-uranium-salt-solution", amount = 24}
                                              }
        dtk_uranium_salt_recipe.results     = {
                                                         {type="item", name="dtk-uranium-salt", amount=6},
                                                         {type="fluid", name="water", amount = 18}
                                                      }
        dtk_uranium_salt_recipe.icon = "__NuclearShmidtk__/graphics/resources/uranium-salt.png"
        dtk_uranium_salt_recipe.icon_size = 64
        dtk_uranium_salt_recipe.subgroup = "intermediate-product"
        dtk_uranium_salt_recipe.order = "f[dtk-uranium-salt]"



   local dtk_uranium_plant_item = table.deepcopy(data.raw['item']['oil-refinery'])
   dtk_uranium_plant_item.name = "dtk-uranium-refinery-plant"
   dtk_uranium_plant_item.place_result  = "dtk-uranium-refinery-plant"
   dtk_uranium_plant_item.icon = "__NuclearShmidtk__/graphics/icons/uranium-refinery.png"


  
   local dtk_calcium_silicat_recipe = table.deepcopy(data.raw.recipe["stone-brick"])
   dtk_calcium_silicat_recipe.name = "dtk-calcium-silicat-to-bricks"
   dtk_calcium_silicat_recipe.energy_required = 12
   dtk_calcium_silicat_recipe.enabled = false
   dtk_calcium_silicat_recipe.ingredients = {
                                               {type="item",  name = "dtk-calcium-silicat", amount = 1},
                                            }
   dtk_calcium_silicat_recipe.subgroup = "intermediate-product"
   dtk_calcium_silicat_recipe.order = "f[dtk-calcium-silicat]"




  data:extend(
    {
        dtk_uranium_powder,
        dtk_uranium_powder_recipe,
        dtk_uranium_plant_item,
        dtk_uranium_salt,
        dtk_uranium_salt_recipe,
        dtk_calcium_silicat_recipe,

        { --  Yellow cake
            type = "item",
            name = "dtk-yellow-cake",
            icon = "__NuclearShmidtk__/graphics/resources/yellow-cake.png",
            icon_size = 64,
            subgroup = "intermediate-product",
            order = "f[dtk-yellow-cake]",
            stack_size = 100
        },

        {  --Yellow cake recipe
        type = "recipe",
        name = "dtk-yellow-cake",
        category = "chemistry",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="item",  name = "dtk-uranium-salt", amount = 6},
                        {type="fluid",  name = "ammonia", amount = 25},
                    },
        results = {
                        {type="item", name="dtk-yellow-cake", amount=5},
                        {type="item", name="thorium-ore", amount=1},
                    },
        icon = "__NuclearShmidtk__/graphics/resources/yellow-cake.png",
        icon_size = 64,
        subgroup = "fluid-recipes",
        order = "a[fluid-chemistry]-f[dtk-yellow-cake]"
        },

--        { --  Yellow cake drum
--       type = "item",
--        name = "dtk-yellow-cake-drum",
--        icon = "__NuclearShmidtk__/graphics/resources/yellow-cake-drum.png",
--        icon_size = 64,
--        subgroup = "intermediate-product",
--        order = "f[dtk-yellow-cake-drum]",
--        stack_size = 10
--       },

--        {  --Yellow cake drumming
--        type = "recipe",
--        name = "dtk-yellow-cake-drumming",
--        energy_required = 12,
--        enabled = false,
--        ingredients = {
--                        {type="item",  name = "dtk-yellow-cake", amount = 25},
--                        {type="item",  name = "empty-barrel", amount = 1},
--                    },
--        results = {
--                        {type="item", name="dtk-yellow-cake-drum", amount=1},
--                      
--                    },
--        icon = "__NuclearShmidtk__/graphics/resources/yellow-cake-drum.png",
--        icon_size = 64,
--        order = "f[yellow-cake-drum]"
--        },
        
        { -- UNH
        type = "item",
        name = "dtk-unh",
        icon = "__NuclearShmidtk__/graphics/resources/unh.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "f[unh]",
        stack_size = 100
       },

        {  -- VAPORISATION OF OK LIQUOIR INTO UNH
        type = "recipe",
        name = "dtk-unh-recipe",
        category = "chemistry",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="fluid", name = "dtk-ok-liquoir", amount = 100},
                    },
        results = {
                        {type="item", name="dtk-unh", amount= 1},
                        {type="fluid", name="steam", amount= 300, temperature = 150}
                },
        emissions_multiplier = 2,
        icon = "__NuclearShmidtk__/graphics/resources/unh.png",
        icon_size = 64,
        subgroup = "fluid-recipes",
        order = "a[fluid-chemistry]-f[unh]"
        },


        { --  Uranium trioxide
        type = "item",
        name = "dtk-uo3",
        icon = "__NuclearShmidtk__/graphics/resources/uo3.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "f[dtk-uo3]",
        stack_size = 100
       },

        {  --Baking of UNH
        type = "recipe",
        name = "dtk-unh-backing-to-uo3",
        category = "smelting",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="item",  name = "dtk-unh", amount = 1},
                    },
        results = {
                        {type="item", name="dtk-uo3", amount=1},
                      
                    },
        icon = "__NuclearShmidtk__/graphics/recipes/uo3-recipe.png",
        icon_size = 64,
        order = "f[uo3-recipe]"
        },

        { --  Uranium dioxide
        type = "item",
        name = "dtk-uo2",
        icon = "__NuclearShmidtk__/graphics/resources/uo2.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "f[dtk-uo2]",
        stack_size = 10
       },

        {  --Transformation UO3 into UO2
        type = "recipe",
        name = "dtk-uo2-recipe",
        category = "chemistry",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="item",  name = "dtk-uo3", amount = 5},
                        {type="fluid",  name = "hydrogen", amount = 500},
                    },
        results = {
                        {type="item", name="dtk-uo2", amount=5},
                        {type="fluid", name="water", amount=500},                      
                    },
        icon = "__NuclearShmidtk__/graphics/resources/uo2.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "f[uo2]"
        },
   

        { -- FLUORITE
        type = "item",
        name = "dtk-fluorite",
        icon = "__NuclearShmidtk__/graphics/icons/fluorite.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[fluorite]",
        stack_size = 100
        },


        
        { -- CALSIUM SULFAT CaSO4
        type = "item",
        name = "dtk-calcium-sulfate",
        icon = "__NuclearShmidtk__/graphics/resources/calcium-sulfat.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[fluorite]",
        stack_size = 100
        },

        { -- CALSIUM SILICAT CaSiO3
        type = "item",
        name = "dtk-calcium-silicat",
        icon = "__NuclearShmidtk__/graphics/resources/calcium-silicat.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[fluorite]",
        stack_size = 100
        },

        { -- Uranium Tetrafluorite UF4
        type = "item",
        name = "dtk-uranium-tetrafluorite",
        icon = "__NuclearShmidtk__/graphics/resources/uranium-tetrafluorite.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[uranium-tetrafluorite]",
        stack_size = 100
        },


        {  -- Prodcution of UF4 (Uranium Tetrafluorite)
        type = "recipe",
        name = "dtk-uranium-tetrafluorite-recipe",
        category = "chemistry",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="item",  name = "dtk-uo2", amount = 1},
                        {type="fluid",  name = "dtk-fluorhydric-acid", amount = 400},
                    },
        results = {
                        {type="item", name="dtk-uranium-tetrafluorite", amount=1},
                        {type="fluid", name="steam", amount=500, temperature = 150},                      
                    },
        icon = "__NuclearShmidtk__/graphics/recipes/uranium-tetrafluorite.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "f[uranium-tetrafluorite]"
        },

        { -- 5% grade Ammonium diuranate ADU 
        type = "item",
        name = "dtk-adu-5",
        icon = "__NuclearShmidtk__/graphics/resources/adu-5.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[ammonium-diuranate]",
        stack_size = 100
        },

        {  -- Ammonium diuranate recipe
        type = "recipe",
        name = "dtk-adu-recipe",
        category = "uranium-processing",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="fluid",  name = "dtk-uo2f2-5", amount = 100},
                        {type="fluid",  name = "nitric-acid", amount = 100},
                        {type="fluid",  name = "water", amount = 100}
                    },
        results = {
                        {type="item", name="dtk-adu-5", amount=1},
                        {type="fluid", name="water", amount=95},                      
                    },
        icon = "__NuclearShmidtk__/graphics/resources/adu-5.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "f[ammonium-diuranate]"
        },

        { -- 5% grade Uranium dioxide
        type = "item",
        name = "dtk-uo2-5",
        icon = "__NuclearShmidtk__/graphics/resources/uo2-5.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[ammonium-diuranate]",
        stack_size = 100
        },

        {  -- Ammonium diuranate recipe
        type = "recipe",
        name = "dtk-adu-uo2-5",
        category = "uranium-processing",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="item",  name = "dtk-adu-5", amount = 1},
                        {type="fluid",  name = "hydrogen", amount = 100}
                    },
        results = {
                        {type="item", name="dtk-uo2-5", amount=1}                      
                    },
        icon = "__NuclearShmidtk__/graphics/resources/uo2-5.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "f[ammonium-diuranate]"
        },

        { -- Empty Fuel Cell
        type = "item",
        name = "dtk-empty-fuel-cell",
        icon = "__NuclearShmidtk__/graphics/resources/empty-fuel-cell.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "h[empty-fuel-cell]",
        stack_size = 10
        },

        {  -- Empty Fuel Cell recipe
        type = "recipe",
        name = "dtk-empty-fuel-cell",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="item",  name = "steel-plate", amount = 10},
                        {type="item",  name = "rare-metals", amount = 1}
                    },
        results = {
                        {type="item", name="dtk-empty-fuel-cell", amount=10}                      
                    },
        icon = "__NuclearShmidtk__/graphics/resources/empty-fuel-cell.png",
        icon_size = 32,
        subgroup = 'intermediate-product',
        order = "f[empty-fuel-cell]"
        },

        { -- Uranium pallets
        type = "item",
        name = "dtk-uranium-pallets-5",
        icon = "__NuclearShmidtk__/graphics/resources/uranium-pallets-5.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[uranium-pallets-5]",
        stack_size = 10
        },

        {  --  Uranium pallets recipe
        type = "recipe",
        name = "dtk-uranium-pallets-recipe",
        category = "smelting",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="item",  name = "dtk-uo2-5", amount = 1}
                    },
        results = {
                        {type="item", name="dtk-uranium-pallets-5", amount=1}                      
                    },
        icon = "__NuclearShmidtk__/graphics/resources/uranium-pallets-5.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "f[uranium-pallets-5]"
        },
        
        --- DEPLETED URANIUM PROCESSING
        
        { -- Uranium Tetrafluorite UF4
        type = "item",
        name = "dtk-uranium-tetrafluorite-depleted",
        icon = "__NuclearShmidtk__/graphics/resources/uf-4-depleted.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[dtk-uranium-tetrafluorite-depleted]",
        stack_size = 100
        },
        
        
        {  --  DEPLETED UF4 FROM DEPLETED UF6
        type = "recipe",
        name = "dtk-uranium-tetrafluorite-depleted",
        category = "uranium-processing",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="fluid",  name = "dtk-uranium-hexafluorite-depleted", amount = 100},
                        {type="fluid",  name = "hydrogen-chloride", amount = 200},
                    },
        results = {
                        {type="item", name="dtk-uranium-tetrafluorite-depleted", amount=1}
                        {type="fluid", name="dtk-fluorhydric-acid", amount=200}     
                        {type="fluid", name="chlorine", amount=100}                           
                    },
        icon = "__NuclearShmidtk__/graphics/resources/uf-4-depleted.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "f[uf-4-depleted]"
        },


        {  --  EXTRACTION OF METALLIC U-238 - ELECTROLISYS WITH MAGNIUM
        type = "recipe",
        name = "dtk-u-238",
        category = "smelting",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="item",  name = "dtk-uranium-tetrafluorite-depleted", amount = 1},
                        {type="item",  name = "rare-metal", amount = 2},
                    },
        results = {
                        {type="item", name="uranium-238", amount=1}                      
                    },
        icon = "__NuclearShmidtk__/graphics/resources/uf-4-depleted.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "f[uf-4-depleted]"
        },
    }
  )



