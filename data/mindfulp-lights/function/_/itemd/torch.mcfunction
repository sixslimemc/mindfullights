#> mindfulp-lights:_/itemd/torch
#--------------------
# ./itemd
#--------------------

data modify entity @s item.components."minecraft:attribute_modifiers" append value {id:"mindfulp-lights:disallow_torch_placing",type:"minecraft:block_interaction_range",amount:-100,operation:"add_multiplied_total",display:{type:hidden}, slot:"mainhand"}
data modify entity @s item.components."minecraft:attribute_modifiers" append value {id:"mindfulp-lights:disallow_torch_placing",type:"minecraft:block_interaction_range",amount:-100,operation:"add_multiplied_total",display:{type:hidden}, slot:"offhand"}