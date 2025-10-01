#> mindfullights:_/torches/normal/particles/b
#--------------------
# ./main
#--------------------

execute if score *cache.torch.normal.particles _mindfullights matches 1 run particle smoke ~ ~0.5 ~ 0 0.03 0 0 1 normal
execute if score *cache.torch.normal.particles _mindfullights matches 2.. run particle smoke ~ ~0.5 ~ 0 0.03 0 0 1 force

execute if score @s mindfullights.burn_time > @s mindfullights.burnout_threshold store result score @s _mindfullights.particles_b run return run random value 20..40

scoreboard players operation *x _mindfullights = @s mindfullights.burnout_threshold
scoreboard players operation *x _mindfullights /= *2 _mindfullights

execute if score @s mindfullights.burn_time > *x _mindfullights store result score @s _mindfullights.particles_b run return run random value 8..15

execute store result score @s _mindfullights.particles_b run random value 4..10