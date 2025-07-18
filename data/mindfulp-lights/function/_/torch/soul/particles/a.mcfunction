#> mindfulp-lights:_/torches/soul/particles/a
#--------------------
# ./main
#--------------------

execute if score *cache.torch.normal.particles _mindfulp-lights matches 1 run particle soul_fire_flame ~ ~0.5 ~ 0 0.03 0 0 1 normal
execute if score *cache.torch.normal.particles _mindfulp-lights matches 2.. run particle soul_fire_flame ~ ~0.5 ~ 0 0.03 0 0 1 force

execute if score @s mindfulp-lights.burn_time > @s mindfulp-lights.burnout_threshold store result score @s _mindfulp-lights.particles_a run return run random value 40..50

scoreboard players operation *x _mindfulp-lights = @s mindfulp-lights.burnout_threshold
scoreboard players operation *x _mindfulp-lights /= *2 _mindfulp-lights

execute if score @s mindfulp-lights.burn_time > *x _mindfulp-lights store result score @s _mindfulp-lights.particles_a run return run random value 60..80

execute store result score @s _mindfulp-lights.particles_a run random value 100..140