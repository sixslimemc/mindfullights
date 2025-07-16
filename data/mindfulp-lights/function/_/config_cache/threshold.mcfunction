#> mindfulp-lights:_/config_cache/threshold
#--------------------
# ./normal_or_soul
#--------------------

$execute store result score *cache.torch.$(type).burnout_threshold _mindfulp-lights run data get storage mindfulp-lights:config torch.$(type).burn_time $(percent)
$execute store result score *cache.torch.$(type).burnout_per_add _mindfulp-lights run data get storage mindfulp-lights:config torch.$(type).time_per_add $(percent)