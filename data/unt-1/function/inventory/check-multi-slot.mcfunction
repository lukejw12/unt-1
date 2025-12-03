execute if items entity @s player.cursor *[custom_data~{unt-1.no_pickup:1b}] run item replace entity @s player.cursor with air

execute if items entity @s container.* *[custom_data~{unt-1.multi_slot:1b}] run tag @s add unt-1.has_multi_slot

# If there's a rotatable fish in offhand AND no button, this means fish was JUST placed
execute if items entity @s weapon.offhand *[custom_data~{unt-1.rotatable:1b}] unless items entity @s weapon.offhand *[custom_data~{unt-1.rotate_button:1b}] run function unt-1:inventory/handle-rotation

# Give button if not present and no rotatable item
execute unless items entity @s weapon.offhand *[custom_data~{unt-1.rotate_button:1b}] unless items entity @s weapon.offhand *[custom_data~{unt-1.rotatable:1b}] run function unt-1:inventory/give-rotate-button

execute if entity @s[tag=unt-1.has_multi_slot] run function unt-1:inventory/check-multi-slot-placement

tag @s remove unt-1.has_multi_slot 