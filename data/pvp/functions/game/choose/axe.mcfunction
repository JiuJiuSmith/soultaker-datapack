#by JiuJiu

scoreboard players set @s rid 2
scoreboard players set @s cd 0

clear @s

replaceitem entity @s container.0 minecraft:iron_axe{CustomModelData:13,Unbreakable:1}
replaceitem entity @s container.1 carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

replaceitem entity @s armor.head minecraft:chainmail_helmet{Unbreakable:1}
replaceitem entity @s armor.chest minecraft:chainmail_chestplate{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Operation:0,Amount:4,Slot:"chest",Name:"Armor",UUID:[I;1,2,3,4]}]}
replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Operation:0,Amount:3,Slot:"legs",Name:"Armor",UUID:[I;5,6,7,8]}]}
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "狂战士","color": "red"}]