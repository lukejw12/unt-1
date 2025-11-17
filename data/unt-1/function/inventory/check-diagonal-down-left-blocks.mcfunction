# If item at X blocks diagonal-down-left (+8), check if there's ANY item at X+8
execute if items entity @s container.0 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.8 * run function unt-1:inventory/return-item {slot:8}
execute if items entity @s container.1 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.9 * run function unt-1:inventory/return-item {slot:9}
execute if items entity @s container.2 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.10 * run function unt-1:inventory/return-item {slot:10}
execute if items entity @s container.3 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.11 * run function unt-1:inventory/return-item {slot:11}
execute if items entity @s container.4 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.12 * run function unt-1:inventory/return-item {slot:12}
execute if items entity @s container.5 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.13 * run function unt-1:inventory/return-item {slot:13}
execute if items entity @s container.6 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.14 * run function unt-1:inventory/return-item {slot:14}
execute if items entity @s container.7 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.15 * run function unt-1:inventory/return-item {slot:15}
execute if items entity @s container.8 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.16 * run function unt-1:inventory/return-item {slot:16}

execute if items entity @s container.10 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.18 * run function unt-1:inventory/return-item {slot:18}
execute if items entity @s container.11 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.19 * run function unt-1:inventory/return-item {slot:19}
execute if items entity @s container.12 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.20 * run function unt-1:inventory/return-item {slot:20}
execute if items entity @s container.13 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.21 * run function unt-1:inventory/return-item {slot:21}
execute if items entity @s container.14 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.22 * run function unt-1:inventory/return-item {slot:22}
execute if items entity @s container.15 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.23 * run function unt-1:inventory/return-item {slot:23}
execute if items entity @s container.16 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.24 * run function unt-1:inventory/return-item {slot:24}
execute if items entity @s container.17 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.25 * run function unt-1:inventory/return-item {slot:25}

execute if items entity @s container.19 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.27 * run function unt-1:inventory/return-item {slot:27}
execute if items entity @s container.20 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.28 * run function unt-1:inventory/return-item {slot:28}
execute if items entity @s container.21 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.29 * run function unt-1:inventory/return-item {slot:29}
execute if items entity @s container.22 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.30 * run function unt-1:inventory/return-item {slot:30}
execute if items entity @s container.23 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.31 * run function unt-1:inventory/return-item {slot:31}
execute if items entity @s container.24 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.32 * run function unt-1:inventory/return-item {slot:32}
execute if items entity @s container.25 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.33 * run function unt-1:inventory/return-item {slot:33}
execute if items entity @s container.26 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] if items entity @s container.34 * run function unt-1:inventory/return-item {slot:34}

# Reverse check
execute if items entity @s container.8 * if items entity @s container.0 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:8}
execute if items entity @s container.9 * if items entity @s container.1 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:9}
execute if items entity @s container.10 * if items entity @s container.2 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:10}
execute if items entity @s container.11 * if items entity @s container.3 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:11}
execute if items entity @s container.12 * if items entity @s container.4 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:12}
execute if items entity @s container.13 * if items entity @s container.5 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:13}
execute if items entity @s container.14 * if items entity @s container.6 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:14}
execute if items entity @s container.15 * if items entity @s container.7 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:15}
execute if items entity @s container.16 * if items entity @s container.8 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:16}

execute if items entity @s container.18 * if items entity @s container.10 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:18}
execute if items entity @s container.19 * if items entity @s container.11 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:19}
execute if items entity @s container.20 * if items entity @s container.12 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:20}
execute if items entity @s container.21 * if items entity @s container.13 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:21}
execute if items entity @s container.22 * if items entity @s container.14 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:22}
execute if items entity @s container.23 * if items entity @s container.15 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:23}
execute if items entity @s container.24 * if items entity @s container.16 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:24}
execute if items entity @s container.25 * if items entity @s container.17 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:25}

execute if items entity @s container.27 * if items entity @s container.19 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:27}
execute if items entity @s container.28 * if items entity @s container.20 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:28}
execute if items entity @s container.29 * if items entity @s container.21 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:29}
execute if items entity @s container.30 * if items entity @s container.22 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:30}
execute if items entity @s container.31 * if items entity @s container.23 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:31}
execute if items entity @s container.32 * if items entity @s container.24 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:32}
execute if items entity @s container.33 * if items entity @s container.25 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:33}
execute if items entity @s container.34 * if items entity @s container.26 *[custom_data~{unt-1.blocks_diagonal_down_left:1b}] run function unt-1:inventory/return-item {slot:34}