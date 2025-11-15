# tag player if they have a fishing rod
execute if items entity @s container.* *[custom_data~{basic_fishing_rod:1b}] run tag @s add unt-1.has_rod

# only check if player has a rod
execute if entity @s[tag=unt-1.has_rod] run function unt-1:inventory/check-rod-placement

# remove tag
tag @s remove unt-1.has_rod