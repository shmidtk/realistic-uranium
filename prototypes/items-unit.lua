--{ -- Mining resources
--   type = "item",
--    name = "dtk-uranium-powder",
--    icon = "__RealisticUranium__/graphics/resources/uranium-powder-64.png",
--    icon_size = 64,
--    subgroup = "intermediate-product",
--    order = "g[dtk-uranium-powder]",
--    stack_size = 100
--  },

  local standard_item = data.raw.item["iron-stick"]
  local assembler_recipe = data.raw.recipe["iron-stick"]




  --Uranium salt
  local dtk_uranium_salt = table.deepcopy(standard_item)
      dtk_uranium_salt.name = 'dtk-uranium-salt'
      dtk_uranium_salt.icon = "__RealisticUranium__/graphics/resources/uranium-salt.png"
      dtk_uranium_salt.icon_size = 64
      dtk_uranium_salt.subgroup = "intermediate-product"
      dtk_uranium_salt.order = "u[uranium-items]-g[dtk-uranium-salt]"
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
        dtk_uranium_salt_recipe.icon = "__RealisticUranium__/graphics/resources/uranium-salt.png"
        dtk_uranium_salt_recipe.icon_size = 64
        dtk_uranium_salt_recipe.subgroup = "intermediate-product"
        dtk_uranium_salt_recipe.order = "u[uranium-items]-f[dtk-uranium-salt]"



   local dtk_uranium_plant_item = table.deepcopy(data.raw['item']['oil-refinery'])
   dtk_uranium_plant_item.name = "dtk-uranium-refinery-plant"
   dtk_uranium_plant_item.place_result  = "dtk-uranium-refinery-plant"
   dtk_uranium_plant_item.icon = "__RealisticUranium__/graphics/icons/uranium-refinery.png"


  
  -- local dtk_calcium_silicat_recipe = table.deepcopy(data.raw.recipe["stone-brick"])
  -- dtk_calcium_silicat_recipe.name = "dtk-calcium-silicat-to-bricks"
  -- dtk_calcium_silicat_recipe.energy_required = 12
  -- dtk_calcium_silicat_recipe.enabled = false
  -- dtk_calcium_silicat_recipe.ingredients = {
  --                                             {type="item",  name = "dtk-calcium-silicat", amount = 1},
  --                                          }
  -- dtk_calcium_silicat_recipe.subgroup = "intermediate-product"
  -- dtk_calcium_silicat_recipe.order = "u[uranium-items]-f[dtk-calcium-silicat]"




  data:extend(
    {
        dtk_uranium_plant_item,
        dtk_uranium_salt,
        dtk_uranium_salt_recipe,
  --      dtk_calcium_silicat_recipe,



        {  --Uranium powder
            type = "item",
            name = "dtk-uranium-powder",
            icon = "__RealisticUranium__/graphics/resources/uranium-powder-64.png",
            icon_size = 64,
            subgroup = "intermediate-product",
            order = "u[uranium-items]-u[dtk-uranium-powder]",
            stack_size = 100
        },
        {  --Uranium powder recipe
            type = "recipe",
            name = "dtk-uranium-powder-proc",
            category = "crushing",
            energy_required = 6,
            enabled = false,
            ingredients = {
                            {type = "item", name = "uranium-ore", amount = 10}
                        },
            results = {
                            {type="item", name="dtk-uranium-powder", amount= 10},
                        },
            icon = "__RealisticUranium__/graphics/resources/uranium-powder-64.png",
            icon_size = 64,
            subgroup = "intermediate-product",
            order = "u[uranium-items]-f[dtk-uranium-powder]"
        },
     
        { --  Yellow cake
            type = "item",
            name = "dtk-yellow-cake",
            icon = "__RealisticUranium__/graphics/resources/yellow-cake.png",
            icon_size = 64,
            subgroup = "intermediate-product",
            order = "u[uranium-items]-f[dtk-yellow-cake]",
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
                    --    {type="item", name="thorium-ore", amount=1},
                    },
        icon = "__RealisticUranium__/graphics/resources/yellow-cake.png",
        icon_size = 64,
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[dtk-yellow-cake]"
        },
        
        { -- UNH
        type = "item",
        name = "dtk-unh",
        icon = "__RealisticUranium__/graphics/resources/unh.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-f[unh]",
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
        icon = "__RealisticUranium__/graphics/resources/unh.png",
        icon_size = 64,
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[unh]"
        },


        { --  Uranium trioxide
        type = "item",
        name = "dtk-uo3",
        icon = "__RealisticUranium__/graphics/resources/uo3.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-f[dtk-uo3]",
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
        icon = "__RealisticUranium__/graphics/recipes/uo3-recipe.png",
        icon_size = 64,
        order = "u[uranium-items]-f[uo3-recipe]"
        },

        { --  Uranium dioxide
        type = "item",
        name = "dtk-uo2",
        icon = "__RealisticUranium__/graphics/resources/uo2.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-f[dtk-uo2]",
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
        icon = "__RealisticUranium__/graphics/resources/uo2.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "u[uranium-items]-f[uo2]"
        },
   

        { -- FLUORITE
        type = "item",
        name = "dtk-fluorite",
        icon = "__RealisticUranium__/graphics/icons/fluorite.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[fluorite]",
        stack_size = 100
        },


        
        { -- CALSIUM SULFAT CaSO4
        type = "item",
        name = "dtk-calcium-sulfate",
        icon = "__RealisticUranium__/graphics/resources/calcium-sulfat.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[fluorite]",
        stack_size = 100
        },

    --[[    { -- CALSIUM SILICAT CaSiO3
        type = "item",
        name = "dtk-calcium-silicat",
        icon = "__RealisticUranium__/graphics/resources/calcium-silicat.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[fluorite]",
        stack_size = 100
        },]]--

        { -- Uranium Tetrafluorite UF4
        type = "item",
        name = "dtk-uranium-tetrafluorite",
        icon = "__RealisticUranium__/graphics/resources/uranium-tetrafluorite.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[uranium-tetrafluorite]",
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
        icon = "__RealisticUranium__/graphics/recipes/uranium-tetrafluorite.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "u[uranium-items]-f[uranium-tetrafluorite]"
        },

        { -- 5% grade Ammonium diuranate ADU 
        type = "item",
        name = "dtk-adu-5",
        icon = "__RealisticUranium__/graphics/resources/adu-5.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[ammonium-diuranate]",
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
        icon = "__RealisticUranium__/graphics/resources/adu-5.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "u[uranium-items]-f[ammonium-diuranate]"
        },

        { -- 5% grade Uranium dioxide
        type = "item",
        name = "dtk-uo2-5",
        icon = "__RealisticUranium__/graphics/resources/uo2-5.png",
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
        icon = "__RealisticUranium__/graphics/resources/uo2-5.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "u[uranium-items]-f[ammonium-diuranate]"
        },

        { -- Empty Fuel Cell
        type = "item",
        name = "dtk-empty-fuel-cell",
        icon = "__RealisticUranium__/graphics/resources/empty-fuel-cell.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[empty-fuel-cell]",
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
        icon = "__RealisticUranium__/graphics/resources/empty-fuel-cell.png",
        icon_size = 32,
        subgroup = 'intermediate-product',
        order = "u[uranium-items]-f[empty-fuel-cell]"
        },

        { -- Uranium pallets
        type = "item",
        name = "dtk-uranium-pallets-5",
        icon = "__RealisticUranium__/graphics/resources/uranium-pallets-5.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[uranium-pallets-5]",
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
        icon = "__RealisticUranium__/graphics/resources/uranium-pallets-5.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "u[uranium-items]-f[uranium-pallets-5]"
        },
        
        --- DEPLETED URANIUM PROCESSING
        
        { -- Uranium Tetrafluorite UF4
        type = "item",
        name = "dtk-uranium-tetrafluorite-depleted",
        icon = "__RealisticUranium__/graphics/resources/uf-4-depleted.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[dtk-uranium-tetrafluorite-depleted]",
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
                        {type="item", name="dtk-uranium-tetrafluorite-depleted", amount=1},
                        {type="fluid", name="dtk-fluorhydric-acid", amount=200},
                        {type="fluid", name="chlorine", amount=190}                           
                    },
        icon = "__RealisticUranium__/graphics/resources/uf-4-depleted.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "u[uranium-items]-f[uf-4-depleted]"
        },


        {  --  EXTRACTION OF METALLIC U-238 - ELECTROLISYS WITH MAGNIUM
            type = "recipe",
            name = "dtk-u-238",
            category = "smelting",
            energy_required = 12,
            enabled = false,
            ingredients = {
                            {type="item",  name = "dtk-uranium-tetrafluorite-depleted", amount = 1},
                            {type="item",  name = "rare-metals", amount = 2},
                        },
            results = {
                            {type="item", name="uranium-238", amount=10}                      
                        },
            icon = "__base__/graphics/icons/uranium-238.png",
            icon_size = 64,
            subgroup = 'intermediate-product',
            order = "u[uranium-items]-f[uf-4-depleted]"
        },


        --  WEAPON GRADE URANIUM EXTRACTION
        
        { --   Uranium Tetrafluorite UF4 100% Grade
        type = "item",
        name = "dtk-uranium-tetrafluorite-100",
        icon = "__RealisticUranium__/graphics/resources/uf-4-100.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[dtk-uranium-tetrafluorite-depleted]",
        stack_size = 100
        },
        
        
        {  --  100% Grade UF4 FROM 100% Grade UF6
        type = "recipe",
        name = "dtk-uranium-tetrafluorite-100",
        category = "uranium-processing",
        energy_required = 12,
        enabled = false,
        ingredients = {
                        {type="fluid",  name = "dtk-uranium-hexafluorite-100", amount = 100},
                        {type="fluid",  name = "hydrogen-chloride", amount = 200},
                    },
        results = {
                        {type="item", name="dtk-uranium-tetrafluorite-100", amount=1},
                        {type="fluid", name="dtk-fluorhydric-acid", amount=200},
                        {type="fluid", name="chlorine", amount=190}                           
                    },
        icon = "__RealisticUranium__/graphics/resources/uf-4-100.png",
        icon_size = 64,
        subgroup = 'intermediate-product',
        order = "u[uranium-items]-f[uf-4-100]"
        },


        {  --  EXTRACTION OF METALLIC U-235 - ELECTROLISYS WITH MAGNIUM
            type = "recipe",
            name = "dtk-u-235",
            category = "smelting",
            energy_required = 12,
            enabled = false,
            ingredients = {
                            {type="item",  name = "dtk-uranium-tetrafluorite-100", amount = 1},
                            {type="item",  name = "rare-metals", amount = 2},
                        },
            results = {
                            {type="item", name="uranium-235", amount=1}                      
                        },
            icon = "__base__/graphics/icons/uranium-235.png",
            icon_size = 64,
            subgroup = 'intermediate-product',
            order = "u[uranium-items]-f[uranium-235]"
        },



        { -- Low radiactive waste
        type = "item",
        name = "dtk-low-radioactive-waste",
        icon = "__RealisticUranium__/graphics/resources/radioactive-waste.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[dtk-low-radioactive-waste]",
        stack_size = 100
        },
        { -- Plutonium
        type = "item",
        name = "dtk-plutonium",
        icon = "__RealisticUranium__/graphics/resources/plutonium.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[plutonium]",
        stack_size = 100
        },

        { -- Plutonium extraction
        type = "recipe",
        name = "dtk-plutonium-extraction",
        icon = "__RealisticUranium__/graphics/resources/plutonium.png",
        icon_size = 32,
        category = "uranium-processing",
        enabled = false,
        energy_required = 6,
        ingredients = 
            {
                {type="fluid", name="dtk-plutonium-solution", amount=1},
                {type="fluid", name="sulfuric-acid", amount=100}
            },
        results = 
            {
                {type="item", name="dtk-plutonium", amount=1},
                {type="fluid", name="water", amount=100}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-items]-u[uranium-fluid-chemistry]-f[plutonium-extraction]"
        },
        
        { -- MOX fuel pellets
        type = "item",
        name = "dtk-mox-fuel-pellet",
        icon = "__RealisticUranium__/graphics/resources/mox-pellets.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "h[plutonium]",
        stack_size = 100
        },

        { -- MOX fuel pellets recipe
        type = "recipe",
        name = "dtk-mox-fuel-pellet-recipe",
        icon = "__RealisticUranium__/graphics/resources/mox-pellets.png",
        icon_size = 64,
        category = "smelting",
        enabled = false,
        energy_required = 16,
        ingredients = 
            {
                {type="item", name="dtk-plutonium", amount=7},
                {type="item", name="uranium-238", amount=930}
            },
        results = 
            {
                {type="item", name="dtk-mox-fuel-pellet", amount=1}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[plutonium-extraction]"
        },        

        { -- MOX  fuel-cell
        type = "item",
        name = "dtk-mox-fuel-cell",
        icon = "__RealisticUranium__/graphics/resources/mox-fuel-cell.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "h[mox-fuel-cell]",
        fuel_category = "nuclear",
        burnt_result = "dtk-used-up-mox-fuel-cell",
        fuel_value = "8GJ",
        stack_size = 50
        },

        { -- MOX used up fuel-cell
        type = "item",
        name = "dtk-used-up-mox-fuel-cell",
        icon = "__RealisticUranium__/graphics/resources/used-up-mox-fuel-cell.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "u[uranium-items]-h[up-mox-fuel-cell]",
        stack_size = 50
        },

        { --  MOX  fuel-cell recipe 
        type = "recipe",
        name = "dtk-mox-fuel-cell",
        icon = "__RealisticUranium__/graphics/resources/mox-fuel-cell.png",
        icon_size = 32,
        category = "crafting",
        enabled = false,
        energy_required = 6,
        ingredients = 
            {
                {type="item", name="dtk-mox-fuel-pellet", amount=1},
                {type="item",  name = "dtk-empty-fuel-cell", amount = 1}
            },
        results = 
            {
                {type="item", name="dtk-mox-fuel-cell", amount=1}
            },
        subgroup = "fluid-recipes",
        order = "u[uranium-fluid-chemistry]-f[dtk-mox-fuel-cell]"
        }, 

        { --  MOX Used mox fuel cell processing
            type = "recipe",
            name = "dtk-used-up-mox-fuel-cell-processing",
            icon = "__RealisticUranium__/graphics/resources/used-up-mox-fuel-cell.png",
            icon_size = 32,
            category = "centrifuging",
            enabled = false,
            energy_required = 6,
            ingredients = 
                        {
                            {type="item",  name = "dtk-used-up-mox-fuel-cell", amount = 1},
                            {type="fluid",  name = "nitric-acid", amount = 100}					
                        },			
            results = 
                        {
                            {type="fluid", name = "dtk-uranium-plutonium-solution-88-5", amount = 100},
                            {type="item",  name = "dtk-low-radioactive-waste", amount = 6},
                            {type="item",  name = "steel-plate", amount = 5},
                            {type="item",  name = "rare-metals", amount = 1}
                        },
            subgroup = "fluid-recipes",
            order = "u[uranium-fluid-chemistry]-f[dtk-mox-fuel-cell]"
        },  

    }
  )



