execute store result score #backup_0 unt-1.temp run data get storage unt-1:occupation_map slot_0
execute store result score #backup_1 unt-1.temp run data get storage unt-1:occupation_map slot_1
execute store result score #backup_2 unt-1.temp run data get storage unt-1:occupation_map slot_2
execute store result score #backup_3 unt-1.temp run data get storage unt-1:occupation_map slot_3
execute store result score #backup_4 unt-1.temp run data get storage unt-1:occupation_map slot_4
execute store result score #backup_5 unt-1.temp run data get storage unt-1:occupation_map slot_5
execute store result score #backup_6 unt-1.temp run data get storage unt-1:occupation_map slot_6
execute store result score #backup_7 unt-1.temp run data get storage unt-1:occupation_map slot_7
execute store result score #backup_8 unt-1.temp run data get storage unt-1:occupation_map slot_8
execute store result score #backup_9 unt-1.temp run data get storage unt-1:occupation_map slot_9
execute store result score #backup_10 unt-1.temp run data get storage unt-1:occupation_map slot_10
execute store result score #backup_11 unt-1.temp run data get storage unt-1:occupation_map slot_11
execute store result score #backup_12 unt-1.temp run data get storage unt-1:occupation_map slot_12
execute store result score #backup_13 unt-1.temp run data get storage unt-1:occupation_map slot_13
execute store result score #backup_14 unt-1.temp run data get storage unt-1:occupation_map slot_14
execute store result score #backup_15 unt-1.temp run data get storage unt-1:occupation_map slot_15
execute store result score #backup_16 unt-1.temp run data get storage unt-1:occupation_map slot_16
execute store result score #backup_17 unt-1.temp run data get storage unt-1:occupation_map slot_17
execute store result score #backup_18 unt-1.temp run data get storage unt-1:occupation_map slot_18
execute store result score #backup_19 unt-1.temp run data get storage unt-1:occupation_map slot_19
execute store result score #backup_20 unt-1.temp run data get storage unt-1:occupation_map slot_20
execute store result score #backup_21 unt-1.temp run data get storage unt-1:occupation_map slot_21
execute store result score #backup_22 unt-1.temp run data get storage unt-1:occupation_map slot_22
execute store result score #backup_23 unt-1.temp run data get storage unt-1:occupation_map slot_23
execute store result score #backup_24 unt-1.temp run data get storage unt-1:occupation_map slot_24
execute store result score #backup_25 unt-1.temp run data get storage unt-1:occupation_map slot_25
execute store result score #backup_26 unt-1.temp run data get storage unt-1:occupation_map slot_26
execute store result score #backup_27 unt-1.temp run data get storage unt-1:occupation_map slot_27
execute store result score #backup_28 unt-1.temp run data get storage unt-1:occupation_map slot_28
execute store result score #backup_29 unt-1.temp run data get storage unt-1:occupation_map slot_29
execute store result score #backup_30 unt-1.temp run data get storage unt-1:occupation_map slot_30
execute store result score #backup_31 unt-1.temp run data get storage unt-1:occupation_map slot_31
execute store result score #backup_32 unt-1.temp run data get storage unt-1:occupation_map slot_32
execute store result score #backup_33 unt-1.temp run data get storage unt-1:occupation_map slot_33
execute store result score #backup_34 unt-1.temp run data get storage unt-1:occupation_map slot_34
execute store result score #backup_35 unt-1.temp run data get storage unt-1:occupation_map slot_35

function unt-1:inventory/rebuild_occupation_map


execute if items entity @s container.0 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:0}
execute if items entity @s container.1 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:1}
execute if items entity @s container.2 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:2}
execute if items entity @s container.3 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:3}
execute if items entity @s container.4 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:4}
execute if items entity @s container.5 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:5}
execute if items entity @s container.6 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:6}
execute if items entity @s container.7 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:7}
execute if items entity @s container.8 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:8}
execute if items entity @s container.9 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:9}
execute if items entity @s container.10 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:10}
execute if items entity @s container.11 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:11}
execute if items entity @s container.12 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:12}
execute if items entity @s container.13 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:13}
execute if items entity @s container.14 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:14}
execute if items entity @s container.15 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:15}
execute if items entity @s container.16 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:16}
execute if items entity @s container.17 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:17}
execute if items entity @s container.18 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:18}
execute if items entity @s container.19 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:19}
execute if items entity @s container.20 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:20}
execute if items entity @s container.21 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:21}
execute if items entity @s container.22 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:22}
execute if items entity @s container.23 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:23}
execute if items entity @s container.24 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:24}
execute if items entity @s container.25 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:25}
execute if items entity @s container.26 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:26}
execute if items entity @s container.27 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:27}
execute if items entity @s container.28 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:28}
execute if items entity @s container.29 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:29}
execute if items entity @s container.30 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:30}
execute if items entity @s container.31 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:31}
execute if items entity @s container.32 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:32}
execute if items entity @s container.33 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:33}
execute if items entity @s container.34 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:34}
execute if items entity @s container.35 *[custom_data~{unt-1.multi_slot:1b}] run function unt-1:inventory/validation/validate_single_fish {slot:35}