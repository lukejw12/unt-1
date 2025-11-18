# Main entry point for placing items in inventory
# Usage: Set storage unt-1:placement item to {type:"cod"} or {type:"blue_mackerel"}
# Then call this function

# Reset placement success flag
scoreboard players set @s unt-1.placement_success 0

# ONLY map occupied slots on the FIRST call
# Check if we need to initialize the map
execute unless score #map_initialized unt-1.slot_occupied matches 1 run function unt-1:inventory_placement/map_occupied_slots
execute unless score #map_initialized unt-1.slot_occupied matches 1 run scoreboard players set #map_initialized unt-1.slot_occupied 1

# Start scanning from slot 9 (first inventory slot after hotbar)
scoreboard players set @s unt-1.inv_slot 9

# Begin recursive scan
function unt-1:inventory_placement/scan_slot

# If nothing worked, notify failure
execute if score @s unt-1.placement_success matches 0 run tellraw @s {"text":"✗ No space in inventory!","color":"red"}