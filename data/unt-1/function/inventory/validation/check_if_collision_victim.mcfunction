

$data modify storage unt-1:temp check_offsets set from entity @s Inventory[{Slot:$(invalid_slot)b}].components."minecraft:custom_data"."unt-1.offsets"

scoreboard players set #found_victim unt-1.temp 0

$execute if data storage unt-1:temp check_offsets.o0 run function unt-1:inventory/validation/check_offset_for_victim {invalid_slot:$(invalid_slot),offset_key:"o0"}
$execute if data storage unt-1:temp check_offsets.o1 unless score #found_victim unt-1.temp matches 1 run function unt-1:inventory/validation/check_offset_for_victim {invalid_slot:$(invalid_slot),offset_key:"o1"}
$execute if data storage unt-1:temp check_offsets.o2 unless score #found_victim unt-1.temp matches 1 run function unt-1:inventory/validation/check_offset_for_victim {invalid_slot:$(invalid_slot),offset_key:"o2"}
$execute if score #found_victim unt-1.temp matches 1 run function unt-1:inventory/validation/perform_rollback {invalid_slot:$(invalid_slot)}
execute if score #found_victim unt-1.temp matches 1 run tag @s add unt-1.rollback_performed
execute if score #found_victim unt-1.temp matches 1 run tag @s remove unt-1.invalid_fish