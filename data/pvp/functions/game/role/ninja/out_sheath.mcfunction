#by JiuJiu

##忍者-拔刀
item replace entity @s weapon.mainhand with ender_eye{CustomModelData:3,katana:2,display:{Name:'[{"text":"太刀","color":"white","italic": false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Operation:0,Amount:5,Slot:"mainhand",Name:"Armor",UUID:[I;17,18,19,20]},{AttributeName:"generic.attack_speed",Operation:0,Amount:-2,Slot:"mainhand",Name:"Armor",UUID:[I;21,22,23,24]}]}
clear @s carrot_on_a_stick{CustomModelData:15}
scoreboard players set @s katana 2
