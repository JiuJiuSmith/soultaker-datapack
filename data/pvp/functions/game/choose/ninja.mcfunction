#by JiuJiu

scoreboard players set @s rid 8
scoreboard players set @s cd 0
scoreboard players add R8忍者 role_pick_times 1
scoreboard players set @s katana 1

clear @s

item replace entity @s container.0 with carrot_on_a_stick{CustomModelData:15,katana:1,display:{Name:'[{"text":"太刀","color":"white","italic": false}]'}}
item replace entity @s container.1 with carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

item replace entity @s armor.head with minecraft:leather_helmet{Unbreakable:1b,Damage:0,display:{color: 4008233}}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b,Damage:0,display:{color:15233282}}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1b,Damage:0,display:{color: 10064205}}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1b,Damage:0,display:{color: 5787648}}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "忍者","color": "red"}]