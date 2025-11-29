execute unless score @s unt-1.arrow_pos matches 0.. run scoreboard players set @s unt-1.arrow_pos 0
execute unless score @s unt-1.arrow_direction matches 0.. run scoreboard players set @s unt-1.arrow_direction 1

execute unless score @s unt-1.target_pos matches 0.. run function unt-1:fishing/set_random_target

execute if score @s unt-1.arrow_direction matches 1 run scoreboard players add @s unt-1.arrow_pos 1
execute if score @s unt-1.arrow_direction matches 0 run scoreboard players remove @s unt-1.arrow_pos 1

execute if score @s unt-1.arrow_pos matches 29.. run scoreboard players set @s unt-1.arrow_direction 0
execute if score @s unt-1.arrow_pos matches ..0 run scoreboard players set @s unt-1.arrow_direction 1

function unt-1:fishing/display_meter