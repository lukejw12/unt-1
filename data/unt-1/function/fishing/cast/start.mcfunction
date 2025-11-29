execute unless items entity @s container.* *[custom_data~{unt-1.basic_fishing_rod:1b}] run return run tellraw @s {"text":"You need a fishing rod!","color":"red"}

tag @s add unt-1.fishing
scoreboard players set @s unt-1.fishing_progress 0
scoreboard players set @s unt-1.fishing_tick 0

scoreboard players set @s unt-1.fishing_misses 0
scoreboard players set @s unt-1.fishing_time 0
scoreboard players set @s unt-1.fishing_grace 3

scoreboard players set @s unt-1.arrow_pos 0
scoreboard players set @s unt-1.arrow_direction 1

function unt-1:fishing/set_random_target

playsound minecraft:entity.fishing_bobber.splash player @s ~ ~ ~ 1 1
tellraw @s {"text":"Fishing started! Press [Space] when the arrow hits the target!","color":"green"}