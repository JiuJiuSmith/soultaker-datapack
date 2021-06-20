#by JiuJiu

scoreboard players set @s rid 5
scoreboard players set @s cd 0
scoreboard players set @s charge 0

clear @s

replaceitem entity @s container.0 carrot_on_a_stick{CustomModelData:11,rid:5,display:{Name:'[{"text":"法杖","italic":false}]'}}
replaceitem entity @s container.1 carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

replaceitem entity @s armor.head minecraft:leather_helmet{Unbreakable:1,Damage:0,display:{color: 5447398}}
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Damage:0,display:{color: 5447398}}
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1,Damage:0,display:{color: 5447398}}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1,Damage:0,display:{color: 5447398}}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "法师","color": "red"}]

