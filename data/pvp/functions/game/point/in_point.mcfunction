#by JiuJiu

#占领点位中效果
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.05 2

#释放灵魂倒计时UI显示
scoreboard players set #release_time release_time 162
scoreboard players operation #release_time release_time -= @s shift_time
scoreboard players operation #release_time release_s = #release_time release_time 
scoreboard players operation #release_time release_0.1s = #release_time release_time
scoreboard players operation #release_time release_s /= #20 operation
scoreboard players operation #release_time release_0.1s %= #20 operation
scoreboard players operation #release_time release_0.1s /= #2 operation

title @s times 0 5 0
title @s subtitle [{"text": "释放中 ","color": "aqua"},{"score":{"name":"#release_time","objective":"release_s"},"color":"white"},{"text": ".","color": "white"},{"score":{"name":"#release_time","objective":"release_0.1s"},"color":"white"}]
title @s title {"text": ""}

#移除标签
tag @s remove shift