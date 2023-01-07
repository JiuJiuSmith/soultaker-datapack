#by JiuJiu

##忍者-弹刀
scoreboard players set @s katana 3
item replace entity @s weapon.mainhand with ender_eye{CustomModelData:2,katana:3,display:{Name:'[{"text":"太刀","color":"white","italic": false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Operation:0,Amount:5,Slot:"mainhand",Name:"Armor",UUID:[I;17,18,19,20]},{AttributeName:"generic.attack_speed",Operation:0,Amount:-2,Slot:"mainhand",Name:"Armor",UUID:[I;21,22,23,24]}]}