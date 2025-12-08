# ==========================================
# CORE CONSTANTS
# ==========================================
scoreboard players set #-1 unt-1.const -1
scoreboard players set #1 unt-1.const 1
scoreboard players set #2 unt-1.const 2
scoreboard players set #4 unt-1.const 4
scoreboard players set #5 unt-1.const 5
scoreboard players set #8 unt-1.const 8
scoreboard players set #9 unt-1.const 9
scoreboard players set #10 unt-1.const 10
scoreboard players set #16 unt-1.const 16
scoreboard players set #20 unt-1.const 20
scoreboard players set #23 unt-1.const 23
scoreboard players set #60 unt-1.const 60
scoreboard players set #100 unt-1.const 100
scoreboard players set #1200 unt-1.const 1200

# ==========================================
# FISH SIZE CONSTANTS (in hundredths of an inch)
# ==========================================
scoreboard players set #cod_max_length unt-1.const 4724
scoreboard players set #mackerel_max_length unt-1.const 1181

# ==========================================
# FISH VALUE CONSTANTS (in cents)
# ==========================================
scoreboard players set #cod_min_value unt-1.const 1530
scoreboard players set #cod_value_range unt-1.const 720
scoreboard players set #mackerel_min_value unt-1.const 850
scoreboard players set #mackerel_value_range unt-1.const 400

# ==========================================
# OLD FISH VALUE CONSTANTS
# ==========================================
scoreboard players set #cod_base unt-1.const 25
scoreboard players set #blue_mackerel_base unt-1.const 15
scoreboard players set #cod_range unt-1.const 35
scoreboard players set #blue_mackerel_range unt-1.const 25
scoreboard players set #cod_min unt-1.const 10
scoreboard players set #blue_mackerel_min unt-1.const 10

# ==========================================
# SCOREBOARDS - CORE
# ==========================================
scoreboard objectives add unt-1.const dummy
scoreboard objectives add unt-1.temp dummy

# ==========================================
# SCOREBOARDS - CAMERA & BOAT
# ==========================================
scoreboard objectives add unt-1.head_pitch dummy
scoreboard objectives add unt-1.camera_dist dummy
scoreboard objectives add unt-1.target_camera dummy
scoreboard objectives add unt-1.camera_diff dummy
scoreboard objectives add unt-1.motion_y dummy
scoreboard objectives add unt-1.current_yaw dummy
scoreboard objectives add unt-1.dock_distance dummy
scoreboard objectives add unt-1.target_dock_x dummy
scoreboard objectives add unt-1.target_dock_z dummy
scoreboard objectives add unt-1.target_dock_yaw dummy
scoreboard objectives add unt-1.docking_progress dummy
scoreboard objectives add unt-1.boat_x_approach dummy
scoreboard objectives add unt-1.boat_z_approach dummy
scoreboard objectives add unt-1.abs_x dummy
scoreboard objectives add unt-1.abs_z dummy
scoreboard objectives add unt-1.blocked dummy

# ==========================================
# SCOREBOARDS - INVENTORY
# ==========================================
scoreboard objectives add unt-1.inv_check dummy
scoreboard objectives add unt-1.inv_changed dummy
scoreboard objectives add unt-1.inv_slot dummy
scoreboard objectives add unt-1.rotation dummy
scoreboard objectives add unt-1.inv_rotation dummy
scoreboard objectives add unt-1.slot_free dummy
scoreboard objectives add unt-1.slot_occupied dummy

# ==========================================
# SCOREBOARDS - FISHING
# ==========================================
scoreboard objectives add unt-1.fishing_tick dummy
scoreboard objectives add unt-1.fishing_tick_delay dummy
scoreboard objectives add unt-1.fishing_progress dummy
scoreboard objectives add unt-1.fishing_target dummy
scoreboard objectives add unt-1.fishing_zone_size dummy
scoreboard objectives add unt-1.fishing_cooldown dummy
scoreboard objectives add unt-1.fishing_grace dummy
scoreboard objectives add unt-1.fishing_misses dummy
scoreboard objectives add unt-1.fishing_time dummy
scoreboard objectives add unt-1.cast_cooldown dummy
scoreboard objectives add unt-1.is_trophy_target dummy

