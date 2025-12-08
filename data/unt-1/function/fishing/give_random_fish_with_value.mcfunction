execute store result score #random unt-1.temp run random value 0..1

execute if entity @s[tag=unt-1.caught_trophy] if score #random unt-1.temp matches 0 run function unt-1:fishing/values/calculate_cod_trophy_value
execute if entity @s[tag=unt-1.caught_trophy] if score #random unt-1.temp matches 1 run function unt-1:fishing/values/calculate_blue_mackerel_trophy_value

execute unless entity @s[tag=unt-1.caught_trophy] if score #random unt-1.temp matches 0 run function unt-1:fishing/values/calculate_cod_value
execute unless entity @s[tag=unt-1.caught_trophy] if score #random unt-1.temp matches 1 run function unt-1:fishing/values/calculate_blue_mackerel_value

execute if score #random unt-1.temp matches 0 run function unt-1:fishing/values/place/cod_with_value
execute if score #random unt-1.temp matches 1 run function unt-1:fishing/values/place/blue_mackerel_with_value

execute if score @s unt-1.placement_success matches 0 if score #random unt-1.temp matches 0 if entity @s[tag=unt-1.caught_trophy] run function unt-1:fishing/values/calculate_blue_mackerel_trophy_value
execute if score @s unt-1.placement_success matches 0 if score #random unt-1.temp matches 0 unless entity @s[tag=unt-1.caught_trophy] run function unt-1:fishing/values/calculate_blue_mackerel_value
execute if score @s unt-1.placement_success matches 0 if score #random unt-1.temp matches 0 run function unt-1:fishing/values/place/blue_mackerel_with_value

execute if score @s unt-1.placement_success matches 0 if score #random unt-1.temp matches 1 if entity @s[tag=unt-1.caught_trophy] run function unt-1:fishing/values/calculate_cod_trophy_value
execute if score @s unt-1.placement_success matches 0 if score #random unt-1.temp matches 1 unless entity @s[tag=unt-1.caught_trophy] run function unt-1:fishing/values/calculate_cod_value
execute if score @s unt-1.placement_success matches 0 if score #random unt-1.temp matches 1 run function unt-1:fishing/values/place/cod_with_value

execute if score @s unt-1.placement_success matches 0 run tellraw @s {"text":"⚠ Inventory full! The fish got away...","color":"red"}
execute if score @s unt-1.placement_success matches 0 run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 0.8

tag @s remove unt-1.caught_trophy