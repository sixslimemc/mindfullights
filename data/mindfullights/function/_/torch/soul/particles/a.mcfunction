#> mindfullights:_/torches/soul/particles/a
#--------------------
# ./main
#--------------------

execute if score *cache.torch.normal.particles _mindfullights matches 1 run particle soul_fire_flame ~ ~0.5 ~ 0 0.03 0 0.003 1 normal
execute if score *cache.torch.normal.particles _mindfullights matches 2.. run particle soul_fire_flame ~ ~0.5 ~ 0 0.03 0 0.003 1 force

execute if score @s mindfullights.burn_time > @s mindfullights.burnout_threshold store result score @s _mindfullights.particles_a run return run random value 40..50

scoreboard players operation *x _mindfullights = @s mindfullights.burnout_threshold
scoreboard players operation *x _mindfullights /= *2 _mindfullights

execute if score @s mindfullights.burn_time > *x _mindfullights store result score @s _mindfullights.particles_a run return run random value 60..80

execute store result score @s _mindfullights.particles_a run random value 120..180