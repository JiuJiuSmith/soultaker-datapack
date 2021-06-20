#by JiuJiu

scoreboard players set @s rid 4

clear @s

replaceitem entity @s weapon.offhand minecraft:crossbow{Unbreakable:1}
replaceitem entity @s container.0 minecraft:iron_pickaxe{CustomModelData:7,Unbreakable:1,display:{Name:'[{"text":"钉锤","italic":false}]'}}
replaceitem entity @s container.1 minecraft:tipped_arrow{CustomModelData:1,CustomPotionEffects:[{Id:7,Amplifier:0,Duration:1}],CustomPotionColor:-1} 12
replaceitem entity @s container.2 minecraft:tipped_arrow{CustomModelData:2,CustomPotionEffects:[{Id:15,Amplifier:0,Duration:600}],CustomPotionColor:-1} 12
replaceitem entity @s container.3 minecraft:tipped_arrow{CustomModelData:3,CustomPotionEffects:[{Id:18,Amplifier:0,Duration:600}],CustomPotionColor:-1} 12
replaceitem entity @s container.4 carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

replaceitem entity @s armor.head minecraft:leather_helmet{Unbreakable:1}
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1}
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "弩手","color": "red"}]