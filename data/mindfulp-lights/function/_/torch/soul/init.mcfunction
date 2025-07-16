#> mindfulp-lights:_/torches/soul/init
#--------------------
# _/check_item AS [unitialized soul_torch item]
#--------------------

tag @s add mindfulp-lights.torch_soul

scoreboard players operation @s _mindfulp-lights.light_range = *cache.torch.soul.brightness_range _mindfulp-lights
scoreboard players operation @s _mindfulp-lights.max_light = *cache.torch.soul.max_brightness _mindfulp-lights
scoreboard players operation @s _mindfulp-lights.min_light = *cache.torch.soul.min_brightness _mindfulp-lights
function mindfulp-lights:_/torch/init
