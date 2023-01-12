#by JiuJiu

#选择狂战士
##计分板
scoreboard players set @s rid 2
scoreboard players set @s cd 0
scoreboard players add R2狂战士 role_pick_times 1

clear @s
##物品
item replace entity @s container.0 with minecraft:iron_axe{CustomModelData:13,Unbreakable:1b}
item replace entity @s container.1 with carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}
##护甲
item replace entity @s armor.head with minecraft:chainmail_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:chainmail_chestplate{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Operation:0,Amount:4,Slot:"chest",Name:"Armor",UUID:[I;1,2,3,4]}]}
item replace entity @s armor.legs with minecraft:chainmail_leggings{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Operation:0,Amount:3,Slot:"legs",Name:"Armor",UUID:[I;5,6,7,8]}]}
item replace entity @s armor.feet with minecraft:chainmail_boots{Unbreakable:1b}

##文本提示
tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "狂战士","color": "red"}]