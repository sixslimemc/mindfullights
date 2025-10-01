#> mindfullights:_/torches/normal/main
#--------------------
# ../main AS [normal torch]
#--------------------

# calc values
scoreboard players operation *var.torch.light_range _mindfullights = *cache.torch.normal.brightness_range _mindfullights
scoreboard players operation *var.torch.max_light _mindfullights = *cache.torch.normal.max_brightness _mindfullights
scoreboard players operation *var.torch.min_light _mindfullights = *cache.torch.normal.min_brightness _mindfullights
scoreboard players operation *var.torch.water_extinguish _mindfullights = *cache.torch.normal.extinguish_in_water _mindfullights

execute if score *cache.torch.normal.particles _mindfullights matches 1.. run function mindfullights:_/torch/normal/particles/main
