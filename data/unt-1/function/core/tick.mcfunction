execute as @a at @s run function unt-1:player-relative/location-tick
function unt-1:fishing/tick
execute as @a[tag=testing_arrow] run function unt-1:test



execute as @a[scores={unt-1.headlight=1},limit=1] at @s unless biome ^ ^ ^3 unt-1:foggy-plains run fillbiome ~5 ~5 ~5 ~-5 ~-3 ~-5 unt-1:foggy-plains
execute as @a[scores={unt-1.headlight=0},limit=1] at @s if biome ~ ~ ~ unt-1:foggy-plains run fillbiome ~10 ~5 ~10 ~-10 ~-3 ~-10 plains


execute if entity @a[scores={unt-1.headlight=1},limit=1] as @a[scores={unt-1.headlight=1}] at @s unless entity @e[type=wither] run summon wither ~ 300 ~ {Invulnerable:1b,Silent:1b,NoAI:1b,PersistenceRequired:1b,Tags:["headlight_wither"],CustomName:'',active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}]}

execute as @a[scores={unt-1.headlight=1}] at @s run tp @e[type=wither,tag=headlight_wither,limit=1,sort=nearest] ~ 300 ~

execute as @a[scores={unt-1.headlight=1}] at @s run particle entity_effect{color:[0.99608,0.99216,0.00392,1.0]} ~ ~ ~ 0 0 0 0 1 force @s
execute as @a[scores={unt-1.headlight=0}] at @s run particle entity_effect{color:[0.99608,0.99216,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force @s
execute as @a[scores={unt-1.headlight=0}] at @s run title @s clear
