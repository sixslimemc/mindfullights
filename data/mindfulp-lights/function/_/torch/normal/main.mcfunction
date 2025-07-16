#> mindfulp-lights:_/torches/normal/main
#--------------------
# ../main AS [normal torch]
#--------------------

# calc values
scoreboard players operation *var.torch.light_range _mindfulp-lights = *cache.torch.normal.brightness_range _mindfulp-lights
scoreboard players operation *var.torch.max_light _mindfulp-lights = *cache.torch.normal.max_brightness _mindfulp-lights
scoreboard players operation *var.torch.min_light _mindfulp-lights = *cache.torch.normal.min_brightness _mindfulp-lights