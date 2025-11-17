# If item at X blocks diagonal-up-right (-8), check if there's ANY item at X-8
execute if items entity @s container.8 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.0 * run function unt-1:inventory/return-item {slot:0}
execute if items entity @s container.9 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.1 * run function unt-1:inventory/return-item {slot:1}
execute if items entity @s container.10 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.2 * run function unt-1:inventory/return-item {slot:2}
execute if items entity @s container.11 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.3 * run function unt-1:inventory/return-item {slot:3}
execute if items entity @s container.12 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.4 * run function unt-1:inventory/return-item {slot:4}
execute if items entity @s container.13 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.5 * run function unt-1:inventory/return-item {slot:5}
execute if items entity @s container.14 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.6 * run function unt-1:inventory/return-item {slot:6}
execute if items entity @s container.15 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.7 * run function unt-1:inventory/return-item {slot:7}
execute if items entity @s container.16 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.8 * run function unt-1:inventory/return-item {slot:8}

execute if items entity @s container.17 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.9 * run function unt-1:inventory/return-item {slot:9}
execute if items entity @s container.18 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.10 * run function unt-1:inventory/return-item {slot:10}
execute if items entity @s container.19 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.11 * run function unt-1:inventory/return-item {slot:11}
execute if items entity @s container.20 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.12 * run function unt-1:inventory/return-item {slot:12}
execute if items entity @s container.21 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.13 * run function unt-1:inventory/return-item {slot:13}
execute if items entity @s container.22 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.14 * run function unt-1:inventory/return-item {slot:14}
execute if items entity @s container.23 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.15 * run function unt-1:inventory/return-item {slot:15}
execute if items entity @s container.24 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.16 * run function unt-1:inventory/return-item {slot:16}
execute if items entity @s container.25 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.17 * run function unt-1:inventory/return-item {slot:17}

execute if items entity @s container.26 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.18 * run function unt-1:inventory/return-item {slot:18}
execute if items entity @s container.27 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.19 * run function unt-1:inventory/return-item {slot:19}
execute if items entity @s container.28 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.20 * run function unt-1:inventory/return-item {slot:20}
execute if items entity @s container.29 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.21 * run function unt-1:inventory/return-item {slot:21}
execute if items entity @s container.30 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.22 * run function unt-1:inventory/return-item {slot:22}
execute if items entity @s container.31 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.23 * run function unt-1:inventory/return-item {slot:23}
execute if items entity @s container.32 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.24 * run function unt-1:inventory/return-item {slot:24}
execute if items entity @s container.33 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.25 * run function unt-1:inventory/return-item {slot:25}
execute if items entity @s container.34 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] if items entity @s container.26 * run function unt-1:inventory/return-item {slot:26}

# Reverse check
execute if items entity @s container.0 * if items entity @s container.8 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:0}
execute if items entity @s container.1 * if items entity @s container.9 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:1}
execute if items entity @s container.2 * if items entity @s container.10 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:2}
execute if items entity @s container.3 * if items entity @s container.11 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:3}
execute if items entity @s container.4 * if items entity @s container.12 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:4}
execute if items entity @s container.5 * if items entity @s container.13 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:5}
execute if items entity @s container.6 * if items entity @s container.14 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:6}
execute if items entity @s container.7 * if items entity @s container.15 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:7}
execute if items entity @s container.8 * if items entity @s container.16 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:8}

execute if items entity @s container.9 * if items entity @s container.17 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:9}
execute if items entity @s container.10 * if items entity @s container.18 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:10}
execute if items entity @s container.11 * if items entity @s container.19 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:11}
execute if items entity @s container.12 * if items entity @s container.20 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:12}
execute if items entity @s container.13 * if items entity @s container.21 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:13}
execute if items entity @s container.14 * if items entity @s container.22 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:14}
execute if items entity @s container.15 * if items entity @s container.23 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:15}
execute if items entity @s container.16 * if items entity @s container.24 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:16}
execute if items entity @s container.17 * if items entity @s container.25 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:17}

execute if items entity @s container.18 * if items entity @s container.26 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:18}
execute if items entity @s container.19 * if items entity @s container.27 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:19}
execute if items entity @s container.20 * if items entity @s container.28 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:20}
execute if items entity @s container.21 * if items entity @s container.29 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:21}
execute if items entity @s container.22 * if items entity @s container.30 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:22}
execute if items entity @s container.23 * if items entity @s container.31 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:23}
execute if items entity @s container.24 * if items entity @s container.32 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:24}
execute if items entity @s container.25 * if items entity @s container.33 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:25}
execute if items entity @s container.26 * if items entity @s container.34 *[custom_data~{unt-1.blocks_diagonal_up_right:1b}] run function unt-1:inventory/return-item {slot:26}