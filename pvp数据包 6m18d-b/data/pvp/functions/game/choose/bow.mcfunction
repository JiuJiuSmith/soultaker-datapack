#by JiuJiu

scoreboard players set @s rid 3

clear @s

replaceitem entity @s container.0 minecraft:wooden_sword{CustomModelData:8,Unbreakable:1,display:{Name:'[{"text":"匕首","italic":false}]'}}
replaceitem entity @s container.1 minecraft:bow{Unbreakable:1}
replaceitem entity @s container.2 minecraft:arrow 32
replaceitem entity @s container.3 carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

replaceitem entity @s armor.head minecraft:leather_helmet{Unbreakable:1,Damage:0,display:{color: 3333923}}
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,Damage:0,display:{color: 3333923}}
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1,Damage:0,display:{color: 10064205}}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "游侠","color": "red"}]