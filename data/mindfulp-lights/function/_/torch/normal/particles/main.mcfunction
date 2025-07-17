#> mindfulp-lights:_/torches/normal/particles/main
#--------------------
# ../main
#--------------------

execute if score @s _mindfulp-lights.particles_a matches ..0 run function mindfulp-lights:_/torch/normal/particles/a
execute if score @s _mindfulp-lights.particles_b matches ..0 run function mindfulp-lights:_/torch/normal/particles/b

scoreboard players remove @s _mindfulp-lights.particles_a 1
scoreboard players remove @s _mindfulp-lights.particles_b 1