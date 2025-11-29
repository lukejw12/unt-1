


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
scoreboard objectives add unt-1.blocked dummy

# Fishing scoreboards
scoreboard objectives add unt-1.fishing_tick dummy
scoreboard objectives add unt-1.fishing_progress dummy
scoreboard objectives add unt-1.fishing_target dummy
scoreboard objectives add unt-1.fishing_zone_size dummy
scoreboard objectives add unt-1.fishing_cooldown dummy
scoreboard objectives add unt-1.fishing_tick_delay dummy
scoreboard objectives add unt-1.cast_cooldown dummy
scoreboard objectives add unt-1.fishing_grace dummy
scoreboard objectives add unt-1.slot_occupied dummy
scoreboard objectives add unt-1.placement_success dummy
scoreboard objectives add unt-1.inv_slot dummy
scoreboard objectives add unt-1.inv_rotation dummy

# Arrow position tracking
scoreboard objectives add unt-1.arrow_pos dummy
scoreboard objectives add unt-1.arrow_direction dummy

scoreboard players set #arrow_min unt-1.const 0
scoreboard players set #arrow_max unt-1.const 9
# Target tracking
scoreboard objectives add unt-1.target_pos dummy
scoreboard objectives add unt-1.target_size dummy

# Constants for negative space values
scoreboard players set #1 unt-1.const 1

# Constants
scoreboard players set #-1 unt-1.const -1
scoreboard players set #2 unt-1.const 2
scoreboard players set #4 unt-1.const 4
scoreboard players set #5 unt-1.const 5
scoreboard players set #8 unt-1.const 8
scoreboard players set #9 unt-1.const 9
scoreboard players set #10 unt-1.const 10
scoreboard players set #16 unt-1.const 16
scoreboard players set #20 unt-1.const 20
scoreboard players set #60 unt-1.const 60
scoreboard players set #100 unt-1.const 100



# market scorebooards

scoreboard objectives add unt-1.fishing_misses dummy
scoreboard objectives add unt-1.fishing_time dummy

# fish base values
scoreboard players set #cod_base unt-1.const 25
scoreboard players set #blue_mackerel_base unt-1.const 15

# fish value ranges (max - min)
scoreboard players set #cod_range unt-1.const 35
scoreboard players set #blue_mackerel_range unt-1.const 25

# fish min values
scoreboard players set #cod_min unt-1.const 10
scoreboard players set #blue_mackerel_min unt-1.const 10