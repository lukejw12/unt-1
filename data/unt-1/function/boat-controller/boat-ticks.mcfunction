# movement controls check predicate once, branch to functions
execute if entity @a[predicate=unt-1:boat-movement/forwards] run function unt-1:boat-controller/boat-apply-motion {speed:0.15}
execute if entity @a[predicate=unt-1:boat-movement/backwards] run function unt-1:boat-controller/boat-apply-motion {speed:-0.1}
execute if entity @a[predicate=unt-1:boat-movement/left] run rotate @s ~-5 ~
execute if entity @a[predicate=unt-1:boat-movement/right] run rotate @s ~5 ~
# sync display rotation
execute on passengers if entity @s[type=item_display] run data modify entity @s Rotation set from entity @e[type=armor_stand,tag=unt-1.boat,limit=1,sort=nearest] Rotation

# camera zoom (only for players)
execute as @a at @s if entity @e[type=armor_stand,tag=unt-1.boat,distance=..5] run function unt-1:boat-controller/camera-zoom

# buoyancy
execute if block ~ ~1.45 ~ water run data modify entity @s Motion[1] set value 0.019

# docking system
execute if entity @s[tag=unt-1.unt-1.docked] unless entity @e[type=armor_stand,tag=unt-1.dock,distance=..1] run tag @s remove unt-1.unt-1.docked
execute if entity @s[tag=unt-1.is_docking,tag=!unt-1.unt-1.docked] run return run function unt-1:boat-controller/process-docking
execute if entity @a[predicate=unt-1:boat-movement/dock] if entity @e[type=armor_stand,tag=unt-1.dock,distance=..4] run function unt-1:boat-controller/start-docking