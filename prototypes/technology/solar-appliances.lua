local prototype = table.deepcopy(data.raw["technology"]["solar-energy"])
prototype.name = "solar-appliances-solar-appliances-technology"
prototype.localised_name = { "technology-name.solar-appliances-solar-appliances" }
prototype.localised_description = { "technology-description.solar-appliances-solar-appliances" }
prototype.prerequisites = { "battery", "solar-energy", "advanced-circuit", "electric-energy-distribution-2" }
prototype.effects = { }
prototype.unit.count = 50
prototype.unit.time = 15

data:extend({ prototype })
