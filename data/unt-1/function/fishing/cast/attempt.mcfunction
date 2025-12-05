#execute if entity @s[tag=unt-1.fishing_complete_cooldown] run return fail

execute if entity @s[tag=unt-1.near_zone,tag=!unt-1.fishing] run function unt-1:fishing/cast/start

execute if entity @s[tag=unt-1.fishing] run function unt-1:fishing/reel/attempt