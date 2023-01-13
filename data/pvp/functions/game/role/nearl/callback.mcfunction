# By Azide 2023/01/13-14时

# 召回盾的技能
tag @s add me

execute as @a[tag=guarded] if score @s pid = @p[tag=me] guarded_pid run tag @s remove guarded

item replace entity @s weapon.mainhand with ender_eye{CustomModelData:2, rid:9, nearl_shield:1, display:{Name:'[{"text":"神圣之盾", "color":"gold", "bold": true, "italic": false}]'}}

scoreboard players set @s guarded_pid -1

tag @s add guarded
