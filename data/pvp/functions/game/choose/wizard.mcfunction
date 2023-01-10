#by JiuJiu

scoreboard players set @s rid 5
scoreboard players set @s cd 0
scoreboard players set @s charge 0
scoreboard players add R5法师 role_pick_times 1

clear @s

<<<<<<< HEAD
item replace entity @s container.0 with ender_eye{CustomModelData:1,rid:5,display:{Name:'[{"text":"法杖","italic":false}]'}}
item replace entity @s container.1 with carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

item replace entity @s armor.head with minecraft:leather_helmet{Unbreakable:1b,Damage:0,display:{color: 5447398}}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b,Damage:0,display:{color: 5447398}}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1b,Damage:0,display:{color: 5447398}}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1b,Damage:0,display:{color: 5447398}}
=======
item replace entity @s container.0 with carrot_on_a_stick{CustomModelData: 11, rid: 5, display: {Name: '[{"text":"法杖","italic":false}]'}}
item replace entity @s container.1 with carrot_on_a_stick{CustomModelData: 21, cage: 1, display: {Name: '[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

item replace entity @s armor.head with minecraft:leather_helmet{Unbreakable: 1, Damage: 0, display: {color: 5447398}}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable: 1, Damage: 0, display: {color: 5447398}}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable: 1, Damage: 0, display: {color: 5447398}}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable: 1, Damage: 0, display: {color: 5447398}}
>>>>>>> origin

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "法师","color": "red"}]

