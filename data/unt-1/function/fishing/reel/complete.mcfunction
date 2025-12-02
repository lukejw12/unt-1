scoreboard players operation #fishing_seconds unt-1.temp = @s unt-1.fishing_time
scoreboard players operation #fishing_seconds unt-1.temp /= #20 unt-1.const

scoreboard players set #speed_bonus unt-1.temp 0
execute if score #fishing_seconds unt-1.temp matches ..9 run scoreboard players set #speed_bonus unt-1.temp 10
execute if score #fishing_seconds unt-1.temp matches ..9 run scoreboard players operation #speed_bonus unt-1.temp -= #fishing_seconds unt-1.temp
execute if score #fishing_seconds unt-1.temp matches ..9 run scoreboard players operation #speed_bonus unt-1.temp /= #2 unt-1.const
execute if score #fishing_seconds unt-1.temp matches ..9 run scoreboard players operation #speed_bonus unt-1.temp *= #5 unt-1.const

scoreboard players operation #miss_penalty unt-1.temp = @s unt-1.fishing_misses
scoreboard players operation #miss_penalty unt-1.temp *= #5 unt-1.const

function unt-1:fishing/give_random_fish_with_value

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5
setblock ~ ~ ~ stone
execute at @e[tag=unt-1.fishing] at @e[type=marker,tag=unt-1.fishing_zone,limit=1,sort=nearest] run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0.1 0 0.1 10 force
tag @s add unt-1.fishing_complete_cooldown

function unt-1:fishing/cast/cancel