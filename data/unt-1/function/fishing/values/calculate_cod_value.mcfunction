scoreboard players set #performance_base unt-1.temp 100

scoreboard players operation #performance_percent unt-1.temp = #performance_base unt-1.temp
scoreboard players operation #performance_percent unt-1.temp += #speed_bonus unt-1.temp
scoreboard players operation #performance_percent unt-1.temp -= #miss_penalty unt-1.temp

execute if score #performance_percent unt-1.temp matches ..0 run scoreboard players set #performance_percent unt-1.temp 0
execute if score #performance_percent unt-1.temp matches 101.. run scoreboard players set #performance_percent unt-1.temp 100

scoreboard players operation #length_percent unt-1.temp = #performance_percent unt-1.temp

scoreboard players operation #length_inches_100 unt-1.temp = #cod_max_length unt-1.const
scoreboard players operation #length_inches_100 unt-1.temp *= #length_percent unt-1.temp
scoreboard players operation #length_inches_100 unt-1.temp /= #100 unt-1.const

scoreboard players operation #feet_100 unt-1.temp = #length_inches_100 unt-1.temp
scoreboard players operation #feet_100 unt-1.temp *= #100 unt-1.const
scoreboard players operation #feet_100 unt-1.temp /= #1200 unt-1.const

scoreboard players operation #feet_whole unt-1.temp = #feet_100 unt-1.temp
scoreboard players operation #feet_whole unt-1.temp /= #100 unt-1.const

scoreboard players operation #feet_decimal unt-1.temp = #feet_100 unt-1.temp
scoreboard players operation #feet_decimal unt-1.temp %= #100 unt-1.const

scoreboard players operation #fish_value_cents unt-1.temp = #cod_value_range unt-1.const
scoreboard players operation #fish_value_cents unt-1.temp *= #length_percent unt-1.temp
scoreboard players operation #fish_value_cents unt-1.temp /= #100 unt-1.const
scoreboard players operation #fish_value_cents unt-1.temp += #cod_min_value unt-1.const

scoreboard players operation #fish_value_dollars unt-1.temp = #fish_value_cents unt-1.temp
scoreboard players operation #fish_value_dollars unt-1.temp /= #100 unt-1.const

scoreboard players operation #fish_value_cents_part unt-1.temp = #fish_value_cents unt-1.temp
scoreboard players operation #fish_value_cents_part unt-1.temp %= #100 unt-1.const

execute store result storage unt-1:temp feet_whole int 1 run scoreboard players get #feet_whole unt-1.temp
execute store result storage unt-1:temp feet_decimal int 1 run scoreboard players get #feet_decimal unt-1.temp
execute store result storage unt-1:temp fish_value_dollars int 1 run scoreboard players get #fish_value_dollars unt-1.temp
execute store result storage unt-1:temp fish_value_cents int 1 run scoreboard players get #fish_value_cents_part unt-1.temp
execute store result storage unt-1:temp fish_value_total int 1 run scoreboard players get #fish_value_cents unt-1.temp

data modify storage unt-1:placement item set value {type:"cod"}