execute if items entity @s player.cursor *[!custom_data~{unt-1.multi_slot:1b}] run item replace entity @s container.8 from entity @s player.cursor

$item replace entity @s player.cursor from entity @s container.$(slot)
$item replace entity @s container.$(slot) with air

$execute if items entity @s container.8 * run item replace entity @s container.$(slot) from entity @s container.8
execute if items entity @s container.8 * run item replace entity @s container.8 with air