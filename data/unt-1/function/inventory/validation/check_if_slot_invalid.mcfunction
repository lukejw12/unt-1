
$data modify storage unt-1:temp offsets set from entity @s Inventory[{Slot:$(slot)b}].components."minecraft:custom_data"."unt-1.offsets"

$execute if data storage unt-1:temp offsets.o0 run function unt-1:inventory/validation/quick_boundary_check {fish_slot:$(slot),offset_key:"o0"}
$execute if data storage unt-1:temp offsets.o1 unless score #found_invalid unt-1.temp matches 1 run function unt-1:inventory/validation/quick_boundary_check {fish_slot:$(slot),offset_key:"o1"}
$execute if data storage unt-1:temp offsets.o2 unless score #found_invalid unt-1.temp matches 1 run function unt-1:inventory/validation/quick_boundary_check {fish_slot:$(slot),offset_key:"o2"}

$execute if score #found_invalid unt-1.temp matches 1 run function unt-1:inventory/validation/perform_rollback {invalid_slot:$(slot)}