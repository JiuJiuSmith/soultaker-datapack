#by JiuJiu

#距离与cd检测
execute unless entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tag @s remove collect_soul
execute unless entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tellraw @s {"text": "[游戏] 离灵魂太远了","color": "yellow"}
tag @s[tag=max_soul] remove collect_soul

#时间检测
execute as @s[tag=collect_soul] run scoreboard players add @e[tag=point,tag=lost_soul,distance=..3] collect_time 1
execute as @s[tag=collect_soul] if score @e[tag=point,tag=lost_soul,distance=..3,limit=1] collect_time matches 160.. run function pvp:game/lost_soul/give
