#by JiuJiu 2023/01/18-21时

tag @s add me
execute as @e[tag=guarded_display_entity] if score @s pid = @p[tag=me] pid run kill @s
tag @s remove me
tag @s remove guarded_display 