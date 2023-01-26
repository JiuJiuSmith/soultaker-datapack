# By Azide 2023/01/13-21时

# 继承灵魂

tag @s add guarded_plus
tag @s add guarded
tag @p[tag=death] remove guarded

scoreboard players operation @s inherit_soul = @p[tag=death] soul 
scoreboard players operation @s soul += @p[tag=death] soul 

clear @s carrot_on_a_stick{CustomModelData:20, rid:9, nearl_shield:2, display:{Name:'[{"text":"传承之羽", "color":"gold", "bold": true, "italic": false}]',Lore:['[{"text":"召回传承之盾", "color":"yellow", "italic": false}]']}}
give @s carrot_on_a_stick{CustomModelData:15, rid:9, nearl_shield:3, display:{Name:'[{"text":"传承之盾", "color":"#80ffff", "bold": true, "italic": false}]'}}
