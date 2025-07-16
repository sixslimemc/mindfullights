#> mindfulp-lights:_/config_cache/normal_or_soul
#--------------------
# ./do
#--------------------

$execute store result score *cache.campfire.$(type).start_unlit _mindfulp-lights run data get storage mindfulp-lights:config campfire.$(type).start_unlit

$execute store result score *cache.torch.$(type).burn_time _mindfulp-lights run data get storage mindfulp-lights:config torch.$(type).burn_time

$data merge storage mindfulp-lights:_ {x:{type:"$(type)"}}
$data modify storage mindfulp-lights:_ x.percent set from storage mindfulp-lights:config torch.$(type).burnout_percent

function mindfulp-lights:_/config_cache/threshold with storage mindfulp-lights:_ x

$execute store result score *cache.torch.$(type).max_brightness _mindfulp-lights run data get storage mindfulp-lights:config torch.$(type).brightness.max
$execute store result score *cache.torch.$(type).min_brightness _mindfulp-lights run data get storage mindfulp-lights:config torch.$(type).brightness.min

# brightness range
$scoreboard players operation *x _mindfulp-lights = *cache.torch.$(type).max_brightness _mindfulp-lights
$scoreboard players operation *x _mindfulp-lights -= *cache.torch.$(type).min_brightness _mindfulp-lights
scoreboard players add *x _mindfulp-lights 1
$scoreboard players operation *cache.torch.$(type).brightness_range = *x _mindfulp-lights

$execute store result score *cache.torch.$(type).time_per_add _mindfulp-lights run data get storage mindfulp-lights:config torch.$(type).burn_time_per_additional
$execute store result score *cache.torch.$(type).extinguish_in_water _mindfulp-lights run data get storage mindfulp-lights:config torch.$(type).extinguish_in_water