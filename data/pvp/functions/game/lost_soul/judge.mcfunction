#by JiuJiu

#距离与cd检测
tag @s add me

execute as @e[tag=point,tag=lost_soul,scores={enable=1},distance=..3] unless score @s soul_cd matches 0 run tag @p[tag=me] remove collect_soul
execute as @e[tag=point,tag=lost_soul,scores={enable=1},distance=..3] unless score @s soul_cd matches 0 run tellraw @p[tag=me] {"text": "[游戏] 离灵魂太远了","color": "yellow"}
tag @s[tag=max_soul] remove collect_soul

tag @s remove me

#时间检测
execute as @s[tag=collect_soul] run scoreboard players add @e[tag=point,tag=lost_soul,scores={enable=1},distance=..3] collect_time 1
execute as @s[tag=collect_soul] if score @e[tag=point,tag=lost_soul,scores={enable=1},distance=..3,limit=1] collect_time matches 160.. run function pvp:game/lost_soul/give
