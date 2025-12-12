
item replace entity @s container.8 from entity @s weapon.offhand

execute store result storage unt-1:temp fish_value int 1 run data get entity @s Inventory[{Slot:8b}].components."minecraft:custom_data"."unt-1.fish_value"
data modify storage unt-1:temp fish_condition set from entity @s Inventory[{Slot:8b}].components."minecraft:custom_data"."unt-1.condition"
data modify storage unt-1:temp fish_lore set from entity @s Inventory[{Slot:8b}].components."minecraft:lore"
data modify storage unt-1:temp fish_name set from entity @s Inventory[{Slot:8b}].components."minecraft:custom_name"
data modify storage unt-1:temp item_type set from entity @s Inventory[{Slot:8b}].components."minecraft:custom_data"."unt-1.item_type"
execute if data storage unt-1:temp {item_type:"cod"} run data modify storage unt-1:temp fish_display set value "Cod"
execute if data storage unt-1:temp {item_type:"blue_mackerel"} run data modify storage unt-1:temp fish_display set value "Blue Mackerel"
execute store result score #current_rotation unt-1.temp run data get entity @s Inventory[{Slot:8b}].components."minecraft:custom_data"."unt-1.rotation"

item replace entity @s container.8 with air

scoreboard players add #current_rotation unt-1.temp 1
execute if score #current_rotation unt-1.temp matches 4.. run scoreboard players set #current_rotation unt-1.temp 0

execute store result storage unt-1:temp rotation int 1 run scoreboard players get #current_rotation unt-1.temp

function unt-1:inventory/rotation/rotate_fish with storage unt-1:temp

function unt-1:inventory/give_rotate_button

playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 0.3 1.8