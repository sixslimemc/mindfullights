#> mindfullights:_/torches/copper/main
#--------------------
# ../main AS [copper torch]
#--------------------

# calc values
scoreboard players operation *var.torch.light_range _mindfullights = *cache.torch.copper.brightness_range _mindfullights
scoreboard players operation *var.torch.max_light _mindfullights = *cache.torch.copper.max_brightness _mindfullights
scoreboard players operation *var.torch.min_light _mindfullights = *cache.torch.copper.min_brightness _mindfullights
scoreboard players operation *var.torch.water_extinguish _mindfullights = *cache.torch.copper.extinguish_in_water _mindfullights

execute if score *cache.torch.copper.particles _mindfullights matches 1.. run function mindfullights:_/torch/copper/particles/main
