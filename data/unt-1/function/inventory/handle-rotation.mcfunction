# Move fish to temp slot to preserve data
item replace entity @s container.8 from entity @s weapon.offhand

# Store ONLY the data we want to preserve (NOT the blocking tags)
execute store result storage unt-1:temp fish_value int 1 run data get entity @s Inventory[{Slot:8b}].components."minecraft:custom_data"."unt-1.fish_value"
data modify storage unt-1:temp fish_condition set from entity @s Inventory[{Slot:8b}].components."minecraft:custom_data"."unt-1.condition"
data modify storage unt-1:temp fish_lore set from entity @s Inventory[{Slot:8b}].components."minecraft:lore"
data modify storage unt-1:temp fish_name set from entity @s Inventory[{Slot:8b}].components."minecraft:custom_name"
data modify storage unt-1:temp item_type set from entity @s Inventory[{Slot:8b}].components."minecraft:custom_data"."unt-1.item_type"
data modify storage unt-1:temp rotation set from entity @s Inventory[{Slot:8b}].components."minecraft:custom_data"."unt-1.rotation"

# DO NOT store blocking tags - they will be set fresh by the rotation functions

# Defaults
execute unless data storage unt-1:temp fish_value run data modify storage unt-1:temp fish_value set value 0
execute unless data storage unt-1:temp fish_condition run data modify storage unt-1:temp fish_condition set value "fresh"

# Clear temp slot
item replace entity @s container.8 with air

# Do rotation based on stored type and rotation
execute if data storage unt-1:temp {item_type:"cod",rotation:0b} run function unt-1:inventory/rotate/cod_0_to_90 with storage unt-1:temp
execute if data storage unt-1:temp {item_type:"cod",rotation:1b} run function unt-1:inventory/rotate/cod_90_to_180 with storage unt-1:temp
execute if data storage unt-1:temp {item_type:"cod",rotation:2b} run function unt-1:inventory/rotate/cod_180_to_270 with storage unt-1:temp
execute if data storage unt-1:temp {item_type:"cod",rotation:3b} run function unt-1:inventory/rotate/cod_270_to_0 with storage unt-1:temp

execute if data storage unt-1:temp {item_type:"blue_mackerel",rotation:0b} run function unt-1:inventory/rotate/blue_mackerel_0_to_90 with storage unt-1:temp
execute if data storage unt-1:temp {item_type:"blue_mackerel",rotation:1b} run function unt-1:inventory/rotate/blue_mackerel_90_to_180 with storage unt-1:temp
execute if data storage unt-1:temp {item_type:"blue_mackerel",rotation:2b} run function unt-1:inventory/rotate/blue_mackerel_180_to_270 with storage unt-1:temp
execute if data storage unt-1:temp {item_type:"blue_mackerel",rotation:3b} run function unt-1:inventory/rotate/blue_mackerel_270_to_0 with storage unt-1:temp

# Give button back
function unt-1:inventory/give-rotate-button