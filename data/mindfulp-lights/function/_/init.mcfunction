#> mindfulp-lights:_/init
#--------------------
# @LOAD
#--------------------

data modify storage mindfulp-lights:config torch.normal set value {burn_time:9600, burnout_percent:0.5f, brightness:{min:5, max:14}, burn_time_per_additional:1200, extinguish_in_water:true}
data modify storage mindfulp-lights:config torch.soul set value {burn_time:24000, burnout_percent:0.5f, brightness:{min:4, max:10}, burn_time_per_additional:4200, extinguish_in_water:false}

data modify storage mindfulp-lights:config campfire.normal set value {start_unlit:true}
data modify storage mindfulp-lights:config campfire.soul set value {start_unlit:true}

data modify storage mindfulp-lights:config system.torch.require_player_thrown set value true
