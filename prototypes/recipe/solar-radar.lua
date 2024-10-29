local prototype = table.deepcopy(data.raw['recipe']['radar'])
prototype.name = "solar-appliances-solar-radar-recipe"
prototype.localised_name = { "recipe-name.solar-appliances-solar-radar" }
prototype.enabled = false
prototype.results = {
    { type = "item", name = "solar-appliances-solar-radar-item", amount = 1 },
}

prototype.main_product = nil
prototype.result_count = nil

table.insert(prototype.ingredients, { type = "item", name = "solar-panel", amount = 10 })
table.insert(prototype.ingredients, { type = "item", name = "battery", amount = 40 })
table.insert(prototype.ingredients, { type = "item", name = "advanced-circuit", amount = 5 })

data:extend({ prototype })
