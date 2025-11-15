$execute rotated as @s positioned 0.0 0.0 0.0 run summon marker ^ ^ ^$(speed) {Tags:["unt-1.motion_temp"]}
execute store result entity @s Motion[0] double 0.001 run data get entity @n[type=marker,tag=unt-1.motion_temp] Pos[0] 1000
execute store result entity @s Motion[2] double 0.001 run data get entity @n[type=marker,tag=unt-1.motion_temp] Pos[2] 1000
kill @n[type=marker,tag=unt-1.motion_temp]