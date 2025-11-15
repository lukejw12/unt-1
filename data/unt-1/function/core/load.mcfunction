#Temp Scoores
scoreboard objectives remove temp

#Camera Zoom
scoreboard objectives remove head_pitch
scoreboard objectives remove camera_dist
scoreboard objectives remove target_camera
scoreboard objectives remove camera_diff

#Const
scoreboard objectives remove const

#Motion
scoreboard objectives remove motion_y

#Docking
scoreboard objectives remove current_yaw
scoreboard objectives remove dock_distance
scoreboard objectives remove target_dock_x
scoreboard objectives remove target_dock_z
scoreboard objectives remove target_dock_yaw
scoreboard objectives remove docking_progress
scoreboard objectives remove boat_x_approach
scoreboard objectives remove boat_z_approach

scoreboard objectives remove abs_x
scoreboard objectives remove abs_z

#Inventory management
scoreboard objectives remove inv_check


# Scoreboards
scoreboard objectives add unt-1.temp dummy
scoreboard objectives add unt-1.head_pitch dummy
scoreboard objectives add unt-1.camera_dist dummy
scoreboard objectives add unt-1.target_camera dummy
scoreboard objectives add unt-1.camera_diff dummy
scoreboard objectives add unt-1.const dummy
scoreboard objectives add unt-1.motion_y dummy
scoreboard objectives add unt-1.current_yaw dummy
scoreboard objectives add unt-1.dock_distance dummy
scoreboard objectives add unt-1.target_dock_x dummy
scoreboard objectives add unt-1.target_dock_z dummy
scoreboard objectives add unt-1.target_dock_yaw dummy
scoreboard objectives add unt-1.docking_progress dummy
scoreboard objectives add unt-1.boat_x_approach dummy
scoreboard objectives add unt-1.boat_z_approach dummy
scoreboard objectives add unt-1.abs_x dummy
scoreboard objectives add unt-1.abs_z dummy
scoreboard objectives add unt-1.inv_check dummy

# Constants
scoreboard players set #-1 unt-1.const -1
scoreboard players set #4 unt-1.const 4
scoreboard players set #5 unt-1.const 5
scoreboard players set #10 unt-1.const 10
scoreboard players set #100 unt-1.const 100