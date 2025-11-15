# check if still holding space if not, cancel docking
execute unless entity @a[predicate=unt-1:boat-movement/dock] run tag @s remove unt-1.is_docking
execute unless entity @a[predicate=unt-1:boat-movement/dock] run return 0

# smooth rotation towards target angle
execute store result score @s current_yaw run data get entity @s Rotation[0] 1
scoreboard players operation #yaw_diff temp = @s target_dock_yaw
scoreboard players operation #yaw_diff temp -= @s current_yaw

# handle rotation wrapping
execute if score #yaw_diff temp matches 180.. run scoreboard players remove #yaw_diff temp 360
execute if score #yaw_diff temp matches ..-180 run scoreboard players add #yaw_diff temp 360

# rotate smoothly (5 degrees per tick)
execute if score #yaw_diff temp matches 5.. run rotate @s ~5 ~
execute if score #yaw_diff temp matches ..-5 run rotate @s ~-5 ~
execute if score #yaw_diff temp matches -4..4 store result entity @s Rotation[0] float 1 run scoreboard players get @s target_dock_yaw

# sync item display rotation
data modify storage temp rotation set from entity @s Rotation
execute on passengers if entity @s[type=item_display] run data modify entity @s Rotation set from storage temp rotation

# get CURRENT boat position every tick
execute store result score #boat_x temp run data get entity @s Pos[0] 100
execute store result score #boat_z temp run data get entity @s Pos[2] 100

# calculate direction to dock
scoreboard players operation #dx temp = @s target_dock_x
scoreboard players operation #dx temp -= #boat_x temp
scoreboard players operation #dz temp = @s target_dock_z
scoreboard players operation #dz temp -= #boat_z temp

# calculate distance squared
scoreboard players operation #distance temp = #dx temp
scoreboard players operation #distance temp *= #dx temp
scoreboard players set #temp_dz temp 0
scoreboard players operation #temp_dz temp = #dz temp
scoreboard players operation #temp_dz temp *= #dz temp
scoreboard players operation #distance temp += #temp_dz temp

# stop if within 50 units (0.5 blocks) and snap to position
execute if score #distance temp matches ..2500 run tag @s add unt-1.docked
execute if score #distance temp matches ..2500 run tag @s remove unt-1.is_docking
execute if score #distance temp matches ..2500 store result entity @s Pos[0] double 0.01 run scoreboard players get @s target_dock_x
execute if score #distance temp matches ..2500 store result entity @s Pos[2] double 0.01 run scoreboard players get @s target_dock_z
execute if score #distance temp matches ..2500 run data modify entity @s Motion[0] set value 0.0
execute if score #distance temp matches ..2500 run data modify entity @s Motion[2] set value 0.0

# otherwise move towards dock (faster speed)
execute unless score #distance temp matches ..2500 store result entity @s Motion[0] double 0.0002 run scoreboard players get #dx temp
execute unless score #distance temp matches ..2500 store result entity @s Motion[2] double 0.0002 run scoreboard players get #dz temp