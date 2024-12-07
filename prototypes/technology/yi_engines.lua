require("utilValidate")

-- Yi-Core Overlap
if data.raw.recipe["ye_green_ultimate"] then
	table.insert(data.raw.technology["yi-ultimate-reputation"].effects, {type = "unlock-recipe", recipe = "ye_green_ultimate"})
end
if data.raw.recipe["y_unlimited_wood"] then
	table.insert(data.raw.technology["yi-ultimate-reputation"].effects, {type = "unlock-recipe", recipe = "y_unlimited_wood"})
end
if data.raw.recipe["ye_granulate_trifitan"] then
	table.insert(data.raw.technology["yi-organic-oil-atomics"].effects, {type = "unlock-recipe", recipe = "ye_granulate_trifitan"})
end
if data.raw.recipe["ye_granulate_vuger"] then
	table.insert(data.raw.technology["yi-organic-oil-atomics"].effects, {type = "unlock-recipe", recipe = "ye_granulate_vuger"})
end
if data.raw.recipe["ye_granulate_corn"] then
	table.insert(data.raw.technology["yi-organic-oil-atomics"].effects, {type = "unlock-recipe", recipe = "ye_granulate_corn"})
end
if data.raw.recipe["ye_biofuel"] then
	table.insert(data.raw.technology["yi-organic-oil-atomics"].effects, {type = "unlock-recipe", recipe = "ye_biofuel"})
end
if data.raw.recipe["ye_slurry2ethanol"] then
	table.insert(data.raw.technology["yi-organic-oil-atomics"].effects, {type = "unlock-recipe", recipe = "ye_slurry2ethanol"})
end

if data.raw.recipe["y-mf2d"] then
	table.insert(data.raw.technology["yi-organic-oil-atomics"].effects, {type = "unlock-recipe", recipe = "y-mf2d"})
end

if data.raw.recipe["yie_import_sealing"] then
	table.insert(data.raw.technology["yi-ultimate-reputation"].effects, {type = "unlock-recipe", recipe = "yie_import_sealing"})
end

if data.raw.recipe["yie_import_blech_blau"] then
	table.insert(data.raw.technology["yi-ultimate-reputation"].effects, {type = "unlock-recipe", recipe = "yie_import_blech_blaue"})
end

--table.insert(data.raw.technology["xxxx"].effects, {type = "unlock-recipe", recipe = "yyyy"})
local tiers = {}

