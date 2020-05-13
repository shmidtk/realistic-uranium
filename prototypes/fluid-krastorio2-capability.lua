
if mods["Krastorio2"] then


-- Hydrogen
data.recipe["dtk-fluorum-recipe"].results = {
                                                {type="fluid", name="dtk-fluorum", amount=100},
                                                {type="fluid", name='hydrogen', amount=100}
                                            }


data.recipe["dtk-uo2-recipe"].ingredients = {
                                                {type="item",  name = "dtk-uo3", amount = 5},
                                                {type="fluid",  name = "hydrogen", amount = 500},
                                            }

data.recipe["dtk-adu-uo2-5"].ingredients = {
                                                {type="item",  name = "dtk-adu-5", amount = 1},
                                                {type="fluid",  name = "hydrogen", amount = 100}
                                           }


--Hydrogen Cloride
                                                                
data.recipe["dtk-uranium-tetrafluorite-depleted"].ingredients = {
                                                                    {type="fluid",  name = "dtk-uranium-hexafluorite-depleted", amount = 100},
                                                                    {type="fluid",  name = "hydrogen-chloride", amount = 200},
                                                                }

data.recipe["dtk-uranium-tetrafluorite-100"].ingredients = {
                                                                {type="fluid",  name = "dtk-uranium-hexafluorite-100", amount = 100},
                                                                {type="fluid",  name = "hydrogen-chloride", amount = 200},
                                                           }

--Nitric-Acid
                                                                
data.recipe["dtk-ok-liquoir-recipe"].ingredients = {
                                                    {type="item", name = "dtk-yellow-cake", amount = 1},
                                                    {type="fluid", name = "nitric-acid",    amount = 200},
                                                    {type="fluid", name = "water",          amount = 900}
                                                   }

                                                   

data.recipe["dtk-adu-recipe"].ingredients = {
                                                    {type="fluid",  name = "dtk-uo2f2-5", amount = 100},
                                                    {type="fluid",  name = "nitric-acid", amount = 100},
                                                    {type="fluid",  name = "water", amount = 100}
                                                }                                                


data.recipe["dtk-used-up-mox-fuel-cell-processing"].ingredients = 
                                                {
                                                    {type="item",  name = "dtk-used-up-mox-fuel-cell", amount = 1},
                                                    {type="fluid",  name = "nitric-acid", amount = 100}					
                                                }	

--Ammonia

data.recipe["dtk-yellow-cake"].ingredients = {
                                                    {type="item",  name = "dtk-uranium-salt", amount = 6},
                                                    {type="fluid",  name = "ammonia", amount = 25},
                                                }


-- sand

data.recipe["dtk-sulfur-trioxide-recipe"].results = {
                                                        {type="fluid", name="dtk-sulfur-trioxide", amount=80},
                                                        {type="item", name='sand', amount=1}
                                                    }

-- Rare metals




data.recipe["dtk-empty-fuel-cell"].ingredients = {
                                                    {type="item",  name = "steel-plate", amount = 10},
                                                    {type="item",  name = "rare-metals", amount = 1}
                                                 }



data.recipe["dtk-u-238"].ingredients = {
                                         {type="item",  name = "dtk-uranium-tetrafluorite-depleted", amount = 1},
                                         {type="item",  name = "rare-metals", amount = 2},
                                       }

data.recipe["dtk-u-235"].ingredients = {
                                        {type="item",  name = "dtk-uranium-tetrafluorite-depleted", amount = 1},
                                        {type="item",  name = "rare-metals", amount = 2},
                                      }

data.recipe["dtk-used-up-mox-fuel-cell-processing"].results = 
                                      {
                                          {type="fluid", name = "dtk-uranium-plutonium-solution-88-5", amount = 100},
                                          {type="item",  name = "dtk-low-radioactive-waste", amount = 6},
                                          {type="item",  name = "steel-plate", amount = 5},
                                          {type="item",  name = "rare-metals", amount = 1}
                                      },

end