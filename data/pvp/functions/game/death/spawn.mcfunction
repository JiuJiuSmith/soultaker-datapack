#by JiuJiu

#重生事件

##递减重生时间
scoreboard players remove @a[scores={spawn=1..}] spawn 1

##传送至出生点
execute as @e[team=red,scores={spawn=0},type=player] run tp @s @e[tag=red_spawn,limit=1]
execute as @e[team=red,scores={spawn=0},type=player] run scoreboard players add #player redplayer 1
execute as @e[team=blue,scores={spawn=0},type=player] run tp @s @e[tag=blue_spawn,limit=1]
execute as @e[team=blue,scores={spawn=0},type=player] run scoreboard players add #player blueplayer 1

##重生倒计时提示
tellraw @a[scores={spawn=319}] {"text":"[游戏] 16秒后返回战场","color": "yellow"}
title @a[scores={spawn=100}] times 0 20 0
title @a[scores={spawn=100}] title {"text": "5","color": "yellow"}
playsound entity.arrow.hit_player player @a[scores={spawn=100}] ~ ~ ~ 5 0
title @a[scores={spawn=80}] title {"text": "4","color": "yellow"}
playsound entity.arrow.hit_player player @a[scores={spawn=80}] ~ ~ ~ 5 0
title @a[scores={spawn=60}] title {"text": "3","color": "yellow"}
playsound entity.arrow.hit_player player @a[scores={spawn=60}] ~ ~ ~ 5 0
title @a[scores={spawn=40}] title {"text": "2","color": "gold"}
playsound entity.arrow.hit_player player @a[scores={spawn=40}] ~ ~ ~ 5 0
title @a[scores={spawn=20}] title {"text": "1","color": "red"}
playsound entity.arrow.hit_player player @a[scores={spawn=20}] ~ ~ ~ 5 0
playsound entity.arrow.hit_player player @a[scores={spawn=1}] ~ ~ ~ 5 1

##给予重生buff效果
effect give @e[scores={spawn=0}] saturation 99999 0 true
effect give @e[scores={spawn=0}] resistance 99999 4 true
effect give @e[scores={spawn=0}] instant_health 99999 0 true

##重置重生时间计分板(默认无数据)
scoreboard players reset @e[scores={spawn=0}] spawn