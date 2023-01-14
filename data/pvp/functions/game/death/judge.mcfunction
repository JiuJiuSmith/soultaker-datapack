#by JiuJiu

#死亡事件

##增加标签
tag @s add death
execute as @a[tag=ingame] if score @s pid = @p[tag=death] killer run tag @s add killer

##临时的死亡方案
kill @s

##累计击杀数统计
scoreboard players add @p[tag=killer] kill_count 1

##击杀者UI显示
title @p[tag=killer] times 0 10 5
title @p[tag=killer] title {"text":"☠","color":"red"}
title @p[tag=killer] subtitle [{"score":{"name":"@p[tag=killer]","objective":"kill_count"},"color":"white","bold":false},{"text":" kill","bold":false}]

##一血检测
execute as @p[tag=killer] run function pvp:advancements/first_blood_judge

##灵魂数量变更
scoreboard players set @s soul 0
scoreboard players add @p[tag=killer] soul 30

##灵魂变更UI显示
execute if entity @p[tag=killer] run tellraw @a[tag=!death,tag=!killer] [{"text":"[游戏] ","bold":false,"color": "yellow"},{"selector":"@p[tag=killer]"},{"text":"摄取了","bold":false,"color": "yellow"},{"selector":"@s"},{"text":"的灵魂","bold":false,"color": "yellow"}]
execute if entity @p[tag=killer] run tellraw @s [{"text":"[游戏] 你的灵魂被","bold":false,"color": "yellow"},{"selector":"@p[tag=killer]"},{"text":"摄取了","bold":false,"color": "yellow"}]
execute if entity @p[tag=killer] run tellraw @p[tag=killer] [{"text":"[游戏] 你摄取了","bold":false,"color": "yellow"},{"selector":"@s"},{"text":"的灵魂","bold":false,"color": "yellow"}]
execute unless entity @p[tag=killer] run tellraw @a [{"text":"[游戏] ","bold":false,"color": "yellow"},{"selector":"@s"},{"text":"的灵魂消散了","bold":false,"color": "yellow"}]

##狂战士击杀玩家获得buff
effect give @p[tag=killer,scores={rid=2}] instant_health 1 0
effect give @p[tag=killer,scores={rid=2}] haste 3 9

## 耀骑士死后杀死场上的大剑，重置手上的武器
execute as @e[tag=nearl_sword] if score @s pid = @p[tag=death] pid run kill @s
execute if score @s rid matches 9 run function pvp:game/role/nearl/callback
execute if score @s rid matches 9 run function pvp:game/choose/nearl
tag @s[tag=guarded_plus] remove guarded_plus

## 死亡后如果是有身上有guarded的非耀骑士玩家，身上的灵魂'传承'给给予自己盾的耀骑士
execute unless score @s[tag=guarded] rid matches 9 as @a[scores={rid=9}] if score @s guarded_pid = @p[tag=death] pid run function pvp:game/role/nearl/soul_inherit

##增加重生时间
scoreboard players set @s spawn 320

##重置死亡侦测（疑似无用计分板kill）
scoreboard players set @s hp 200
scoreboard players set @p[tag=killer] kill 0

##移除标签
tag @p[tag=killer] remove killer
tag @s remove death