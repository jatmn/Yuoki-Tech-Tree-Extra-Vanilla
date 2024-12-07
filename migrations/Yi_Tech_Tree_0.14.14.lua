for i, force in pairs(game.forces) do 
	force.reset_recipes()
end

for i, force in pairs(game.forces) do 
	force.reset_technologies()
end


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
"yi-land-mine",
"yi-cannon-shell",
"yi-artillery-shell",
"yi-ammo-turrets-2",
"yi-fluid-handling-2",
"yi-solar-energy-2",
"yi-electric-energy-distribution-1",
"yi-electric-energy-accumulators-1",
"yi-flywheel-energy-storage",
"yi-underground-mining",

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

"yi-smelting",
"yi-ultimate-reputation",
"yi-mastercraft",
"yi-power-armor",
"yi-basic-mechanical-force",
"yi-water-sulfurization",
"yi-electric-energy-distribution-3",
"yi-electric-energy-accumulators-3",
"yi-electric-energy-accumulators-4",
"yi-electric-energy-accumulators-5",

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
	"yi-engines-trade",
	"yi-automation-6",
	
	"yi-dna-trading",
	"yi-advanced-mechanical-force",

	"yir-steam-engines",
	"yir-diesel-engines"

}

for index, force in pairs(game.forces) do 
	for x, tech in pairs (yi_core_techs) do
		if force.technologies[tech] ~= nil and force.technologies[tech].researched then 
			for i, v in pairs(force.technologies[tech].effects) do
				if v.type == "unlock-recipe" then
					local checkRecipe = force.recipes[v.recipe]
					if checkRecipe ~= nil then
						checkRecipe.enabled = true
					end
				end
			end
		end
	end
end
