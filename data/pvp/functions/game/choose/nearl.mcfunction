# By Azide 2023/01/12-15时

# 选择耀骑士

## 计分板
scoreboard players set @s rid 9
scoreboard players set @s cd 0
scoreboard players add R9耀骑士 role_pick_times 1
scoreboard players set @s blazing_sun 0

tag @s add guarded

clear @s
##物品 WIP!
item replace entity @s container.0 with carrot_on_a_stick{CustomModelData:17, blazing_sun:0, display:{Name:'[{"text":"耀阳", "color":"gold", "bold": true, "italic": false}]'}, AttributeModifiers:[{AttributeName:"generic.attack_damage", Operation:0, Amount:4, Slot:"mainhand", Name:"Armor", UUID:[I;2376,8811,7442,3900]},{AttributeName:"generic.attack_speed",Operation:0,Amount:-2.4,Slot:"mainhand",Name:"Armor",UUID:[I;2231,1732,9123,4204]}]}
item replace entity @s container.1 with carrot_on_a_stick{CustomModelData:18, rid:9, nearl_shield:1, display:{Name:'[{"text":"神圣之盾", "color":"gold", "bold": true, "italic": false}]'}}
item replace entity @s container.3 with carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}
##护甲 WIP!
item replace entity @s armor.head with minecraft:golden_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:golden_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with minecraft:golden_leggings{Unbreakable:1b}
item replace entity @s armor.feet with minecraft:golden_boots{Unbreakable:1b}

## 文本提示
tellraw @s [{"text": "[游戏] 你选择了成为", "color": "yellow"}, {"text": "耀骑士", "color": "red"}]
