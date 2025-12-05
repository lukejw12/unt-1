scoreboard players add @s unt-1.fishing_progress 20

execute if entity @s[tag=unt-1.trophy_target] run tag @a[tag=unt-1.fishing,limit=1] add unt-1.caught_trophy

execute if entity @s[tag=unt-1.trophy_target] run scoreboard players set @s unt-1.fishing_progress 100

execute unless entity @s[tag=unt-1.trophy_target] run function unt-1:fishing/set_random_target

execute if score @s unt-1.fishing_progress matches 100.. run function unt-1:fishing/reel/complete