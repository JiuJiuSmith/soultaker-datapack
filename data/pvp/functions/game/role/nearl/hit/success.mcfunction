# By Azide 2023/01/13-15时

# 成功选择到给盾玩家后的操作 

tag @s remove guarded
give @s carrot_on_a_stick{CustomModelData:20, rid:9, nearl_shield:2, display:{Name:'[{"text":"传承之羽", "color":"gold", "bold": true, "italic": false}]',Lore:['[{"text":"召回传承之盾", "color":"yellow", "italic": false}]']}}
scoreboard players operation @s guarded_pid = @p[tag=me] pid
