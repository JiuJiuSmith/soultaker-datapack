#by JiuJiu

tellraw @s [{"text": "[系统] 欢迎游玩地图魂狩Soul Taker，更多信息请关注MCBBS！","color": "aqua"}]
tag @s add player
effect give @a[tag=ingame] saturation 99999 0 true
effect give @a[tag=ingame] instant_health 999999 0
tp @s @e[tag=hall,limit=1]