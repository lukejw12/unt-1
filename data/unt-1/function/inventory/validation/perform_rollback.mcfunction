playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
execute store result storage unt-1:temp original_slot int 1 run scoreboard players get #victim_slot unt-1.temp
$item replace entity @s container.8 from entity @s container.$(invalid_slot)
function unt-1:inventory/validation/restore_cursor_fish with storage unt-1:temp
$item replace entity @s container.$(invalid_slot) with air
item replace entity @s player.cursor from entity @s container.8
item replace entity @s container.8 with air
function unt-1:inventory/validation/restore_occupation_map