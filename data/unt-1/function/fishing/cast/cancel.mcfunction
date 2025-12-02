tag @s remove unt-1.fishing
title @s clear
scoreboard players reset @s unt-1.fishing_tick
scoreboard players reset @s unt-1.fishing_progress
scoreboard players reset @s unt-1.fishing_target
scoreboard players reset @s unt-1.fishing_zone_size
execute as @e[type=item_display,tag=boat-display,limit=1,sort=nearest] run data modify entity @s item.components."minecraft:item_model" set value "unt-1:boat-type1"
