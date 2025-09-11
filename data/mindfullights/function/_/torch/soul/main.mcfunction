#> mindfullights:_/torches/soul/main
#--------------------
# ../main AS [soul torch]
#--------------------

# calc values
scoreboard players operation *var.torch.light_range _mindfullights = *cache.torch.soul.brightness_range _mindfullights
scoreboard players operation *var.torch.max_light _mindfullights = *cache.torch.soul.max_brightness _mindfullights
scoreboard players operation *var.torch.min_light _mindfullights = *cache.torch.soul.min_brightness _mindfullights
scoreboard players operation *var.torch.water_extinguish _mindfullights = *cache.torch.soul.extinguish_in_water _mindfullights

execute if score *cache.torch.soul.particles _mindfullights matches 1.. run function mindfullights:_/torch/soul/particles/main