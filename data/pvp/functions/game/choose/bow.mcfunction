#by JiuJiu

#选择游侠
##计分板
scoreboard players set @s rid 3
scoreboard players add R3游侠 role_pick_times 1

clear @s
##物品
item replace entity @s container.0 with minecraft:wooden_sword{CustomModelData:8,Unbreakable:1b,display:{Name:'[{"text":"匕首","italic":false}]'}}
item replace entity @s container.1 with minecraft:bow{Unbreakable:1b}
item replace entity @s container.2 with minecraft:arrow 32
item replace entity @s container.3 with carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}
##护甲
item replace entity @s armor.head with minecraft:leather_helmet{Unbreakable:1b,Damage:0,display:{color: 3333923}}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b,Damage:0,display:{color: 3333923}}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1b,Damage:0,display:{color: 10064205}}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1b,Damage:0,display:{color: 3223857}}

##文本提示
tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "游侠","color": "red"}]