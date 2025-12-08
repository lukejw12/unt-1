
$data modify storage unt-1:temp offsets set from entity @s Inventory[{Slot:$(slot)b}].components."minecraft:custom_data"."unt-1.offsets"

$execute if data storage unt-1:temp offsets.o0 run function unt-1:inventory/validation/check_boundary_violation {fish_slot:$(slot),offset_key:"o0"}
$execute if data storage unt-1:temp offsets.o1 run function unt-1:inventory/validation/check_boundary_violation {fish_slot:$(slot),offset_key:"o1"}
$execute if data storage unt-1:temp offsets.o2 run function unt-1:inventory/validation/check_boundary_violation {fish_slot:$(slot),offset_key:"o2"}

$execute if entity @s[tag=unt-1.invalid_fish] if items entity @s player.cursor *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/check_if_collision_victim {invalid_slot:$(slot)}

execute if entity @s[tag=unt-1.rollback_performed] run tag @s remove unt-1.rollback_performed
execute if entity @s[tag=unt-1.rollback_performed] run return 1

$execute if data storage unt-1:temp offsets.o0 unless entity @s[tag=unt-1.invalid_fish] run function unt-1:inventory/validation/check_offset_collision {fish_slot:$(slot),offset_key:"o0"}
$execute if data storage unt-1:temp offsets.o1 unless entity @s[tag=unt-1.invalid_fish] run function unt-1:inventory/validation/check_offset_collision {fish_slot:$(slot),offset_key:"o1"}
$execute if data storage unt-1:temp offsets.o2 unless entity @s[tag=unt-1.invalid_fish] run function unt-1:inventory/validation/check_offset_collision {fish_slot:$(slot),offset_key:"o2"}

$execute if entity @s[tag=unt-1.invalid_fish] run function unt-1:inventory/validation/helpers/eject_fish {slot:$(slot)}
tag @s remove unt-1.invalid_fish