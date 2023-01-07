#by JiuJiu

scoreboard players set @s rid 1

clear @s

replaceitem entity @s container.0 minecraft:iron_sword{Unbreakable:1}
replaceitem entity @s[team=red] weapon.offhand minecraft:shield{Unbreakable:1,BlockEntityTag:{Patterns:[{Pattern:"bri",Color:0},{Pattern:"mr",Color:14},{Pattern:"sc",Color:14}],Base:8}}
replaceitem entity @s[team=blue] weapon.offhand minecraft:shield{Unbreakable:1,BlockEntityTag:{Patterns:[{Pattern:"bri",Color:0},{Pattern:"mr",Color:11},{Pattern:"sc",Color:11}],Base:8}}
replaceitem entity @s container.1 carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

replaceitem entity @s armor.head minecraft:iron_helmet{Unbreakable:1}
replaceitem entity @s armor.chest minecraft:iron_chestplate{Unbreakable:1}
replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1}
replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "剑士","color": "red"}]
