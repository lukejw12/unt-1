execute if entity @s[tag=!unt-1.fishing] if entity @e[type=marker,tag=unt-1.fishing_zone,distance=..1.5] run title @s actionbar {"text":"Press [Space] to cast","color":"aqua"}

execute if entity @e[type=marker,tag=unt-1.fishing_zone,distance=..1.5] run tag @s add unt-1.near_zone
execute unless entity @e[type=marker,tag=unt-1.fishing_zone,distance=..1.5] run tag @s remove unt-1.near_zone