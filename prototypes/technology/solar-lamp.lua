local prototype = table.deepcopy(data.raw["technology"]["lamp"])
prototype.name = "solar-appliances-solar-lamp-technology"
prototype.localised_name = { "technology-name.solar-appliances-solar-lamp" }
prototype.localised_description = { "technology-description.solar-appliances-solar-lamp" }
prototype.prerequisites = { "lamp", "solar-appliances-solar-appliances-technology" }
prototype.effects = {
    {
        type = "unlock-recipe",
        recipe = "solar-appliances-solar-lamp-recipe"
    }
}
prototype.unit = table.deepcopy(data.raw["technology"]["solar-appliances-solar-appliances-technology"]["unit"])

data:extend({ prototype })
