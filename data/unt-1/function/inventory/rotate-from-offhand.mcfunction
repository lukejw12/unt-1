# Detect which item and rotation is in offhand, then swap

# COD rotations
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"cod",unt-1.rotation:0b}] run function unt-1:inventory/rotate/cod_0_to_90
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"cod",unt-1.rotation:1b}] run function unt-1:inventory/rotate/cod_90_to_180
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"cod",unt-1.rotation:2b}] run function unt-1:inventory/rotate/cod_180_to_270
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"cod",unt-1.rotation:3b}] run function unt-1:inventory/rotate/cod_270_to_0

# Clear offhand after rotation
item replace entity @s weapon.offhand with air