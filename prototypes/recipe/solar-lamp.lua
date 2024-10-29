local prototype = table.deepcopy(data.raw['recipe']['small-lamp'])
prototype.name = "solar-appliances-solar-lamp-recipe"
prototype.localised_name = { "recipe-name.solar-appliances-solar-lamp" }
prototype.enabled = false
prototype.results = {
    { type = "item", name = "solar-appliances-solar-lamp-item", amount = 1 },
}

prototype.main_product = nil
prototype.result_count = nil

table.insert(prototype.ingredients, { type = "item", name = "solar-panel", amount = 1 })
table.insert(prototype.ingredients, { type = "item", name = "battery", amount = 2 })
table.insert(prototype.ingredients, { type = "item", name = "advanced-circuit", amount = 1 })

data:extend({ prototype })
