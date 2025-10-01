#> mindfullights:_/config_cache/dynamic
#--------------------
# ./do
#--------------------

$execute store result score *cache.campfire.$(type).start_unlit _mindfullights run data get storage mindfullights:config campfire.$(type).start_unlit

$execute store result score *cache.torch.$(type).burn_time _mindfullights run data get storage mindfullights:config torch.$(type).burn_time

$data merge storage mindfullights:_ {x:{type:"$(type)"}}
$data modify storage mindfullights:_ x.percent set from storage mindfullights:config torch.$(type).burnout_percent

function mindfullights:_/config_cache/threshold with storage mindfullights:_ x

$execute store result score *cache.torch.$(type).max_brightness _mindfullights run data get storage mindfullights:config torch.$(type).brightness.max
$execute store result score *cache.torch.$(type).min_brightness _mindfullights run data get storage mindfullights:config torch.$(type).brightness.min

# brightness range
$scoreboard players operation *x _mindfullights = *cache.torch.$(type).max_brightness _mindfullights
$scoreboard players operation *x _mindfullights -= *cache.torch.$(type).min_brightness _mindfullights
$scoreboard players operation *cache.torch.$(type).brightness_range _mindfullights = *x _mindfullights

$execute store result score *cache.torch.$(type).time_per_add _mindfullights run data get storage mindfullights:config torch.$(type).burn_time_per_additional
$execute store result score *cache.torch.$(type).extinguish_in_water _mindfullights run data get storage mindfullights:config torch.$(type).extinguish_in_water
$execute store result score *cache.torch.$(type).particles _mindfullights run data get storage mindfullights:config torch.$(type).particles