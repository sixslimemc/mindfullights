#> mindfulp-lights:_/itemd/itemd
#--------------------
# <!> itemd:itemd
#--------------------

execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0

execute if items entity @s container.0 minecraft:campfire run return run data merge entity @s {item:{components:{"minecraft:block_state":{lit:"false"}}}}