scoreboard players set #performance_base unt-1.temp 100

scoreboard players operation #performance_percent unt-1.temp = #performance_base unt-1.temp
scoreboard players operation #performance_percent unt-1.temp += #speed_bonus unt-1.temp
scoreboard players operation #performance_percent unt-1.temp -= #miss_penalty unt-1.temp

execute if score #performance_percent unt-1.temp matches ..0 run scoreboard players set #performance_percent unt-1.temp 0
execute if score #performance_percent unt-1.temp matches 101.. run scoreboard players set #performance_percent unt-1.temp 100

scoreboard players operation #length_percent unt-1.temp = #performance_percent unt-1.temp

scoreboard players set #mackerel_max_length_100 unt-1.temp 1181
scoreboard players operation #length_inches_100 unt-1.temp = #mackerel_max_length_100 unt-1.temp
scoreboard players operation #length_inches_100 unt-1.temp *= #length_percent unt-1.temp
scoreboard players operation #length_inches_100 unt-1.temp /= #100 unt-1.const

execute store result score #trophy_roll unt-1.temp run random value 0..100

# 0-40: 4% bonus (40% chance)
# 41-70: 6% bonus (30% chance)
# 71-85: 8% bonus (15% chance)
# 86-93: 10% bonus (8% chance)
# 94-97: 12% bonus (4% chance)
# 98-99: 14% bonus (2% chance)
# 100: 15% bonus (1% chance)

execute if score #trophy_roll unt-1.temp matches 0..40 run scoreboard players set #trophy_modifier unt-1.temp 4
execute if score #trophy_roll unt-1.temp matches 41..70 run scoreboard players set #trophy_modifier unt-1.temp 6
execute if score #trophy_roll unt-1.temp matches 71..85 run scoreboard players set #trophy_modifier unt-1.temp 8
execute if score #trophy_roll unt-1.temp matches 86..93 run scoreboard players set #trophy_modifier unt-1.temp 10
execute if score #trophy_roll unt-1.temp matches 94..97 run scoreboard players set #trophy_modifier unt-1.temp 12
execute if score #trophy_roll unt-1.temp matches 98..99 run scoreboard players set #trophy_modifier unt-1.temp 14
execute if score #trophy_roll unt-1.temp matches 100 run scoreboard players set #trophy_modifier unt-1.temp 15

scoreboard players operation #trophy_bonus unt-1.temp = #length_inches_100 unt-1.temp
scoreboard players operation #trophy_bonus unt-1.temp *= #trophy_modifier unt-1.temp
scoreboard players operation #trophy_bonus unt-1.temp /= #100 unt-1.const

scoreboard players operation #length_inches_100 unt-1.temp += #trophy_bonus unt-1.temp

scoreboard players set #1200 unt-1.const 1200
scoreboard players operation #feet_100 unt-1.temp = #length_inches_100 unt-1.temp
scoreboard players operation #feet_100 unt-1.temp *= #100 unt-1.const
scoreboard players operation #feet_100 unt-1.temp /= #1200 unt-1.const

scoreboard players operation #feet_whole unt-1.temp = #feet_100 unt-1.temp
scoreboard players operation #feet_whole unt-1.temp /= #100 unt-1.const

scoreboard players operation #feet_decimal unt-1.temp = #feet_100 unt-1.temp
scoreboard players operation #feet_decimal unt-1.temp %= #100 unt-1.const

scoreboard players operation #new_length_percent unt-1.temp = #length_inches_100 unt-1.temp
scoreboard players operation #new_length_percent unt-1.temp *= #100 unt-1.const
scoreboard players operation #new_length_percent unt-1.temp /= #mackerel_max_length_100 unt-1.temp

execute if score #new_length_percent unt-1.temp matches 116.. run scoreboard players set #new_length_percent unt-1.temp 115

scoreboard players set #mackerel_min_value unt-1.temp 850
scoreboard players set #mackerel_value_range unt-1.temp 400

scoreboard players operation #fish_value_cents unt-1.temp = #mackerel_value_range unt-1.temp
scoreboard players operation #fish_value_cents unt-1.temp *= #new_length_percent unt-1.temp
scoreboard players operation #fish_value_cents unt-1.temp /= #100 unt-1.const
scoreboard players operation #fish_value_cents unt-1.temp += #mackerel_min_value unt-1.temp

scoreboard players operation #fish_value_dollars unt-1.temp = #fish_value_cents unt-1.temp
scoreboard players operation #fish_value_dollars unt-1.temp /= #100 unt-1.const

scoreboard players operation #fish_value_cents_part unt-1.temp = #fish_value_cents unt-1.temp
scoreboard players operation #fish_value_cents_part unt-1.temp %= #100 unt-1.const

execute store result storage unt-1:temp feet_whole int 1 run scoreboard players get #feet_whole unt-1.temp
execute store result storage unt-1:temp feet_decimal int 1 run scoreboard players get #feet_decimal unt-1.temp
execute store result storage unt-1:temp fish_value_dollars int 1 run scoreboard players get #fish_value_dollars unt-1.temp
execute store result storage unt-1:temp fish_value_cents int 1 run scoreboard players get #fish_value_cents_part unt-1.temp
execute store result storage unt-1:temp fish_value_total int 1 run scoreboard players get #fish_value_cents unt-1.temp

data modify storage unt-1:temp is_trophy set value 1b
data modify storage unt-1:placement item set value {type:"blue_mackerel"}