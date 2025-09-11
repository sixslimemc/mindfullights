#> mindfullights:_/config_cache/threshold
#--------------------
# ./normal_or_soul
#--------------------

$execute store result score *cache.torch.$(type).burnout_threshold _mindfullights run data get storage mindfullights:config torch.$(type).burn_time $(percent)
$execute store result score *cache.torch.$(type).burnout_per_add _mindfullights run data get storage mindfullights:config torch.$(type).time_per_add $(percent)