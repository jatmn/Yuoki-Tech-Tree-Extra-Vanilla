require("utilValidate")

local tiers = {}

-- Tier 2
table.insert(tiers, 
	{
		{
			type = "technology",
			name = "yir-steam-engines",
			icon = "__yi_railway__/graphics/entity/factorys/yir_fac_loco_icon.png",
			icon_size = 64, prerequisites = {"railway", "engine", "automation-2", "advanced-material-processing"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "yir_frame_loco_steam"
			  },	
			  {
				type = "unlock-recipe",
				recipe = "yir_factory_loco"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_factory_wagon"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_factory_material"
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
			icon_size = 64, prerequisites = {"yir-steam-engines", "oil-processing"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "yir_frame_loco_diesel"
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
			icon_size = 64, prerequisites = {"steel-processing"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "yir_factory_tiles"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y_path_labor"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y_path_science"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y_path_checker"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_brick1_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_brick2_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_grating_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_ground1_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_plates2_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_muster1_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal1_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal2_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal3_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal4_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_metal5_tile"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yir_stony_tile"
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
			icon_size = 64, prerequisites = {"yir-tile-factory", "plastics"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "y_tring"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y_tgb"
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