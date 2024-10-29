local prototype = table.deepcopy(data.raw['item']['small-lamp'])
prototype.name = "solar-appliances-solar-lamp-item"
prototype.place_result = "solar-appliances-solar-lamp-entity"

data:extend({prototype})
