#by JiuJiu

#加入游戏队列
tellraw @s[tag=!ingame] {"text": "[系统] 你加入了游戏","color": "aqua"}
tellraw @s[tag=ingame] {"text": "[系统] 你已经在游戏中","color": "aqua"}

tag @s add ingame
title @s clear
clear @s