-- Tier 2
table.insert(tiers, 
	{
		{
			type = "technology",
			name = "yi-basic-mechanical-force",
			icon = "__yi_engines__/graphics/entity/pump-icon.png",
			icon_size = 64, prerequisites = {"yi-intermediates", "engine"},
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "y-shaft"
				},
				{
					type = "unlock-recipe",
					recipe = "y-shaft-ground"
				},
				{
					type = "unlock-recipe",
					recipe = "y-shaft-r"
				},
				{
					type = "unlock-recipe",
					recipe = "y-shaft-ground-r"
				},
				{
					type = "unlock-recipe",
					recipe = "yie_hard_metals"
				},
				{
					type = "unlock-recipe",
					recipe = "y-iron-case"
				},
				{
					type = "unlock-recipe",
					recipe = "y-winding"
				},
				{
					type = "unlock-recipe",
					recipe = "y-mwater-pump"
				},
				{
					type = "unlock-recipe",
					recipe = "y-mfwater"
				},
				{
					type = "unlock-recipe",
					recipe = "y-1stirling-engine"
				},
				{
					type = "unlock-recipe",
					recipe = "y-emotor-s"
				},
				{
					type = "unlock-recipe",
					recipe = "y-mf1c"
				},
				{	
					type = "unlock-recipe",
					recipe = "y-electric-air-heater"
				},
				{
					type = "unlock-recipe",
					recipe = "y-rmvpol"
				},
				{
					type = "unlock-recipe",
					recipe = "y-waste-condense"
				},
				{
					type = "unlock-recipe",
					recipe = "y-gearbox-power"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_water2mf"
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

-- Tier 3
table.insert(tiers, 
	{
		{
			type = "technology",
			name = "yi-intermediate-mechanical-force",
			icon = "__yi_engines__/graphics/entity/energy2/sfe-icon.png",
			icon_size = 64, prerequisites = {"yi-basic-mechanical-force", "yi-basic-machines", "lubricant", "oil-processing"},
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "y-sfe"
				},
				{
					type = "unlock-recipe",
					recipe = "y-mf1f"
				},
				{
					type = "unlock-recipe",
					recipe = "y-mf1a1"
				},
				{
					type = "unlock-recipe",
					recipe = "y-mf1a"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_gasmotor"
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
			name = "yi-basic-farming",
			icon = "__yi_engines__/graphics/entity/farm-icon.png",
			icon_size = 64, prerequisites = {"yi-basic-mechanical-force","yi-basic-machines"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_farm"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye-seed_a1"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye-seed_a2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye-growcorn"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye-growcorn_ws"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_seed_b"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_cornb"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_cornb_ws"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_celluose"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_sugar"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_biomixed"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_synwood"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye-corn2fluid"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye-cf2lubricant"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y-mf2e"
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
			name = "yi-basic-transport",
			icon = "__yi_engines__/graphics/icons/ubo_icon.png",
			icon_size = 64, prerequisites = {"yi-basic-mechanical-force"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_tranport_tube_orange"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_tranport_tube_orange_underground"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_tranport_tube_orange_splitter"
			  },
			},
			unit =
			{
			  count = 20,
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


-- Tier 4
table.insert(tiers, 
	{
		{
			type = "technology",
			name = "yi-basic-ranching",
			icon = "__yi_engines__/graphics/entity/cage_empty_icon.png",
			icon_size = 64, prerequisites = {"yi-basic-farming"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_meatfarm"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_grow_animal_a"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_animal0"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_cooking_meat"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_pool"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_grow_fish1"
			  },
			},
			unit =
			{
			  count = 350,
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
			name = "yi-automation-4",
			icon = "__yi_engines__/graphics/entity/factory_var_1_icon.png",
			icon_size = 64, prerequisites = {"yi-intermediate-mechanical-force", "automation-3"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_fassembly1"
			  },
			},
			unit =
			{
			  count = 300,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}		
			  },
			  time = 30
			},
			order = "y"
		},
		{
			type = "technology",
			name = "yi-research",
			icon = "__yi_engines__/graphics/entity/science_gen_icon.png",
			icon_size = 64, prerequisites = {"yi-automation-4"},
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "yie_science_blue_gen"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_science_blue"
				},
			},
			unit =
			{
			  count = 200,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}	
			  },
			  time = 30
			},
			order = "y"
		},
	}
)


-- Tier 5
table.insert(tiers, 
	{
		{
			type = "technology",
			name = "yi-fluid-handling-mechanical-force",
			icon = "__yi_engines__/graphics/canister.png",
			icon_size = 64, prerequisites = {"yi-intermediate-mechanical-force","yi-fluid-handling", "yi-basic-ranching"},
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "ye_canmachine"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_sealing"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_canister"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_canister2plates_smelt"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_cw"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_unicomp"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_petrol_fill"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_co_fill"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_ho_fill"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_sa_fill"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_blood_fill"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_lub_fill"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_mf_fill"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_slurry_fill"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_veg_fill"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_eth_fill"
				},  
				{
					type = "unlock-recipe",
					recipe = "ye_can_uc_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_cw_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_eth_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_lub_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_veg_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_mf_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_slurry_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_blood_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_sa_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_ho_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_co_empty"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_can_petrol_empty"
				},
			},
			unit =
			{
			  count = 50,
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
			name = "yi-quantum-mechanical-force",
			icon = "__yi_engines__/graphics/entity/energy2/qr-icon.png",
			icon_size = 64, prerequisites = {"yi-research", "yi-advanced-mechanical-force", "yi-atomics"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "y-mf1b"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y-mf1d"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y-mf1e"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y-quantrinum-reactor"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_center"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_rheinsberg"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y-quantrinum-charge"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y-mf1-q1"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y-mf1-q2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "y-mf1-q3"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_rheins_LT"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_rheins_MT"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_rheins_HT"
			  },			  
			},
			unit =
			{
			  count = 1200,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}		
			  },
			  time = 30
			},
			order = "y"
		},
		{
			type = "technology",
			name = "yi-dna",
			icon = "__yi_engines__/graphics/entity/dna_splicer_icon.png",
			icon_size = 64, prerequisites = {"yi-basic-ranching", "yi-automation-5"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_dnasplicer"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_plant0"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_plant1"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_plant3"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_plant4"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_animal1"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_animal2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_animal3"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_animal4"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_grow_plant1"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_grow_plant2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_grow_animal2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_grow_animal3"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_grow_animal3fast"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_grow_animal4"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_fish2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_fish3"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_fish4"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_neutralisatzion"
			  }, 
			  {
				type = "unlock-recipe",
				recipe = "ye_futtermittel_b"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_futtermittel_a"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_dna_fish2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yie_bloodfrommeat"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_smoker"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_smoked_meat"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_smoked_fish"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_futtermittel_d"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_futtermittel_c"
			  },
			  {
				type = "unlock-recipe",
				recipe = "yie_pureiron"
			  },
			},
			unit =
			{
			  count = 400,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}		
			  },
			  time = 30
			},
			order = "y"
		},
		{
			type = "technology",
			name = "yi-automation-5",
			icon = "__yi_engines__/graphics/entity/factory_var_2_icon.png",
			icon_size = 64, prerequisites = {"logistics-3", "yi-automation-4"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_fassembly2"
			  },
			},
			unit =
			{
			  count = 300,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}		
			  },
			  time = 30
			},
			order = "y"
		},		
	}
)

