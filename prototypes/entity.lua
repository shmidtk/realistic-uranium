data:extend(
{
	{ -- VERY HIGH TEMPERATURE NUCLEAR REACTOR
		type = "reactor",
		name = "vht-nuclear-reactor",
		icon = "__NuclearShmidtk__/graphics/icons/vht-nuclear-reactor.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.5, result = "nuclear-reactor"},
		order = "f[nuclear-energy]-a[vht-nuclear-reactor]",
		max_health = 500,
		corpse = "nuclear-reactor-remnants",
		corpse = "big-remnants",
		consumption = "50MW",
		neighbour_bonus = 1,
		energy_source =
    	{
    		type = "burner",
     		fuel_categories = {"nuclear"},
       		effectivity = 1,
        	fuel_inventory_size = 2,
        	burnt_inventory_size = 1,
    	},
    	collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    	lower_layer_picture =
    	{
      		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/vht-reactor-pipes.png",
      		width = 156,
     		height = 156,
     		shift = { -0.03125, -0.1875 },
    		hr_version =
    		{
       			filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-vht-reactor-pipes.png",
        		width = 320,
       			height = 316,
       			scale = 0.5,
        		shift = { -0.03125, -0.1875 }
      		}
   		},
   		heat_lower_layer_picture =
    	{
      		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/vht-reactor-pipes-heated.png",
      		width = 156,
      		height = 156,
      		shift = util.by_pixel(-3, -4),
      		hr_version =
      		{
        		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-vht-reactor-pipes-heated.png",
        		width = 320,
        		height = 316,
        		scale = 0.5,
        		shift = util.by_pixel(-0.5, -4.5),
      		}
    	},
   		picture =
    	{
      		layers =
      		{
        		{
          			filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/vht-reactor.png",
          			width = 154,
          			height = 158,
          			shift = util.by_pixel(-6, -6),
          			hr_version =
          			{
            			filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-vht-reactor.png",
            			width = 302,
            			height = 318,
            			scale = 0.5,
            			shift = util.by_pixel(-5, -7),
          			}
        		},
        		{
          			filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/vht-reactor-shadow.png",
          			width = 263,
          			height = 162,
          			shift = { 1.625 , 0 },
          			draw_as_shadow = true,
          			hr_version =
          			{
            			filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-vht-reactor-shadow.png",
            			width = 525,
            			height = 323,
            			scale = 0.5,
            			shift = { 1.625 , 0 },
            			draw_as_shadow = true
         			}
        		}
      		}
    	},
    	working_light_picture =
    	{
      		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/vht-reactor-lights.png",
      		width = 160,
      		height = 160,
      		shift = { -0.03125, -0.1875 },
      		blend_mode = "additive",
      		hr_version =
      		{
        		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-vht-reactor-lights.png",
        		width = 320,
        		height = 320,
        		scale = 0.5,
        		shift = { -0.03125, -0.1875 },
        		blend_mode = "additive"
      		}
    	},
    	light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.0, b = 0.0}},
    	heat_buffer =
    	{
      		max_temperature = 1200,
      		specific_heat = "12MJ",
      		max_transfer = "12GW",
     		minimum_glow_temperature = 350,
      		glow_alpha_modifier = 0.6,
      		connections =
      		{
        		{
          			position = {-2, -2},
          			direction = defines.direction.north
        		},
        		{
          			position = {0, -2},
          			direction = defines.direction.north
        		},
        		{
         			position = {2, -2},
          			direction = defines.direction.north
        		},
       		 	{
          			position = {2, -2},
          			direction = defines.direction.east
        		},
        		{
        			position = {2, 0},
          			direction = defines.direction.east
        		},
        		{
          			position = {2, 2},
          			direction = defines.direction.east
        		},
        		{
          			position = {2, 2},
          			direction = defines.direction.south
        		},
        		{
          			position = {0, 2},
          			direction = defines.direction.south
        		},
        		{
          			position = {-2, 2},
          			direction = defines.direction.south
        		},
        		{
        		  	position = {-2, 2},
          			direction = defines.direction.west
        		},
        		{
          			position = {-2, 0},
          			direction = defines.direction.west
        		},
        		{
          			position = {-2, -2},
          			direction = defines.direction.west
        		}
      		},
      		heat_picture =
      		{
        		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/reactor-heated.png",
        		width = 108,
        		height = 128,
        		shift = util.by_pixel(1, -7),
        		hr_version =
        		{
          			filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-reactor-heated.png",
          			width = 216,
          			height = 256,
          			scale = 0.5,
          			shift = util.by_pixel(3, -6.5),
        		}
      		},
      		heat_glow =
      		{
        		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/reactor-heat-glow.png",
        		priority = "extra-high",
        		width = 188,
        		height = 190,
        		tint = heat_glow_tint,
        		shift = util.by_pixel(-2, -4)
      		}
		},
		connection_patches_connected =
    	{
      		sheet =
      		{
        	  filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/vht-reactor-connect-patches.png",
       		  width = 32,
        	  height = 32,
        	  variation_count = 12,
        	  hr_version =
        	  {
          		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-vht-reactor-connect-patches.png",
          		width = 64,
          		height = 64,
          		variation_count = 12,
          		scale = 0.5
        	  }
      		}
    	},
    	connection_patches_disconnected =
    	{
      		sheet =
      		{
       		  filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/vht-reactor-connect-patches.png",
        	  width = 32,
        	  height = 32,
        	  variation_count = 12,
        	  y = 32,
        	  hr_version =
        	  {
          		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-vht-reactor-connect-patches.png",
          		width = 64,
          		height = 64,
          		variation_count = 12,
          		y = 64,
          		scale = 0.5
        	  }
      		}
    	},
    	heat_connection_patches_connected =
    	{
      		sheet =
      		{
        	  filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/vht-reactor-connect-patches-heated.png",
        	  width = 32,
        	  height = 32,
        	  variation_count = 12,
        	  hr_version =
        	  {
          		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-vht-reactor-connect-patches-heated.png",
          		width = 64,
          		height = 64,
          		variation_count = 12,
          		scale = 0.5
        	  }
      		}
    	},
    	heat_connection_patches_disconnected =
    	{
      		sheet =
      		{
        	  filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/vht-reactor-connect-patches-heated.png",
        	  width = 32,
        	  height = 32,
        	  variation_count = 12,
        	  y = 32,
        	  hr_version =
        	  {
          		filename = "__NuclearShmidtk__/graphics/entity/vht-nuclear-reactor/hr-vht-reactor-connect-patches-heated.png",
          		width = 64,
          		height = 64,
          		variation_count = 12,
          		y = 64,
          		scale = 0.5
        	  }
      		}	
    	},
    	working_sound =
    	{
      		sound =
      		{
        		{
          			filename = "__base__/sound/nuclear-reactor-1.ogg",
         			volume = 0.6
        		},
        		{
          			filename = "__base__/sound/nuclear-reactor-2.ogg",
          			volume = 0.6
        		}
      		},
      		apparent_volume = 1.5,
      		max_sounds_per_type = 3,
      		fade_in_ticks = 10,
      		fade_out_ticks = 30
    	},
    	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	},
	{ -- MOLTEN SALT NUCLEAR REACTOR
		type = "reactor",
		name = "ms-nuclear-reactor",
		icon = "__NuclearShmidtk__/graphics/icons/ms-nuclear-reactor.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.5, result = "nuclear-reactor"},
		order = "f[nuclear-energy]-a[ms-nuclear-reactor]",
		max_health = 500,
		corpse = "nuclear-reactor-remnants",
		corpse = "big-remnants",
		consumption = "38MW",
		neighbour_bonus = 1,
		energy_source =
    	{
    		type = "burner",
     		fuel_categories = {"thorium-fuel"},
       		effectivity = 1,
        	fuel_inventory_size = 2,
        	burnt_inventory_size = 1,
    	},
    	collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    	lower_layer_picture =
    	{
      		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/ms-reactor-pipes.png",
      		width = 156,
     		height = 156,
     		shift = { -0.03125, -0.1875 },
    		hr_version =
    		{
       			filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-ms-reactor-pipes.png",
        		width = 320,
       			height = 316,
       			scale = 0.5,
        		shift = { -0.03125, -0.1875 }
      		}
   		},
   		heat_lower_layer_picture =
    	{
      		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/ms-reactor-pipes-heated.png",
      		width = 156,
      		height = 156,
      		shift = util.by_pixel(-3, -4),
      		hr_version =
      		{
        		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-ms-reactor-pipes-heated.png",
        		width = 320,
        		height = 316,
        		scale = 0.5,
        		shift = util.by_pixel(-0.5, -4.5),
      		}
    	},
   		picture =
    	{
      		layers =
      		{
        		{
          			filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/ms-reactor.png",
          			width = 154,
          			height = 158,
          			shift = util.by_pixel(-6, -6),
          			hr_version =
          			{
            			filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-ms-reactor.png",
            			width = 302,
            			height = 318,
            			scale = 0.5,
            			shift = util.by_pixel(-5, -7),
          			}
        		},
        		{
          			filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/ms-reactor-shadow.png",
          			width = 263,
          			height = 162,
          			shift = { 1.625 , 0 },
          			draw_as_shadow = true,
          			hr_version =
          			{
            			filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-ms-reactor-shadow.png",
            			width = 525,
            			height = 323,
            			scale = 0.5,
            			shift = { 1.625 , 0 },
            			draw_as_shadow = true
         			}
        		}
      		}
    	},
    	working_light_picture =
    	{
      		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/ms-reactor-lights.png",
      		width = 160,
      		height = 160,
      		shift = { -0.03125, -0.1875 },
      		blend_mode = "additive",
      		hr_version =
      		{
        		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-ms-reactor-lights.png",
        		width = 320,
        		height = 320,
        		scale = 0.5,
        		shift = { -0.03125, -0.1875 },
        		blend_mode = "additive"
      		}
    	},
    	light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.0, b = 1.0}},
    	heat_buffer =
    	{
      		max_temperature = 1000,
      		specific_heat = "10MJ",
      		max_transfer = "10GW",
     		minimum_glow_temperature = 350,
      		glow_alpha_modifier = 0.6,
      		connections =
      		{
        		{
          			position = {-2, -2},
          			direction = defines.direction.north
        		},
        		{
          			position = {0, -2},
          			direction = defines.direction.north
        		},
        		{
         			position = {2, -2},
          			direction = defines.direction.north
        		},
       		 	{
          			position = {2, -2},
          			direction = defines.direction.east
        		},
        		{
        			position = {2, 0},
          			direction = defines.direction.east
        		},
        		{
          			position = {2, 2},
          			direction = defines.direction.east
        		},
        		{
          			position = {2, 2},
          			direction = defines.direction.south
        		},
        		{
          			position = {0, 2},
          			direction = defines.direction.south
        		},
        		{
          			position = {-2, 2},
          			direction = defines.direction.south
        		},
        		{
        		  	position = {-2, 2},
          			direction = defines.direction.west
        		},
        		{
          			position = {-2, 0},
          			direction = defines.direction.west
        		},
        		{
          			position = {-2, -2},
          			direction = defines.direction.west
        		}
      		},
      		heat_picture =
      		{
        		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/reactor-heated.png",
        		width = 108,
        		height = 128,
        		shift = util.by_pixel(1, -7),
        		hr_version =
        		{
          			filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-reactor-heated.png",
          			width = 216,
          			height = 256,
          			scale = 0.5,
          			shift = util.by_pixel(3, -6.5),
        		}
      		},
      		heat_glow =
      		{
        		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/reactor-heat-glow.png",
        		priority = "extra-high",
        		width = 188,
        		height = 190,
        		tint = heat_glow_tint,
        		shift = util.by_pixel(-2, -4)
      		}
		},
		connection_patches_connected =
    	{
      		sheet =
      		{
        	  filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/ms-reactor-connect-patches.png",
       		  width = 32,
        	  height = 32,
        	  variation_count = 12,
        	  hr_version =
        	  {
          		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-ms-reactor-connect-patches.png",
          		width = 64,
          		height = 64,
          		variation_count = 12,
          		scale = 0.5
        	  }
      		}
    	},
    	connection_patches_disconnected =
    	{
      		sheet =
      		{
       		  filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/ms-reactor-connect-patches.png",
        	  width = 32,
        	  height = 32,
        	  variation_count = 12,
        	  y = 32,
        	  hr_version =
        	  {
          		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-ms-reactor-connect-patches.png",
          		width = 64,
          		height = 64,
          		variation_count = 12,
          		y = 64,
          		scale = 0.5
        	  }
      		}
    	},
    	heat_connection_patches_connected =
    	{
      		sheet =
      		{
        	  filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/ms-reactor-connect-patches-heated.png",
        	  width = 32,
        	  height = 32,
        	  variation_count = 12,
        	  hr_version =
        	  {
          		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-ms-reactor-connect-patches-heated.png",
          		width = 64,
          		height = 64,
          		variation_count = 12,
          		scale = 0.5
        	  }
      		}
    	},
    	heat_connection_patches_disconnected =
    	{
      		sheet =
      		{
        	  filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/ms-reactor-connect-patches-heated.png",
        	  width = 32,
        	  height = 32,
        	  variation_count = 12,
        	  y = 32,
        	  hr_version =
        	  {
          		filename = "__NuclearShmidtk__/graphics/entity/ms-nuclear-reactor/hr-ms-reactor-connect-patches-heated.png",
          		width = 64,
          		height = 64,
          		variation_count = 12,
          		y = 64,
          		scale = 0.5
        	  }
      		}	
    	},
    	working_sound =
    	{
      		sound =
      		{
        		{
          			filename = "__base__/sound/nuclear-reactor-1.ogg",
         			volume = 0.6
        		},
        		{
          			filename = "__base__/sound/nuclear-reactor-2.ogg",
          			volume = 0.6
        		}
      		},
      		apparent_volume = 1.5,
      		max_sounds_per_type = 3,
      		fade_in_ticks = 10,
      		fade_out_ticks = 30
    	},
    	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	},
  {
    type = "artillery-projectile",
    name = "nuclear-uranium-bomb",
    flags = {"not-on-map"},
    acceleration = 0,
    direction_only = true,
    reveal_map = true,
    map_color = {r=1, g=1, b=0},
    picture =
    {
      filename = "__NuclearShmidtk__/graphics/entity/nuclear-bomb/hr-uranium-bomb.png",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    shadow =
    {
      filename = "__base__/graphics/entity/artillery-projectile/hr-shell-shadow.png",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    chart_picture =
    {
      filename = "__NuclearShmidtk__/graphics/entity/nuclear-bomb/uranium-bomb-visualization.png",
      flags = { "icon" },
      frame_count = 1,
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            repeat_count = 100,
            type = "create-trivial-smoke",
            smoke_name = "nuclear-smoke",
            offset_deviation = {{-1, -1}, {1, 1}},
            slow_down_factor = 0.5,
            starting_frame = 3,
            starting_frame_deviation = 5,
            starting_frame_speed = 0,
            starting_frame_speed_deviation = 5,
            speed_from_center = 0.5,
            speed_deviation = 0.2
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 5000, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 4000,
              radius = 120,
              action_delivery =
              {
                type = "projectile",
                projectile = "uranium-artillery-wave",
                starting_speed = 0.5
              },
            }
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 80,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "uranium-artillery-wave",
    flags = {"not-on-map"},
    acceleration = 0,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 3,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "damage",
            damage = {amount = 5000, type = "explosion"}
          }
        }
      }
    },
    animation =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    },
    shadow =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    }
  },
  {
    type = "artillery-projectile",
    name = "nuclear-plutonium-bomb",
    flags = {"not-on-map"},
    acceleration = 0,
    direction_only = true,
    reveal_map = true,
    map_color = {r=1, g=1, b=0},
    picture =
    {
      filename = "__NuclearShmidtk__/graphics/entity/nuclear-bomb/hr-plutonium-bomb.png",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    shadow =
    {
      filename = "__base__/graphics/entity/artillery-projectile/hr-shell-shadow.png",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    chart_picture =
    {
      filename = "__NuclearShmidtk__/graphics/entity/nuclear-bomb/plutonium-bomb-visualization.png",
      flags = { "icon" },
      frame_count = 1,
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            repeat_count = 100,
            type = "create-trivial-smoke",
            smoke_name = "nuclear-smoke",
            offset_deviation = {{-1, -1}, {1, 1}},
            slow_down_factor = 0.5,
            starting_frame = 3,
            starting_frame_deviation = 5,
            starting_frame_speed = 0,
            starting_frame_speed_deviation = 5,
            speed_from_center = 0.5,
            speed_deviation = 0.2
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 5000, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 4000,
              radius = 130,
              action_delivery =
              {
                type = "projectile",
                projectile = "plutonium-artillery-wave",
                starting_speed = 0.5
              },
            }
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 75,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "plutonium-artillery-wave",
    flags = {"not-on-map"},
    acceleration = 0,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 3,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "damage",
            damage = {amount = 5000, type = "explosion"}
          }
        }
      }
    },
    animation =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    },
    shadow =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    }
  },
  {
    type = "assembling-machine",
    name = "nuclear-waste-container",
    icon = "__NuclearShmidtk__/graphics/icons/nuclear-waste-container.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "nuclear-waste-container"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 50
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__NuclearShmidtk__/graphics/entity/nuclear-waste-container/nuclear-waste-container.png",
          priority = "high",
          width = 214,
          height = 193,
          frame_count = 1,
          line_length = 8,
          scale = 0.5,
          shift = util.by_pixel(0, -0.5),
        }
      }
    },
    crafting_categories = {"nwaste"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 5
    },
    energy_usage = "35kW",
    module_specification =
    {
      module_slots = 0
    },
    allowed_effects = {}
  },
  {
    type = "assembling-machine",
    name = "gas-centrifuge",
    icon = "__NuclearShmidtk__/graphics/icons/gas-centrifuge.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "gas-centrifuge"},
    max_health = 350,
    corpse = "centrifuge-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.5}},

    always_draw_idle_animation = true,
    idle_animation =
    {
      layers =
      {
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C.png",
          priority = "high",
          line_length = 8,
          width = 119,
          height = 107,
          frame_count = 64,
          shift = util.by_pixel(-0.5, -26.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 237,
            height = 214,
            frame_count = 64,
            shift = util.by_pixel(-0.25, -26.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 132,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(20, -10),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 279,
            height = 152,
            frame_count = 64,
            shift = util.by_pixel(16.75, -10)
          }
        },
        -- Centrifuge B
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B.png",
          priority = "high",
          line_length = 8,
          width = 78,
          height = 117,
          frame_count = 64,
          shift = util.by_pixel(23, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 156,
            height = 234,
            frame_count = 64,
            shift = util.by_pixel(23, 6.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 124,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(63, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 251,
            height = 149,
            frame_count = 64,
            shift = util.by_pixel(63.25, 15.25)
          }
        },
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A.png",
          priority = "high",
          line_length = 8,
          width = 70,
          height = 123,
          frame_count = 64,
          shift = util.by_pixel(-26, 3.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 139,
            height = 246,
            frame_count = 64,
            shift = util.by_pixel(-26.25, 3.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
          priority = "high",
          draw_as_shadow = true,
          line_length = 8,
          width = 108,
          height = 54,
          frame_count = 64,
          shift = util.by_pixel(6, 27),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-shadow.png",
            priority = "high",
            draw_as_shadow = true,
            scale = 0.5,
            line_length = 8,
            width = 230,
            height = 124,
            frame_count = 64,
            shift = util.by_pixel(8.5, 23.5)
          }
        }
      }
    },

    animation =
    {
      layers =
      {
        -- Centrifuge C
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 96,
          height = 104,
          frame_count = 64,
          shift = util.by_pixel(0, -27),

          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 190,
            height = 207,
            frame_count = 64,
            shift = util.by_pixel(0, -27.25)
          }
        },
        -- Centrifuge B
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 65,
          height = 103,
          frame_count = 64,
          shift = util.by_pixel(16.5, 0.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 131,
            height = 206,
            frame_count = 64,
            shift = util.by_pixel(16.75, 0.5)
          }
        },
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 55,
          height = 98,
          frame_count = 64,
          shift = util.by_pixel(-23.5, -2),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 108,
            height = 197,
            frame_count = 64,
            shift = util.by_pixel(-23.5, -1.75)
          }
        }
      }
    },

    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },

    working_visualisations =
    {
      {
        effect = "uranium-glow", -- changes alpha based on energy source light intensity
        light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}}
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    crafting_speed = 1,
    crafting_categories = {"centrifuging"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    },
    energy_usage = "350kW",
    module_specification =
    {
      module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
})