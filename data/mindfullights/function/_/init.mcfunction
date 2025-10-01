#> mindfullights:_/init
#--------------------
# @LOAD
#--------------------

data modify storage mindfullights:config torch.normal set value {burn_time:9600, burnout_percent:0.5f, brightness:{min:5, max:14}, burn_time_per_additional:1200, extinguish_in_water:true, particles:1}
data modify storage mindfullights:config torch.soul set value {burn_time:24000, burnout_percent:0.5f, brightness:{min:4, max:10}, burn_time_per_additional:4200, extinguish_in_water:false, particles:1}
data modify storage mindfullights:config torch.copper set value {burn_time:10800, burnout_percent:1.0f, brightness:{min:1, max:14}, burn_time_per_additional:1320, extinguish_in_water:true, particles:1}

data modify storage mindfullights:config campfire.normal set value {start_unlit:true}
data modify storage mindfullights:config campfire.soul set value {start_unlit:true}
