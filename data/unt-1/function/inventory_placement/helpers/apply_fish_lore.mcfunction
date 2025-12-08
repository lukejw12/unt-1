$execute if data storage unt-1:temp {fish:"cod"} if score @s unt-1.inv_slot matches $(slot) run item modify entity @s container.$(slot) [\
{"function":"set_lore","lore":[{color:"white",italic:false,text:"Size:             ",extra:[{color:"$(color_type)",italic:false,text:"$(feet_whole).$(feet_decimal)\""}]}],"mode":"append"},\
{"function":"set_lore","lore":[{color:"white",italic:false,text:"Condition:      ",extra:[{color:"green",italic:false,text:"Fresh"}]}],"mode":"append"},\
{"function":"set_lore","lore":[{color:"white",italic:false,text:"Type:        Shallows"}],"mode":"append"},\
{"function":"set_lore","lore":[" "],"mode":"append"},\
{"function":"set_lore","lore":[{color:"#8C735C",italic:false,text:"Common and Basic"}],"mode":"append"},\
{"function":"set_lore","lore":[" "],"mode":"append"},\
{"function":"set_lore","lore":[{color:"white",italic:false,text:"Sell Value:  [",extra:[{color:"green",italic:false,text:"$$(fish_value_dollars).$(fish_value_cents)"},{color:"white",italic:false,text:"]"}]}],"mode":"append"},\
{"function":"set_custom_data","tag":{"unt-1.fish_value":$(fish_value_total),"unt-1.condition":"fresh"}},\
{"function":"set_components","components":{"minecraft:tooltip_style":"unt-1:basic"}}\
]

$execute if data storage unt-1:temp {fish:"blue_mackerel"} if score @s unt-1.inv_slot matches $(slot) run item modify entity @s container.$(slot) [\
{"function":"set_lore","lore":[{color:"white",italic:false,text:"Size:             ",extra:[{color:"$(color_type)",italic:false,text:"$(feet_whole).$(feet_decimal)\""}]}],"mode":"append"},\
{"function":"set_lore","lore":[{color:"white",italic:false,text:"Condition:      ",extra:[{color:"green",italic:false,text:"Fresh"}]}],"mode":"append"},\
{"function":"set_lore","lore":[{color:"white",italic:false,text:"Type:        Shallows"}],"mode":"append"},\
{"function":"set_lore","lore":[" "],"mode":"append"},\
{"function":"set_lore","lore":[{color:"#8C735C",italic:false,text:"Essentially trash,"}],"mode":"append"},\
{"function":"set_lore","lore":[{color:"#8C735C",italic:false,text:"found plentifully"}],"mode":"append"},\
{"function":"set_lore","lore":[" "],"mode":"append"},\
{"function":"set_lore","lore":[{color:"white",italic:false,text:"Sell Value:  [",extra:[{color:"green",italic:false,text:"$$(fish_value_dollars).$(fish_value_cents)"},{color:"white",italic:false,text:"]"}]}],"mode":"append"},\
{"function":"set_custom_data","tag":{"unt-1.fish_value":$(fish_value_total),"unt-1.condition":"fresh"}},\
{"function":"set_components","components":{"minecraft:tooltip_style":"unt-1:basic"}}\
]