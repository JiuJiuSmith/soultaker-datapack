#by JiuJiu 2023/01/18-16时

tag @s add me

execute as @e[tag=guarded_display_entity] if score @s pid = @p[tag=me] pid run data modify entity @s Pos set from entity @p[tag=me] Pos
execute as @e[tag=guarded_display_entity] at @s if score @s pid = @p[tag=me] pid run particle minecraft:dust_color_transition 0 1 1 1 1 1 0 ^0.2 ^1 ^0.6 0 0 0 0 1
execute as @e[tag=guarded_display_entity] at @s run tp @s ~ ~ ~ ~ ~

tag @s remove me