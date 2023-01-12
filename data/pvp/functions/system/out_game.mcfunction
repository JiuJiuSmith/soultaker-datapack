#by JiuJiu

#退出游戏队列
tellraw @s[tag=ingame] {"text": "[系统] 你退出了游戏","color": "aqua"}
tellraw @s[tag=!ingame] {"text": "[系统] 你并未进入游戏","color": "aqua"}

team leave @s 
tag @s remove ingame
clear @s
