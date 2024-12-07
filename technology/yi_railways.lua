require("utilValidate")

local tiers = {}

-- Tier 2
table.insert(tiers, 
	{
		{
			type = "technology",
			name = "yir-steam-engines",
			icon = "__yi_railway__/graphics/entity/factorys/yir_fac_loco_icon.png",
			icon_size = 32, prerequisites = {"railway", "engine", "automation-2", "advanced-material-processing"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "yir_frame_loco_steam_recipe"
			  },	
			  {
				type = "unlock-recipe",
				recipe = "yir_factory_loco_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_factory_wagon_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_factory_material_recipe"
			  },
			},
			unit =
			{
			  count = 300,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			  },
			  time = 30
			},
			order = "y"
		},
		{
			type = "technology",
			name = "yir-diesel-engines",
			icon = "__yi_railway__/graphics/icons/frame_diesel.png",
			icon_size = 32, prerequisites = {"yir-steam-engines", "oil-processing"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "yir_frame_loco_diesel_recipe"
			  },	
			},
			unit =
			{
			  count = 200,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			  },
			  time = 30
			},
			order = "y"
		},	
		{
			type = "technology",
			name = "yir-tile-factory",
			icon = "__yi_railway__/graphics/entity/factorys/yir_fac_tiles_icon.png",
			icon_size = 32, prerequisites = {"steel-processing"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "yir_factory_tiles_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y_path_labor_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y_path_science_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y_path_checker_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_brick1_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_brick2_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_grating_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_ground1_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_plates2_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_muster1_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal1_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal2_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal3_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal4_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal5_tile_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_stony_tile_recipe"
			  },
			},
			unit =
			{
			  count = 100,
			  ingredients =
			  {
				{"automation-science-pack", 1},
			  },
			  time = 5
			},
			order = "y"
		},
		{
			type = "technology",
			name = "yir-plastic_tiles",
			icon = "__yi_railway__/graphics/entity/path_tiles/stripes.png",
			icon_size = 32, prerequisites = {"yir-tile-factory", "plastics"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "y_tring_recipe"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y_tgb_recipe"
			  },
			},
			unit =
			{
			  count = 250,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			  },
			  time = 30
			},
			order = "y"
		},			
	}
)

for i,techs in pairs(tiers) do
	data:extend(validateRecipes(techs))
end