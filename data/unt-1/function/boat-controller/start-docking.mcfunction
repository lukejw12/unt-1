# find nearest dock
execute store result score #dock_x temp run data get entity @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] Pos[0] 100
execute store result score #dock_z temp run data get entity @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] Pos[2] 100

# start with dock position
scoreboard players operation @s target_dock_x = #dock_x temp
scoreboard players operation @s target_dock_z = #dock_z temp

# tag as docking
tag @s add unt-1.is_docking

# find valid docking angle
function unt-1:boat-controller/calculate-dock-angle

# determine closest cardinal direction from boat to dock
execute store result score #boat_x_approach temp run data get entity @s Pos[0] 100
execute store result score #boat_z_approach temp run data get entity @s Pos[2] 100
scoreboard players operation #boat_x_approach temp -= #dock_x temp
scoreboard players operation #boat_z_approach temp -= #dock_z temp

# get absolute values to compare
scoreboard players operation #abs_x temp = #boat_x_approach temp
execute if score #abs_x temp matches ..-1 run scoreboard players operation #abs_x temp *= #-1 const
scoreboard players operation #abs_z temp = #boat_z_approach temp
execute if score #abs_z temp matches ..-1 run scoreboard players operation #abs_z temp *= #-1 const

# dock on the side closest to where boat is approaching from (prioritize larger difference)
# if X difference is larger, dock on east or west
execute if score #abs_x temp > #abs_z temp if score #boat_x_approach temp matches ..-1 as @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] at @s unless block ~-1 ~ ~ barrier run scoreboard players remove @e[type=armor_stand,tag=unt-1.boat,tag=unt-1.is_docking,limit=1,sort=nearest] target_dock_x 100
execute if score #abs_x temp > #abs_z temp if score #boat_x_approach temp matches 1.. as @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] at @s unless block ~1 ~ ~ barrier run scoreboard players add @e[type=armor_stand,tag=unt-1.boat,tag=unt-1.is_docking,limit=1,sort=nearest] target_dock_x 100

# if Z difference is larger, dock on north or south
execute if score #abs_z temp >= #abs_x temp if score #boat_z_approach temp matches ..-1 as @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] at @s unless block ~ ~ ~-1 barrier run scoreboard players remove @e[type=armor_stand,tag=unt-1.boat,tag=unt-1.is_docking,limit=1,sort=nearest] target_dock_z 100
execute if score #abs_z temp >= #abs_x temp if score #boat_z_approach temp matches 1.. as @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] at @s unless block ~ ~ ~1 barrier run scoreboard players add @e[type=armor_stand,tag=unt-1.boat,tag=unt-1.is_docking,limit=1,sort=nearest] target_dock_z 100

# if preferred side has barrier, try opposite side
execute if score #abs_x temp > #abs_z temp if score #boat_x_approach temp matches ..-1 as @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] at @s if block ~-1 ~ ~ barrier unless block ~1 ~ ~ barrier run scoreboard players add @e[type=armor_stand,tag=unt-1.boat,tag=unt-1.is_docking,limit=1,sort=nearest] target_dock_x 200
execute if score #abs_x temp > #abs_z temp if score #boat_x_approach temp matches 1.. as @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] at @s if block ~1 ~ ~ barrier unless block ~-1 ~ ~ barrier run scoreboard players remove @e[type=armor_stand,tag=unt-1.boat,tag=unt-1.is_docking,limit=1,sort=nearest] target_dock_x 200
execute if score #abs_z temp >= #abs_x temp if score #boat_z_approach temp matches ..-1 as @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] at @s if block ~ ~ ~-1 barrier unless block ~ ~ ~1 barrier run scoreboard players add @e[type=armor_stand,tag=unt-1.boat,tag=unt-1.is_docking,limit=1,sort=nearest] target_dock_z 200
execute if score #abs_z temp >= #abs_x temp if score #boat_z_approach temp matches 1.. as @e[type=armor_stand,tag=unt-1.dock,limit=1,sort=nearest] at @s if block ~ ~ ~1 barrier unless block ~ ~ ~-1 barrier run scoreboard players remove @e[type=armor_stand,tag=unt-1.boat,tag=unt-1.is_docking,limit=1,sort=nearest] target_dock_z 200

# recalculate proper facing based on which side we actually unt-1.docked on
# check if we offset on X axis (unt-1.docked east or west) boat should face north/south
execute unless score @s target_dock_x = #dock_x temp run scoreboard players set #closest_yaw temp 0
execute unless score @s target_dock_x = #dock_x temp run scoreboard players set #closest_diff temp 999999
execute unless score @s target_dock_x = #dock_x temp run function unt-1:boat-controller/check-angle {angle:0}
execute unless score @s target_dock_x = #dock_x temp run function unt-1:boat-controller/check-angle {angle:180}
execute unless score @s target_dock_x = #dock_x temp run scoreboard players operation @s target_dock_yaw = #closest_yaw temp

# check if we offset on Z axis (unt-1.docked north or south) boat should face east/west
execute unless score @s target_dock_z = #dock_z temp run scoreboard players set #closest_yaw temp 0
execute unless score @s target_dock_z = #dock_z temp run scoreboard players set #closest_diff temp 999999
execute unless score @s target_dock_z = #dock_z temp run function unt-1:boat-controller/check-angle {angle:90}
execute unless score @s target_dock_z = #dock_z temp run function unt-1:boat-controller/check-angle {angle:-90}
execute unless score @s target_dock_z = #dock_z temp run scoreboard players operation @s target_dock_yaw = #closest_yaw temp