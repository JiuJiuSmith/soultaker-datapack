#by JiuJiu

scoreboard players set @s rid 6
scoreboard players set @s cd 0

clear @s

replaceitem entity @s container.0 carrot_on_a_stick{CustomModelData:12,rid:6,display:{Name:'[{"text":"灵魂书","italic":false}]'}}
replaceitem entity @s container.1 carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

replaceitem entity @s armor.head minecraft:leather_helmet{Unbreakable:1,Damage:0,display:{color: 3223857}}
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Damage:0,display:{color: 3223857}}
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1,Damage:0,display:{color: 3223857}}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1,Damage:0,display:{color: 3223857}}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "牧师","color": "red"}]