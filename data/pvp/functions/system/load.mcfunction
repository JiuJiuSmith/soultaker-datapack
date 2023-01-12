#by JiuJiu

#数据包载入指令

##重置计分板与队伍
function pvp:system/scoreboard
function pvp:system/team/set_up

##初次载入提示
title @a times 0 5 0
tellraw @a [{"text": "[系统] 欢迎进入pvp竞技场，当前游戏版本为","color": "aqua"},{"text": "v3.3","color": "gold"}]