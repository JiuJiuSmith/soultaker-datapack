#by JiuJiu

#选择牧师
##计分板
scoreboard players set @s rid 6
scoreboard players set @s cd 0
scoreboard players add R6牧师 role_pick_times 1

clear @s
##物品
item replace entity @s container.0 with carrot_on_a_stick{CustomModelData:12,rid:6,display:{Name:'[{"text":"灵魂书","italic":false}]'}}
item replace entity @s container.1 with carrot_on_a_stick{CustomModelData:21,cage:1,display:{Name:'[{"text":"灵魂容器","color":"aqua","italic": false}]'}}
##护甲
item replace entity @s armor.head with minecraft:leather_helmet{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}],Damage:0,display:{color: 3223857}}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}],Damage:0,display:{color: 3223857}}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}],Damage:0,display:{color: 3223857}}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}],Damage:0,display:{color: 3223857}}

##文本提示
tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "牧师","color": "red"}]