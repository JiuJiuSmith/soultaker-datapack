#by JiuJiu

#scoreboard players reset @s pid
tellraw @s[tag=ingame] {"text": "[系统] 你退出了游戏","color": "aqua"}
tellraw @s[tag=!ingame] {"text": "[系统] 你并未进入游戏","color": "aqua"}
team leave @s 
tag @s remove ingame
clear @s