# ==========================================
# SCOREBOARDS - FISHING ARROW & TARGET
# ==========================================
scoreboard objectives add unt-1.arrow_pos dummy
scoreboard objectives add unt-1.arrow_direction dummy
scoreboard players set #arrow_min unt-1.const 0
scoreboard players set #arrow_max unt-1.const 9

scoreboard objectives add unt-1.target_pos dummy
scoreboard objectives add unt-1.target_size dummy

# ==========================================
# SCOREBOARDS - INVENTORY PLACEMENT
# ==========================================
scoreboard objectives add unt-1.placement_success dummy

# ==========================================
# SCOREBOARDS - INDIVIDUAL SLOTS
# ==========================================
scoreboard objectives add unt-1.slot_9 dummy
scoreboard objectives add unt-1.slot_10 dummy
scoreboard objectives add unt-1.slot_11 dummy
scoreboard objectives add unt-1.slot_12 dummy
scoreboard objectives add unt-1.slot_13 dummy
scoreboard objectives add unt-1.slot_14 dummy
scoreboard objectives add unt-1.slot_15 dummy
scoreboard objectives add unt-1.slot_16 dummy
scoreboard objectives add unt-1.slot_17 dummy
scoreboard objectives add unt-1.slot_18 dummy
scoreboard objectives add unt-1.slot_19 dummy
scoreboard objectives add unt-1.slot_20 dummy
scoreboard objectives add unt-1.slot_21 dummy
scoreboard objectives add unt-1.slot_22 dummy
scoreboard objectives add unt-1.slot_23 dummy
scoreboard objectives add unt-1.slot_24 dummy
scoreboard objectives add unt-1.slot_25 dummy
scoreboard objectives add unt-1.slot_26 dummy
scoreboard objectives add unt-1.slot_27 dummy
scoreboard objectives add unt-1.slot_28 dummy
scoreboard objectives add unt-1.slot_29 dummy
scoreboard objectives add unt-1.slot_30 dummy
scoreboard objectives add unt-1.slot_31 dummy
scoreboard objectives add unt-1.slot_32 dummy
scoreboard objectives add unt-1.slot_33 dummy
scoreboard objectives add unt-1.slot_34 dummy
scoreboard objectives add unt-1.slot_35 dummy

# ==========================================
# FISH CONFIGURATION DATA
# ==========================================

# Blue Mackerel - 2-slot
data modify storage unt-1:fish_config blue_mackerel set value {\
  r0:{offsets:[0,1],model:"0",boundary_check:{type:"col",value:8}},\
  r1:{offsets:[0,9],model:"90",boundary_check:{min:27,max:35,type:"row"}},\
  r2:{offsets:[0,-1],model:"180",boundary_check:{type:"col",value:0}},\
  r3:{offsets:[0,-9],model:"270",boundary_check:{min:9,max:17,type:"row"}}\
}

# Cod - 3-slot
data modify storage unt-1:fish_config cod set value {\
  r0:{offsets:[0,1,10],model:"0",boundary_check:{type:"multi",checks:[{type:"col",value:8},{type:"row",min:27,max:35}]}},\
  r1:{offsets:[0,9,8],model:"90",boundary_check:{type:"multi",checks:[{type:"col",value:0},{type:"row",min:27,max:35}]}},\
  r2:{offsets:[0,-1,-10],model:"180",boundary_check:{type:"multi",checks:[{type:"col",value:0},{type:"row",min:9,max:17}]}},\
  r3:{offsets:[0,-9,-8],model:"270",boundary_check:{type:"multi",checks:[{type:"col",value:8},{type:"row",min:9,max:17}]}}\
}

# ==========================================
# FISH NAMES
# ==========================================
data modify storage unt-1:fish_names blue_mackerel set value "Blue Mackerel"
data modify storage unt-1:fish_names cod set value "Cod"

# ==========================================
# FISH DESCRIPTIONS
# ==========================================
data modify storage unt-1:fish_desc cod set value [{color:"#8C735C",italic:false,text:"Common and Basic"}]
data modify storage unt-1:fish_desc blue_mackerel set value [{color:"#8C735C",italic:false,text:"Essentially trash,"},{color:"#8C735C",italic:false,text:"found plentifully"}]