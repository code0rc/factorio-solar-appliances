local prototype = table.deepcopy(data.raw['radar']['radar'])
prototype.name = "solar-appliances-solar-radar-entity"
prototype.energy_source = { type = "void" }
prototype.localised_name = { "entity-name.solar-appliances-solar-radar" }

if prototype.minable then
    prototype.minable.result = nil
    prototype.minable.results = {
        { type = "item", name = "solar-appliances-solar-lamp-item", amount = 1 }
    }
end

data:extend({ prototype })
