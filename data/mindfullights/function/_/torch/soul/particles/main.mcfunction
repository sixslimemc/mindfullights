#> mindfullights:_/torches/soul/particles/main
#--------------------
# ../main
#--------------------

execute if score @s _mindfullights.particles_a matches ..0 run function mindfullights:_/torch/soul/particles/a
execute if score @s _mindfullights.particles_b matches ..0 run function mindfullights:_/torch/soul/particles/b

scoreboard players remove @s _mindfullights.particles_a 1
scoreboard players remove @s _mindfullights.particles_b 1