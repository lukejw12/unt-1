
$execute store result score #offset unt-1.temp run data get storage unt-1:temp offsets.$(offset_key)
$scoreboard players set #base_slot unt-1.temp $(fish_slot)
scoreboard players operation #target_slot unt-1.temp = #base_slot unt-1.temp
scoreboard players operation #target_slot unt-1.temp += #offset unt-1.temp

execute if score #target_slot unt-1.temp matches ..-1 run scoreboard players set #found_invalid unt-1.temp 1
execute if score #target_slot unt-1.temp matches ..-1 run return fail
execute unless score #target_slot unt-1.temp matches 0..35 run scoreboard players set #found_invalid unt-1.temp 1
execute unless score #target_slot unt-1.temp matches 0..35 run return fail

scoreboard players operation #row unt-1.temp = #base_slot unt-1.temp
scoreboard players operation #row unt-1.temp /= #9 unt-1.const
scoreboard players operation #base_row unt-1.temp = #row unt-1.temp

scoreboard players operation #col unt-1.temp = #base_slot unt-1.temp
scoreboard players operation #col unt-1.temp %= #9 unt-1.const
scoreboard players operation #base_col unt-1.temp = #col unt-1.temp

scoreboard players operation #row unt-1.temp = #target_slot unt-1.temp
scoreboard players operation #row unt-1.temp /= #9 unt-1.const
scoreboard players operation #target_row unt-1.temp = #row unt-1.temp

scoreboard players operation #col unt-1.temp = #target_slot unt-1.temp
scoreboard players operation #col unt-1.temp %= #9 unt-1.const
scoreboard players operation #target_col unt-1.temp = #col unt-1.temp

scoreboard players operation #row_diff unt-1.temp = #target_row unt-1.temp
scoreboard players operation #row_diff unt-1.temp -= #base_row unt-1.temp

scoreboard players operation #col_diff unt-1.temp = #target_col unt-1.temp
scoreboard players operation #col_diff unt-1.temp -= #base_col unt-1.temp

execute if score #offset unt-1.temp matches 1 if score #col_diff unt-1.temp matches ..-1 run scoreboard players set #found_invalid unt-1.temp 1
execute if score #offset unt-1.temp matches -1 if score #col_diff unt-1.temp matches 1.. run scoreboard players set #found_invalid unt-1.temp 1
execute if score #offset unt-1.temp matches 9 unless score #col_diff unt-1.temp matches 0 run scoreboard players set #found_invalid unt-1.temp 1
execute if score #offset unt-1.temp matches -9 unless score #col_diff unt-1.temp matches 0 run scoreboard players set #found_invalid unt-1.temp 1
execute if score #offset unt-1.temp matches 8 if score #col_diff unt-1.temp matches 0.. run scoreboard players set #found_invalid unt-1.temp 1
execute if score #offset unt-1.temp matches 10 if score #col_diff unt-1.temp matches ..0 run scoreboard players set #found_invalid unt-1.temp 1
execute if score #offset unt-1.temp matches -8 if score #col_diff unt-1.temp matches ..0 run scoreboard players set #found_invalid unt-1.temp 1
execute if score #offset unt-1.temp matches -10 if score #col_diff unt-1.temp matches 0.. run scoreboard players set #found_invalid unt-1.temp 1