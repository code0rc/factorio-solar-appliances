local prototype = table.deepcopy(data.raw["technology"]["radar"])
prototype.name = "solar-appliances-solar-radar-technology"
prototype.localised_name = { "technology-name.solar-appliances-solar-radar" }
prototype.localised_description = { "technology-description.solar-appliances-solar-radar" }
prototype.prerequisites = { "radar", "solar-appliances-solar-appliances-technology" }
prototype.effects = {
    {
        type = "unlock-recipe",
        recipe = "solar-appliances-solar-radar-recipe"
    }
}
prototype.unit = table.deepcopy(data.raw["technology"]["solar-appliances-solar-appliances-technology"]["unit"])

data:extend({ prototype })