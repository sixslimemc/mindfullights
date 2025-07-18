#> mindfulp-lights:_/torches/soul/main
#--------------------
# ../main AS [soul torch]
#--------------------

# calc values
scoreboard players operation *var.torch.light_range _mindfulp-lights = *cache.torch.soul.brightness_range _mindfulp-lights
scoreboard players operation *var.torch.max_light _mindfulp-lights = *cache.torch.soul.max_brightness _mindfulp-lights
scoreboard players operation *var.torch.min_light _mindfulp-lights = *cache.torch.soul.min_brightness _mindfulp-lights
scoreboard players operation *var.torch.water_extinguish _mindfulp-lights = *cache.torch.soul.extinguish_in_water _mindfulp-lights

execute if score *cache.torch.soul.particles _mindfulp-lights matches 1.. run function mindfulp-lights:_/torch/soul/particles/main