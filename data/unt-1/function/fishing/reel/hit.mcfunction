scoreboard players add @s unt-1.fishing_progress 20

playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
particle happy_villager ~ ~1 ~ 0.3 0.3 0.3 0 5

scoreboard players set @s unt-1.fishing_cooldown 10

execute if score @s unt-1.fishing_progress matches 100.. run function unt-1:fishing/reel/complete