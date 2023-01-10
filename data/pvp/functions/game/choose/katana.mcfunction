#by JiuJiu

scoreboard players set @s rid 8
scoreboard players set @s cd 0
scoreboard players add R8武士 role_pick_times 1
scoreboard players set @s katana 1

clear @s

item replace entity @s container.0 with carrot_on_a_stick{CustomModelData:15,katana:1,display:{Name:'[{"text":"刀鞘","color":"white","italic": false}]'}}

item replace entity @s armor.head with minecraft:leather_helmet{Unbreakable:1b,Damage:0,display:{color: 4008233}}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b,Damage:0,AttributeModifiers:[{AttributeName:"generic.armor",Operation:0,Amount:4,Slot:"chest",Name:"Armor",UUID:[I;25,26,27,28]}],display:{color:15233282}}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1b,Damage:0,AttributeModifiers:[{AttributeName:"generic.armor",Operation:0,Amount:3,Slot:"chest",Name:"Armor",UUID:[I;29,30,31,32]}],display:{color: 10064205}}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1b,Damage:0,display:{color: 5787648}}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "武士","color": "red"}]