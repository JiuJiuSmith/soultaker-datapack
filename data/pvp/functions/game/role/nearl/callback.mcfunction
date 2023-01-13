# By Azide 2023/01/13-14时

# 召回盾的技能
tag @s add me

execute as @a[tag=guarded] if score @s pid = @p[tag=me] guarded_pid run tag @s remove guarded

scoreboard players set @s guarded_pid -1

tag @s add guarded

tag @s remove me