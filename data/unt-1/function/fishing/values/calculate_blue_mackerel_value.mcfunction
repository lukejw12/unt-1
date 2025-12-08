scoreboard players operation #length_inches_100 unt-1.temp = #mackerel_max_length unt-1.const

execute store result score #trophy_bonus_percent unt-1.temp run random value 5..15

scoreboard players operation #trophy_bonus unt-1.temp = #mackerel_max_length unt-1.const
scoreboard players operation #trophy_bonus unt-1.temp *= #trophy_bonus_percent unt-1.temp
scoreboard players operation #trophy_bonus unt-1.temp /= #100 unt-1.const

scoreboard players operation #length_inches_100 unt-1.temp += #trophy_bonus unt-1.temp

scoreboard players operation #feet_100 unt-1.temp = #length_inches_100 unt-1.temp
scoreboard players operation #feet_100 unt-1.temp *= #100 unt-1.const
scoreboard players operation #feet_100 unt-1.temp /= #1200 unt-1.const

scoreboard players operation #feet_whole unt-1.temp = #feet_100 unt-1.temp
scoreboard players operation #feet_whole unt-1.temp /= #100 unt-1.const

scoreboard players operation #feet_decimal unt-1.temp = #feet_100 unt-1.temp
scoreboard players operation #feet_decimal unt-1.temp %= #100 unt-1.const

scoreboard players operation #size_percent unt-1.temp = #length_inches_100 unt-1.temp
scoreboard players operation #size_percent unt-1.temp *= #100 unt-1.const
scoreboard players operation #size_percent unt-1.temp /= #mackerel_max_length unt-1.const

execute if score #size_percent unt-1.temp matches 116.. run scoreboard players set #size_percent unt-1.temp 115

scoreboard players operation #fish_value_cents unt-1.temp = #mackerel_value_range unt-1.const
scoreboard players operation #fish_value_cents unt-1.temp *= #size_percent unt-1.temp
scoreboard players operation #fish_value_cents unt-1.temp /= #100 unt-1.const
scoreboard players operation #fish_value_cents unt-1.temp += #mackerel_min_value unt-1.const

scoreboard players operation #fish_value_dollars unt-1.temp = #fish_value_cents unt-1.temp
scoreboard players operation #fish_value_dollars unt-1.temp /= #100 unt-1.const

scoreboard players operation #fish_value_cents_part unt-1.temp = #fish_value_cents unt-1.temp
scoreboard players operation #fish_value_cents_part unt-1.temp %= #100 unt-1.const

execute store result storage unt-1:temp feet_whole int 1 run scoreboard players get #feet_whole unt-1.temp
execute store result storage unt-1:temp feet_decimal int 1 run scoreboard players get #feet_decimal unt-1.temp
execute store result storage unt-1:temp fish_value_dollars int 1 run scoreboard players get #fish_value_dollars unt-1.temp
execute store result storage unt-1:temp fish_value_cents int 1 run scoreboard players get #fish_value_cents_part unt-1.temp
execute store result storage unt-1:temp fish_value_total int 1 run scoreboard players get #fish_value_cents unt-1.temp

data modify storage unt-1:placement item set value {type:"blue_mackerel"}