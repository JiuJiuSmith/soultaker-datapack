# By Azide 2023/01/13-21时

# 继承灵魂

tag @s add guarded_plus
scoreboard players operation @s soul += @p[tag=death] soul 
clear @s carrot_on_a_stick{CustomModelData:18, rid:9, nearl_shield:2, display:{Name:'[{"text":"盾之召回", "color":"gold", "bold": true, "italic": false}]'}}
give @s carrot_on_a_stick{CustomModelData:15, rid:9, nearl_shield:1, display:{Name:'[{"text":"传承之盾", "color":"gold", "bold": true, "italic": false}]'}}