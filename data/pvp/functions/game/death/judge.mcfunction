#by JiuJiu

#死亡事件

##增加标签
tag @s add death
execute as @a[tag=ingame] if score @s pid = @p[tag=death] killer run tag @s add killer

##临时的死亡方案
kill @s

##击杀者显示
scoreboard players add @p[tag=killer] kill_count 1
title @p[tag=killer] times 0 10 5
title @p[tag=killer] title {"text":"☠","color":"red"}
title @p[tag=killer] subtitle [{"score":{"name":"@p[tag=killer]","objective":"kill_count"},"color":"white","bold":false},{"text":" kill","bold":false}]

##一血检测
execute as @p[tag=killer] run function pvp:advancements/first_blood_judge

##灵魂相关
scoreboard players set @s soul 0
scoreboard players add @p[tag=killer] soul 30

execute if entity @p[tag=killer] run tellraw @a[tag=!death,tag=!killer] [{"text":"[游戏] ","bold":false,"color": "yellow"},{"selector":"@p[tag=killer]"},{"text":"摄取了","bold":false,"color": "yellow"},{"selector":"@s"},{"text":"的灵魂","bold":false,"color": "yellow"}]
execute if entity @p[tag=killer] run tellraw @s [{"text":"[游戏] 你的灵魂被","bold":false,"color": "yellow"},{"selector":"@p[tag=killer]"},{"text":"摄取了","bold":false,"color": "yellow"}]
execute if entity @p[tag=killer] run tellraw @p[tag=killer] [{"text":"[游戏] 你摄取了","bold":false,"color": "yellow"},{"selector":"@s"},{"text":"的灵魂","bold":false,"color": "yellow"}]
execute unless entity @p[tag=killer] run tellraw @a [{"text":"[游戏] ","bold":false,"color": "yellow"},{"selector":"@s"},{"text":"的灵魂消散了","bold":false,"color": "yellow"}]

##狂战士击杀玩家获得buff
effect give @p[tag=killer,scores={rid=2}] instant_health 1 0
effect give @p[tag=killer,scores={rid=2}] haste 3 9

##增加重生时间
scoreboard players set @s spawn 320

##重置死亡侦测
scoreboard players set @s hp 200
scoreboard players set @p[tag=killer] kill 0

##移除标签
tag @p[tag=killer] remove killer
tag @s remove death