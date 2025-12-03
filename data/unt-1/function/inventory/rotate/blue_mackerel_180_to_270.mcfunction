$item replace entity @s player.cursor with gray_dye[\
  max_stack_size=1,\
  custom_data={\
    unt-1.multi_slot:1b,\
    unt-1.rotatable:1b,\
    unt-1.item_type:"blue_mackerel",\
    unt-1.rotation:3b,\
    unt-1.blocks_up:1b,\
    unt-1.blocks_diagonal_up_right:1b,\
    unt-1.fish_value:$(fish_value),\
    unt-1.condition:"$(fish_condition)"\
  },\
  item_model="unt-1:fish/shallow/blue_mackerel/blue_mackerel_270",\
  lore=$(fish_lore),\
  item_name=$(fish_name),\
  tooltip_style="unt-1:basic"\
]

playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 0.3 1.8