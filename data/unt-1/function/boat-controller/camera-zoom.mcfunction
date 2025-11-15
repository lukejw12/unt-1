# store head pitch
execute store result score @s unt-1.head_pitch run data get entity @s Rotation[1] 1

# calculate target camera distance
scoreboard players operation @s unt-1.target_camera = @s unt-1.head_pitch
execute if score @s unt-1.target_camera matches ..-1 run scoreboard players set @s unt-1.target_camera 0
execute if score @s unt-1.target_camera matches 91.. run scoreboard players set @s unt-1.target_camera 90
scoreboard players operation @s unt-1.target_camera *= #4 unt-1.const
scoreboard players add @s unt-1.target_camera 400

# smooth interpolation
scoreboard players operation @s unt-1.camera_diff = @s unt-1.target_camera
scoreboard players operation @s unt-1.camera_diff -= @s unt-1.camera_dist
scoreboard players operation @s unt-1.camera_diff /= #5 unt-1.const
scoreboard players operation @s unt-1.camera_dist += @s unt-1.camera_diff

# apply attribute
execute store result storage unt-1:temp camera_value double 0.01 run scoreboard players get @s unt-1.camera_dist
function unt-1:boat-controller/set-camera with storage unt-1:temp