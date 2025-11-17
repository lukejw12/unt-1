# Tag player if they have ANY multi-slot item
execute if items entity @s container.* *[custom_data~{unt-1.multi_slot:1b}] run tag @s add unt-1.has_multi_slot

# Check for rotation attempt (rotatable item placed in offhand)
execute if items entity @s weapon.offhand *[custom_data~{unt-1.rotatable:1b}] run function unt-1:inventory/rotate-from-offhand

# Only check if player has multi-slot items
execute if entity @s[tag=unt-1.has_multi_slot] run function unt-1:inventory/check-multi-slot-placement

# Remove tag
tag @s remove unt-1.has_multi_slot