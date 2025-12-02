execute as @e[type=marker,tag=unt-1.fishing_zone] at @s run function unt-1:fishing/zone/display-particles
execute at @e[type=marker,tag=unt-1.fishing_zone] unless entity @a[distance=..1.5] as @a[tag=unt-1.near_zone] run function unt-1:fishing/cast/cancel
execute as @a at @s run function unt-1:fishing/zone/detect-player

execute as @a[tag=unt-1.fishing] run function unt-1:fishing/reel/tick

execute as @a[tag=unt-1.fishing_complete_cooldown] run scoreboard players add @s unt-1.cast_cooldown 1
execute as @a[tag=unt-1.fishing_complete_cooldown,scores={unt-1.cast_cooldown=30..}] run function unt-1:fishing/clear_cast_cooldown
execute as @a[scores={unt-1.cast_cooldown=30..}] run scoreboard players reset @s unt-1.cast_cooldown

execute as @a[predicate=unt-1:fishing/jump,tag=!unt-1.space_pressed] run function unt-1:fishing/handle_space_press

execute as @a[tag=unt-1.space_pressed] unless predicate unt-1:fishing/jump run tag @s remove unt-1.space_pressed