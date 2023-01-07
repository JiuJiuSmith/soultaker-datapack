#by JiuJiu

##忍者-结束弹刀
scoreboard players set @s katana 2
scoreboard players set @s cd 14
scoreboard players set @s defend 0
scoreboard players set @s defend_end -1
clear @s[nbt=!{SelectedItem:{tag:{katana:3}}}] ender_eye{katana:3}
give @s[nbt=!{SelectedItem:{tag:{katana:3}}}] ender_eye{CustomModelData:3,katana:2,display:{Name:'[{"text":"太刀","color":"white","italic": false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Operation:0,Amount:3,Slot:"mainhand",Name:"Armor",UUID:[I;17,18,19,20]},{AttributeName:"generic.attack_speed",Operation:0,Amount:-3,Slot:"mainhand",Name:"Armor",UUID:[I;21,22,23,24]}]}
item replace entity @s[nbt={SelectedItem:{tag:{katana:3}}}] weapon.mainhand with ender_eye{CustomModelData:3,katana:2,display:{Name:'[{"text":"太刀","color":"white","italic": false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Operation:0,Amount:5,Slot:"mainhand",Name:"Armor",UUID:[I;17,18,19,20]},{AttributeName:"generic.attack_speed",Operation:0,Amount:-2,Slot:"mainhand",Name:"Armor",UUID:[I;21,22,23,24]}]}