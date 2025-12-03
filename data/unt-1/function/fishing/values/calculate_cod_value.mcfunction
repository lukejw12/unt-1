# Calculate performance percentage (same as old quality system)
scoreboard players set #performance_base unt-1.temp 100

scoreboard players operation #performance_percent unt-1.temp = #performance_base unt-1.temp
scoreboard players operation #performance_percent unt-1.temp += #speed_bonus unt-1.temp
scoreboard players operation #performance_percent unt-1.temp -= #miss_penalty unt-1.temp

# Clamp between 0-100
execute if score #performance_percent unt-1.temp matches ..0 run scoreboard players set #performance_percent unt-1.temp 0
execute if score #performance_percent unt-1.temp matches 101.. run scoreboard players set #performance_percent unt-1.temp 100

# Convert performance to length percentage (0-100 maps to 0-100% of max length)
scoreboard players operation #length_percent unt-1.temp = #performance_percent unt-1.temp

# Calculate length in inches (max 47.24 inches = 4724 hundredths)
scoreboard players set #cod_max_length_100 unt-1.temp 4724
scoreboard players operation #length_inches_100 unt-1.temp = #cod_max_length_100 unt-1.temp
scoreboard players operation #length_inches_100 unt-1.temp *= #length_percent unt-1.temp
scoreboard players operation #length_inches_100 unt-1.temp /= #100 unt-1.const

# Convert inches to feet (divide by 12, but keep precision)
# Total inches in hundredths: length_inches_100
# Feet = length_inches_100 / 1200 (since 12 inches = 1 foot, and we have hundredths)
scoreboard players set #1200 unt-1.const 1200
scoreboard players operation #feet_100 unt-1.temp = #length_inches_100 unt-1.temp
scoreboard players operation #feet_100 unt-1.temp *= #100 unt-1.const
scoreboard players operation #feet_100 unt-1.temp /= #1200 unt-1.const

# Split into whole feet and decimal
scoreboard players operation #feet_whole unt-1.temp = #feet_100 unt-1.temp
scoreboard players operation #feet_whole unt-1.temp /= #100 unt-1.const

scoreboard players operation #feet_decimal unt-1.temp = #feet_100 unt-1.temp
scoreboard players operation #feet_decimal unt-1.temp %= #100 unt-1.const

# Calculate fish value using: Value = $15.30 + (length_percent * ($22.50 - $15.30))
# Value = 1530 + (length_percent * 720) / 100 (in cents)
scoreboard players set #cod_min_value unt-1.temp 1530
scoreboard players set #cod_value_range unt-1.temp 720

scoreboard players operation #fish_value_cents unt-1.temp = #cod_value_range unt-1.temp
scoreboard players operation #fish_value_cents unt-1.temp *= #length_percent unt-1.temp
scoreboard players operation #fish_value_cents unt-1.temp /= #100 unt-1.const
scoreboard players operation #fish_value_cents unt-1.temp += #cod_min_value unt-1.temp

# Convert cents to dollars with 2 decimals
scoreboard players operation #fish_value_dollars unt-1.temp = #fish_value_cents unt-1.temp
scoreboard players operation #fish_value_dollars unt-1.temp /= #100 unt-1.const

scoreboard players operation #fish_value_cents_part unt-1.temp = #fish_value_cents unt-1.temp
scoreboard players operation #fish_value_cents_part unt-1.temp %= #100 unt-1.const

# Store in data storage for macro
execute store result storage unt-1:temp feet_whole int 1 run scoreboard players get #feet_whole unt-1.temp
execute store result storage unt-1:temp feet_decimal int 1 run scoreboard players get #feet_decimal unt-1.temp
execute store result storage unt-1:temp fish_value_dollars int 1 run scoreboard players get #fish_value_dollars unt-1.temp
execute store result storage unt-1:temp fish_value_cents int 1 run scoreboard players get #fish_value_cents_part unt-1.temp

# Store value in cents for custom_data
execute store result storage unt-1:temp fish_value_total int 1 run scoreboard players get #fish_value_cents unt-1.temp

data modify storage unt-1:placement item set value {type:"cod"}