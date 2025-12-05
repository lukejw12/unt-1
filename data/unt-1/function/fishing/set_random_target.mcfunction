execute store result score @s unt-1.target_size run random value 0..1

tag @s remove unt-1.trophy_target

execute if score @s unt-1.fishing_progress matches 0 store result score @s unt-1.is_trophy_target run random value 0..9
execute if score @s unt-1.fishing_progress matches 0 if score @s unt-1.is_trophy_target matches 0 run tag @s add unt-1.trophy_target

execute if entity @s[tag=unt-1.trophy_target] run tellraw @a[tag=unt-1.fishing] [{"text":"[DEBUG] TROPHY TARGET SPAWNED!","color":"gold"}]
execute unless entity @s[tag=unt-1.trophy_target] run tellraw @a[tag=unt-1.fishing] [{"text":"[DEBUG] Normal target","color":"green"}]

execute if score @s unt-1.target_size matches 0 store result score @s unt-1.target_pos run random value 0..27

execute if score @s unt-1.target_size matches 1 store result score @s unt-1.target_pos run random value 0..25