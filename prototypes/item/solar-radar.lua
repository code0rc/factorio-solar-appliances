local prototype = table.deepcopy(data.raw['item']['radar'])
prototype.name = "solar-appliances-solar-radar-item"
prototype.place_result = "solar-appliances-solar-radar-entity"

data:extend({prototype})
