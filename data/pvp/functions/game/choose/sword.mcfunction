#by JiuJiu

scoreboard players set @s rid 1
scoreboard players add R1剑士 role_pick_times 1

clear @s

item replace entity @s container.0 with minecraft:iron_sword{Unbreakable:1b}
item replace entity @s[team=red] weapon.offhand with minecraft:shield{Unbreakable:1b,BlockEntityTag:{Patterns:[{Pattern:"bri",Color:0},{Pattern:"mr",Color:14},{Pattern:"sc",Color:14}],Base:8}}
item replace entity @s[team=blue] weapon.offhand with minecraft:shield{Unbreakable:1b,BlockEntityTag:{Patterns:[{Pattern:"bri",Color:0},{Pattern:"mr",Color:11},{Pattern:"sc",Color:11}],Base:8}}
item replace entity @s container.1 with carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

item replace entity @s armor.head with minecraft:iron_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with minecraft:iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with minecraft:iron_boots{Unbreakable:1b}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "剑士","color": "red"}]
