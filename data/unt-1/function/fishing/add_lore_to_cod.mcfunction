execute if data storage unt-1:temp {is_trophy:1b} run function unt-1:fishing/add_lore_to_cod_trophy with storage unt-1:temp
execute unless data storage unt-1:temp {is_trophy:1b} run function unt-1:fishing/add_lore_to_cod_normal with storage unt-1:temp

data remove storage unt-1:temp is_trophy