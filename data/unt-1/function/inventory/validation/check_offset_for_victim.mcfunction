
$execute store result score #offset_val unt-1.temp run data get storage unt-1:temp check_offsets.$(offset_key)
$scoreboard players set #check_slot unt-1.temp $(invalid_slot)
scoreboard players operation #check_slot unt-1.temp += #offset_val unt-1.temp

execute unless score #check_slot unt-1.temp matches 0..35 run return 0

execute if score #check_slot unt-1.temp matches 0 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_0 unt-1.temp
execute if score #check_slot unt-1.temp matches 1 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_1 unt-1.temp
execute if score #check_slot unt-1.temp matches 2 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_2 unt-1.temp
execute if score #check_slot unt-1.temp matches 3 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_3 unt-1.temp
execute if score #check_slot unt-1.temp matches 4 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_4 unt-1.temp
execute if score #check_slot unt-1.temp matches 5 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_5 unt-1.temp
execute if score #check_slot unt-1.temp matches 6 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_6 unt-1.temp
execute if score #check_slot unt-1.temp matches 7 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_7 unt-1.temp
execute if score #check_slot unt-1.temp matches 8 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_8 unt-1.temp
execute if score #check_slot unt-1.temp matches 9 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_9 unt-1.temp
execute if score #check_slot unt-1.temp matches 10 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_10 unt-1.temp
execute if score #check_slot unt-1.temp matches 11 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_11 unt-1.temp
execute if score #check_slot unt-1.temp matches 12 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_12 unt-1.temp
execute if score #check_slot unt-1.temp matches 13 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_13 unt-1.temp
execute if score #check_slot unt-1.temp matches 14 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_14 unt-1.temp
execute if score #check_slot unt-1.temp matches 15 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_15 unt-1.temp
execute if score #check_slot unt-1.temp matches 16 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_16 unt-1.temp
execute if score #check_slot unt-1.temp matches 17 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_17 unt-1.temp
execute if score #check_slot unt-1.temp matches 18 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_18 unt-1.temp
execute if score #check_slot unt-1.temp matches 19 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_19 unt-1.temp
execute if score #check_slot unt-1.temp matches 20 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_20 unt-1.temp
execute if score #check_slot unt-1.temp matches 21 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_21 unt-1.temp
execute if score #check_slot unt-1.temp matches 22 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_22 unt-1.temp
execute if score #check_slot unt-1.temp matches 23 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_23 unt-1.temp
execute if score #check_slot unt-1.temp matches 24 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_24 unt-1.temp
execute if score #check_slot unt-1.temp matches 25 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_25 unt-1.temp
execute if score #check_slot unt-1.temp matches 26 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_26 unt-1.temp
execute if score #check_slot unt-1.temp matches 27 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_27 unt-1.temp
execute if score #check_slot unt-1.temp matches 28 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_28 unt-1.temp
execute if score #check_slot unt-1.temp matches 29 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_29 unt-1.temp
execute if score #check_slot unt-1.temp matches 30 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_30 unt-1.temp
execute if score #check_slot unt-1.temp matches 31 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_31 unt-1.temp
execute if score #check_slot unt-1.temp matches 32 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_32 unt-1.temp
execute if score #check_slot unt-1.temp matches 33 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_33 unt-1.temp
execute if score #check_slot unt-1.temp matches 34 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_34 unt-1.temp
execute if score #check_slot unt-1.temp matches 35 store result score #prev_occupier unt-1.temp run scoreboard players get #backup_35 unt-1.temp


$execute unless score #prev_occupier unt-1.temp matches -1 unless score #prev_occupier unt-1.temp matches $(invalid_slot) run scoreboard players set #found_victim unt-1.temp 1
$execute unless score #prev_occupier unt-1.temp matches -1 unless score #prev_occupier unt-1.temp matches $(invalid_slot) run scoreboard players operation #victim_slot unt-1.temp = #prev_occupier unt-1.temp