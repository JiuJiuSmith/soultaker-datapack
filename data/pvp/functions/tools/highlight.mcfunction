#pvp
#by JiuJiu

#高亮
effect give @e[tag=point_set] glowing 3 1
effect give @e[tag=point] glowing 3 1
execute at @e[tag=point] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.05 1
execute at @e[tag=point_set] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.05 1