-- Tier 6
table.insert(tiers, 
	{
		{
			type = "technology",
			name = "yi-engines-trade",
			icon = "__yi_engines__/graphics/icons/package_empty.png",
			icon_size = 64, prerequisites = {"yi-automation-4", "yi-reputation", "yi-basic-farming"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_trade_node"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_icemaker"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_ice_container_empty"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_ice_container_filled"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_empty"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_export01"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_export02"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_export03"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_export04"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_export05"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_export06"
			  },		  
			},
			unit =
			{
			  count = 600,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}		
			  },
			  time = 30
			},
			order = "y"
		},
		{
			type = "technology",
			name = "yi-advanced-transport",
			icon = "__yi_engines__/graphics/icons/ubg_icon.png",
			icon_size = 64, prerequisites = {"logistics-3", "yi-dna", "yi-basic-transport"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_buechsenblech"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_tranport_tube_green"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_tranport_tube_green_underground"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_tranport_tube_green_splitter"
			  },
			  
			},
			unit =
			{
			  count = 600,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}
			  },
			  time = 15
			},
			order = "y"
		},
		{
			type = "technology",
			name = "yi-automation-6",
			icon = "__yi_engines__/graphics/entity/factory_var_3_icon.png",
			icon_size = 64, prerequisites = {"yi-advanced-transport", "yi-automation-5"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_fassembly_sp"
			  },
			},
			unit =
			{
			  count = 300,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}		
			  },
			  time = 30
			},
			order = "y"
		},
	}
)

-- Tier 7
table.insert(tiers, 
	{
		{
			type = "technology",
			name = "yi-dna-trading",
			icon = "__yi_engines__/graphics/icons/buechse_leer.png",
			icon_size = 64, prerequisites = {"yi-engines-trade", "yi-dna"},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "ye_trademeat1"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_trademeat2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_tradeblood"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_export_fish1"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_export_fish2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_weiss_export"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_rosa_export"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_fleisch_export"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_gelb_export"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_blau_export"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_carni"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_spliced_cells"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_verotin"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_omtrinit"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_organic"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_substratin"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_c_meat"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_r_meat"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_fish1"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_package_fish2"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_empty"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_white"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_rosa"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_braun"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_gelb"
			  },
			  {
				type = "unlock-recipe",
				recipe = "ye_buechse_blau"
			  },		  
			},
			unit =
			{
			  count = 450,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}		
			  },
			  time = 30
			},
			order = "y"
		},
		{
			type = "technology",
			name = "yi-advanced-mechanical-force",
			icon = "__yi_engines__/graphics/entity/energy2/turbine_icon.png",
			icon_size = 64, prerequisites = {"yi-intermediate-mechanical-force", "yi-research", "yi-advanced-machines", "advanced-oil-processing"},
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "ye_emotor_m"
				},
				{
					type = "unlock-recipe",
					recipe = "y_mpump_mf"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_motorm_mf"
				},	
				{
					type = "unlock-recipe",
					recipe = "y_mpump_water"
				},				
				{
					type = "unlock-recipe",
					recipe = "ye_mfheatmotor_m"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_mf_mfheatmotor_m"
				},
				{
					type = "unlock-recipe",
					recipe = "y-ffe"
				},
				{
					type = "unlock-recipe",
					recipe = "y-mf2a"
				},
				{
					type = "unlock-recipe",
					recipe = "y-mf2b"
				},
				{
					type = "unlock-recipe",
					recipe = "y-mf2c"
				},	
				{
					type = "unlock-recipe",
					recipe = "ye_overheater"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_makesteam"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_sturbine"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_steam2mf"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_steam3mf"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_tfmw_generator-s"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_tfmw_turbine-s"
				},
				{
					type = "unlock-recipe",
					recipe = "ye_wpump_m",
				},				
			},
			unit =
			{
			  count = 400,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}
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