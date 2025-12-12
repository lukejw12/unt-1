$item replace entity @s player.cursor with gray_dye[\
  max_stack_size=1,\
  custom_data={\
    unt-1.multi_slot:1b,\
    unt-1.rotatable:1b,\
    unt-1.item_type:"$(item_type)",\
    unt-1.rotation:$(rotation)b,\
    unt-1.offsets:$(offsets_nbt),\
    unt-1.fish_value:$(fish_value),\
    unt-1.condition:"$(fish_condition)"\
  },\
  item_model="unt-1:fish/shallow/$(item_type)/$(item_type)_$(model_string)",\
  lore=$(fish_lore),\
  item_name={"extra":[{"color":"white","text":" $(fish_display)","italic":false,"font":"minecraft:default"}],"text":"ꀀ","italic":false,"font":"unt-1:gui/sprites/emoticons"},\
  tooltip_style="unt-1:basic"\
]