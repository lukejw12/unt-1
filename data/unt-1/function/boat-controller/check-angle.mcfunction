$scoreboard players set #test_angle unt-1.temp $(angle)
scoreboard players operation #angle_diff unt-1.temp = #test_angle unt-1.temp
scoreboard players operation #angle_diff unt-1.temp -= @s unt-1.current_yaw

# sandle wrap-around
execute if score #angle_diff unt-1.temp matches 180.. run scoreboard players remove #angle_diff unt-1.temp 360
execute if score #angle_diff unt-1.temp matches ..-180 run scoreboard players add #angle_diff unt-1.temp 360

# get absolute value
execute if score #angle_diff unt-1.temp matches ..-1 run scoreboard players operation #angle_diff unt-1.temp *= #-1 unt-1.const

# update closest
execute if score #angle_diff unt-1.temp < #closest_diff unt-1.temp run scoreboard players operation #closest_yaw unt-1.temp = #test_angle unt-1.temp
execute if score #angle_diff unt-1.temp < #closest_diff unt-1.temp run scoreboard players operation #closest_diff unt-1.temp = #angle_diff unt-1.temp