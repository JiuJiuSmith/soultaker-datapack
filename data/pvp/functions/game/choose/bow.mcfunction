#by JiuJiu

scoreboard players set @s rid 3

clear @s

item replace entity @s container.0 with minecraft:wooden_sword{CustomModelData: 8, Unbreakable: 1, display: {Name: '[{"text":"匕首","italic":false}]'}}
item replace entity @s container.1 with minecraft:bow{Unbreakable: 1}
item replace entity @s container.2 with minecraft:arrow 32
item replace entity @s container.3 with carrot_on_a_stick{CustomModelData: 21, cage: 1, display: {Name: '[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

item replace entity @s armor.head with minecraft:leather_helmet{Unbreakable: 1, Damage: 0, display: {color: 3333923}}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable: 1, Damage: 0, display: {color: 3333923}}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable: 1, Damage: 0, display: {color: 10064205}}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable: 1}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "游侠","color": "red"}]