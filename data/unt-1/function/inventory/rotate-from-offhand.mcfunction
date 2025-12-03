# Data is already stored by store-fish-data, just call the rotation functions
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"cod",unt-1.rotation:0b}] run function unt-1:inventory/rotate/cod_0_to_90 with storage unt-1:temp
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"cod",unt-1.rotation:1b}] run function unt-1:inventory/rotate/cod_90_to_180 with storage unt-1:temp
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"cod",unt-1.rotation:2b}] run function unt-1:inventory/rotate/cod_180_to_270 with storage unt-1:temp
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"cod",unt-1.rotation:3b}] run function unt-1:inventory/rotate/cod_270_to_0 with storage unt-1:temp

execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"blue_mackerel",unt-1.rotation:0b}] run function unt-1:inventory/rotate/blue_mackerel_0_to_90 with storage unt-1:temp
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"blue_mackerel",unt-1.rotation:1b}] run function unt-1:inventory/rotate/blue_mackerel_90_to_180 with storage unt-1:temp
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"blue_mackerel",unt-1.rotation:2b}] run function unt-1:inventory/rotate/blue_mackerel_180_to_270 with storage unt-1:temp
execute if items entity @s weapon.offhand *[custom_data~{unt-1.item_type:"blue_mackerel",unt-1.rotation:3b}] run function unt-1:inventory/rotate/blue_mackerel_270_to_0 with storage unt-1:temp

function unt-1:inventory/give-rotate-button