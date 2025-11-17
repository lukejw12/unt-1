# Right edge - items that block right can't be placed in right column
execute if items entity @s container.8 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:8}
execute if items entity @s container.17 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:17}
execute if items entity @s container.26 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:26}
execute if items entity @s container.35 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:35}

# Left edge - items that block left can't be placed in first column
execute if items entity @s container.0 *[custom_data~{unt-1.blocks_left:1b}] run return run function unt-1:inventory/return-item {slot:0}
execute if items entity @s container.9 *[custom_data~{unt-1.blocks_left:1b}] run return run function unt-1:inventory/return-item {slot:9}
execute if items entity @s container.18 *[custom_data~{unt-1.blocks_left:1b}] run return run function unt-1:inventory/return-item {slot:18}
execute if items entity @s container.27 *[custom_data~{unt-1.blocks_left:1b}] run return run function unt-1:inventory/return-item {slot:27}

# Top row - items that block up can't be placed in first row (hotbar)
execute if items entity @s container.0 *[custom_data~{unt-1.blocks_up:1b}] run return run function unt-1:inventory/return-item {slot:0}
execute if items entity @s container.1 *[custom_data~{unt-1.blocks_up:1b}] run return run function unt-1:inventory/return-item {slot:1}
execute if items entity @s container.2 *[custom_data~{unt-1.blocks_up:1b}] run return run function unt-1:inventory/return-item {slot:2}
execute if items entity @s container.3 *[custom_data~{unt-1.blocks_up:1b}] run return run function unt-1:inventory/return-item {slot:3}
execute if items entity @s container.4 *[custom_data~{unt-1.blocks_up:1b}] run return run function unt-1:inventory/return-item {slot:4}
execute if items entity @s container.5 *[custom_data~{unt-1.blocks_up:1b}] run return run function unt-1:inventory/return-item {slot:5}
execute if items entity @s container.6 *[custom_data~{unt-1.blocks_up:1b}] run return run function unt-1:inventory/return-item {slot:6}
execute if items entity @s container.7 *[custom_data~{unt-1.blocks_up:1b}] run return run function unt-1:inventory/return-item {slot:7}
execute if items entity @s container.8 *[custom_data~{unt-1.blocks_up:1b}] run return run function unt-1:inventory/return-item {slot:8}

# Bottom row - items that block down can't be placed in last row
execute if items entity @s container.27 *[custom_data~{unt-1.blocks_down:1b}] run return run function unt-1:inventory/return-item {slot:27}
execute if items entity @s container.28 *[custom_data~{unt-1.blocks_down:1b}] run return run function unt-1:inventory/return-item {slot:28}
execute if items entity @s container.29 *[custom_data~{unt-1.blocks_down:1b}] run return run function unt-1:inventory/return-item {slot:29}
execute if items entity @s container.30 *[custom_data~{unt-1.blocks_down:1b}] run return run function unt-1:inventory/return-item {slot:30}
execute if items entity @s container.31 *[custom_data~{unt-1.blocks_down:1b}] run return run function unt-1:inventory/return-item {slot:31}
execute if items entity @s container.32 *[custom_data~{unt-1.blocks_down:1b}] run return run function unt-1:inventory/return-item {slot:32}
execute if items entity @s container.33 *[custom_data~{unt-1.blocks_down:1b}] run return run function unt-1:inventory/return-item {slot:33}
execute if items entity @s container.34 *[custom_data~{unt-1.blocks_down:1b}] run return run function unt-1:inventory/return-item {slot:34}
execute if items entity @s container.35 *[custom_data~{unt-1.blocks_down:1b}] run return run function unt-1:inventory/return-item {slot:35}

# Bottom row - items that block diagonal down (existing check for old rotation)
execute if items entity @s container.27 *[custom_data~{unt-1.blocks_diagonal:1b}] run return run function unt-1:inventory/return-item {slot:27}
execute if items entity @s container.28 *[custom_data~{unt-1.blocks_diagonal:1b}] run return run function unt-1:inventory/return-item {slot:28}
execute if items entity @s container.29 *[custom_data~{unt-1.blocks_diagonal:1b}] run return run function unt-1:inventory/return-item {slot:29}
execute if items entity @s container.30 *[custom_data~{unt-1.blocks_diagonal:1b}] run return run function unt-1:inventory/return-item {slot:30}
execute if items entity @s container.31 *[custom_data~{unt-1.blocks_diagonal:1b}] run return run function unt-1:inventory/return-item {slot:31}
execute if items entity @s container.32 *[custom_data~{unt-1.blocks_diagonal:1b}] run return run function unt-1:inventory/return-item {slot:32}
execute if items entity @s container.33 *[custom_data~{unt-1.blocks_diagonal:1b}] run return run function unt-1:inventory/return-item {slot:33}
execute if items entity @s container.34 *[custom_data~{unt-1.blocks_diagonal:1b}] run return run function unt-1:inventory/return-item {slot:34}
execute if items entity @s container.35 *[custom_data~{unt-1.blocks_diagonal:1b}] run return run function unt-1:inventory/return-item {slot:35}

# Check for overlapping blocked zones (keep existing checks)
execute if items entity @s container.0 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.9 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:9}
execute if items entity @s container.1 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.10 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:10}
execute if items entity @s container.2 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.11 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:11}
execute if items entity @s container.3 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.12 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:12}
execute if items entity @s container.4 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.13 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:13}
execute if items entity @s container.5 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.14 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:14}
execute if items entity @s container.6 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.15 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:15}
execute if items entity @s container.7 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.16 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:16}

execute if items entity @s container.9 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.18 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:18}
execute if items entity @s container.10 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.19 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:19}
execute if items entity @s container.11 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.20 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:20}
execute if items entity @s container.12 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.21 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:21}
execute if items entity @s container.13 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.22 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:22}
execute if items entity @s container.14 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.23 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:23}
execute if items entity @s container.15 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.24 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:24}
execute if items entity @s container.16 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.25 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:25}

execute if items entity @s container.18 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.27 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:27}
execute if items entity @s container.19 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.28 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:28}
execute if items entity @s container.20 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.29 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:29}
execute if items entity @s container.21 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.30 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:30}
execute if items entity @s container.22 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.31 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:31}
execute if items entity @s container.23 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.32 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:32}
execute if items entity @s container.24 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.33 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:33}
execute if items entity @s container.25 *[custom_data~{unt-1.blocks_diagonal:1b}] if items entity @s container.34 *[custom_data~{unt-1.blocks_right:1b}] run return run function unt-1:inventory/return-item {slot:34}

# Call all the helper check functions
function unt-1:inventory/check-slots-0-6
function unt-1:inventory/check-slots-9-16
function unt-1:inventory/check-slots-18-25
function unt-1:inventory/check-slots-27-34
function unt-1:inventory/check-right-blocks
function unt-1:inventory/check-left-blocks
function unt-1:inventory/check-up-blocks
function unt-1:inventory/check-down-blocks
function unt-1:inventory/check-diagonal-blocks
function unt-1:inventory/check-diagonal-down-left-blocks
function unt-1:inventory/check-diagonal-up-left-blocks
function unt-1:inventory/check-diagonal-up-right-blocks