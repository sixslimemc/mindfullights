#> mindfulp-lights:_/config_cache/normal_or_soul
#--------------------
# ./do
#--------------------

$execute store result score *cache.campfire.$(type).start_unlit _mindfulp-lights run data get storage mindfulp-lights:config campfire.$(type).start_unlit

$execute store result score *cache.torch.$(type).burn_time _mindfulp-lights run data get storage mindfulp-lights:config torch.$(type).burn_time

$data merge storage mindfulp-lights:_ {x:{type:"$(type)"}}
$data modify storage mindfulp-lights:_ x.percent set from storage mindfulp-lights:config torch.$(type).burnout_percent

function mindfulp-lights:_/config_cache/threshold with storage mindfulp-lights:_ x

