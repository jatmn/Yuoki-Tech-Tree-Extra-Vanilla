require("prototypes.technology.yi_core")



-- Yi Tweaks
--data.raw["item-subgroup"]["y_tiles"].group = "yuoki-energy"

-- List of Core techs
local yi_core_techs = {
"yi-crushing",
"yi-washing",
"yi-raw-materials",

"yi-optics",
"yi-basic-power",
"yi-intermediates",
"yi-ammo",
"yi-ore-processing",
"yi-brick-wall",

"yi-atomics",
"yi-inserters",
"yi-walls",
"yi-modules",
"yi-basic-machines",
"yi-tools",
"yi-power",
"yi-capsule",
"yi-lights",
"yi-fluid-handling",
"yi-mining",
"yi-drying",
"yi-solar-energy",

"yi-advanced-inserters",
"yi-electric-turrent",
"yi-ammo-turrets",
"yi-advanced-machines",
"yi-oil-atomics",
"yi-recycle-atomics",
"yi-storage-atomics",
"yi-water-atomics",
"yi-science-exchange",
"yi-land-mine",
"yi-cannon-shell",
"yi-artillery-shell",
"yi-ammo-turrets-2",
"yi-fluid-handling-2",
"yi-solar-concentrated-solar-collector",
"yi-electric-energy-distribution-1",
"yi-electric-energy-accumulators-1",
"yi-flywheel-energy-storage",
"yi-underground-mining",
"yi-adv-walls",

"yi-advanced-modules",
"yi-logistics-research",
"yi-reputation",
"yi-advanced-tools",
"yi-advanced-ore-processing",
"yi-advanced-power",
"yi-organic-oil-atomics",
"yi-power-armor-equipment",
"yi-ammo-turrets-3",
"yi-fluid-handling-3",
"yi-electric-energy-distribution-2",
"yi-electric-energy-accumulators-2",
"yi-hard-walls",
"yi-forcefield-walls",
"yi-hardened-laser-turret",
"yi-plasma-turret",

"yi-smelting",
"yi-ultimate-reputation",
"yi-mastercraft",
"yi-power-armor",
"yi-water-sulfurization",
"yi-electric-energy-distribution-3",
"yi-electric-energy-accumulators-3",
"yi-electric-energy-accumulators-4",
"yi-electric-energy-accumulators-5",
"yi-ztt-turret"

}

if data.raw.recipe["ye_sturbine_recipe"] ~= nil then
	require("prototypes.technology.yi_engines")

	-- List of Engines Techs
	local yi_engines_techs = {
	"yi-basic-mechanical-force",
	
	"yi-intermediate-mechanical-force",
	
	"yi-fluid-handling-mechanical-force",
	"yi-basic-farming",
	"yi-basic-transport",
	"yi-automation-4",
	"yi-research",
	
	"yi-basic-ranching",
	"yi-quantum-mechanical-force",
	"yi-automation-5",

	"yi-dna",
	
	"yi-advanced-transport",
	"yi-engines-trade",
	"yi-automation-6",	
	
	"yi-dna-trading",
	"yi-advanced-mechanical-force"
	
	}

	-- Combine Tech list
	for k, tech in pairs(yi_engines_techs) do
		table.insert(yi_core_techs, tech)
	end
	
end

if data.raw.recipe["yir_frame_loco_steam_recipe"] ~= nil then
	require("prototypes.technology.yi_railways")

	-- List of Engines Techs
	local yi_railways_techs = {
	"yir-steam-engines",
	"yir-diesel-engines",
	"yir-tile-factory",
	"yir-plastic_tiles"
	
	
	}

	-- Combine Tech list
	for k, tech in pairs(yi_railways_techs) do
		table.insert(yi_core_techs, tech)
	end
	
end

-- Loop over all techs
-- Turn off all enabled recipes now controlled by tech unlock
for k, tech in pairs(yi_core_techs) do
	for i, v in pairs(data.raw.technology[tech].effects) do
		if v.type == "unlock-recipe" then
			local checkRecipe = data.raw.recipe[v.recipe]
			if checkRecipe ~= nil then
				data.raw.recipe[v.recipe].enabled = false
			end
		end
	end
end





