#by JiuJiu

scoreboard players set @s rid 7
scoreboard players set @s cd 0

clear @s

replaceitem entity @s container.0 carrot_on_a_stick{CustomModelData:11,rid:7,display:{Name:'[{"text":"镰刀","italic":false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Operation:0,Amount:3,Slot:"mainhand",Name:"Armor",UUID:[I;9,10,11,12]},{AttributeName:"generic.attack_speed",Operation:0,Amount:-1,Slot:"mainhand",Name:"Armor",UUID:[I;13,14,15,16]}]}

replaceitem entity @s armor.head minecraft:leather_helmet{Unbreakable:1,Damage:0,display:{color: 16777215}}
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Damage:0,display:{color: 16777215}}
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1,Damage:0,display:{color: 16777215}}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1,Damage:0,display:{color: 16777215}}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "死神","color": "red"}]