#by JiuJiu

#自动游戏系统计时
execute if score #auto auto_time matches 1.. run scoreboard players remove #auto auto_time 1
execute if score #auto auto_time matches 0 run scoreboard players add #auto auto_step 1

#游戏进程
execute if score #auto auto_step matches 1 if score #auto auto_time matches 600 run function pvp:system/run/auto/step1
execute if score #auto auto_step matches 1 if score #auto auto_time matches 200 run tellraw @a[tag=ingame] {"text": "[游戏] 10秒后进入战场，请确认选择职业","color": "yellow"}
execute if score #auto auto_step matches 2 if score #auto auto_time matches 0 run function pvp:system/run/auto/step2