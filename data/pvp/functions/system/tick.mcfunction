#by JiuJiu

#数据包循环指令

##右键侦测
execute as @a[scores={rightclick=1..}] at @s run function pvp:system/rightclick

##设置工具点位高亮
execute if entity @a[nbt={SelectedItem:{tag:{tools:3}}}] run function pvp:tools/highlight

##不同游戏模式下游戏启动进程
execute if score #system gamemode matches 1 if score #auto auto_step matches 1.. run function pvp:system/run/auto/loop
execute if score #system gamemode matches 2 run function pvp:system/run/free/loop

##游戏运行与胜负判定
execute if score #round round matches 1..3 if score #countdown countdown matches 0 run function pvp:system/run/win/loop

##献祭侦测
execute as @a[tag=ingame,scores={shift_time=1..}] if score @s soul matches 60.. at @s run function pvp:game/point/soul

##采集散落灵魂判定与限制灵魂溢出上限
execute as @a[tag=ingame,tag=collect_soul] at @s run function pvp:game/lost_soul/judge
execute as @a[tag=ingame,tag=!max_soul] if score @s soul matches 100.. run tellraw @s {"text": "[游戏] 灵魂容器已经满了","color": "yellow"}
execute as @a[tag=ingame,tag=!max_soul] if score @s soul matches 100.. run tag @s add max_soul
execute as @a[tag=ingame,tag=max_soul] unless score @s soul matches 100 run tag @s remove max_soul
scoreboard players set @a[tag=ingame,scores={soul=101..}] soul 100

##散落灵魂可采集冷却时间递减与粒子效果显示
scoreboard players remove @e[tag=lost_soul,tag=point,scores={soul_cd=1..}] soul_cd 1
execute as @e[tag=lost_soul] at @s if score @s soul_cd matches 0 run function pvp:game/lost_soul/display

##伤害判定
execute as @a[scores={hurt=1..}] run function pvp:game/hurt/judge

##脱战判定
execute as @a[scores={peace=0..300},tag=ingame] run function pvp:game/hurt/peace

##再生效果(脱战缓和回复与技能效果快速回复)
execute as @a[tag=health,scores={hp=..199}] run function pvp:game/hurt/health
execute as @a[tag=cure,scores={hp=..199}] run function pvp:game/hurt/cure

##限制生命溢出上限
scoreboard players set @a[scores={hp=201..}] hp 200

##死亡事件判定
execute as @a[scores={hp=..0}] at @s run function pvp:game/death/judge

##重生事件判定
function pvp:game/death/spawn

##箭矢补充
function pvp:game/replenish/loop

##角色技能
function pvp:game/role/loop

##Q键误触(掉落物拾取冷却时间0)
execute as @e[type=minecraft:item] at @s if entity @p[tag=ingame,distance=..1.5] run data merge entity @s {PickupDelay:0}

##箭矢禁止拾取
execute as @e[type=minecraft:arrow] run data merge entity @s {pickup:0}

##离开游戏UI显示
title @a[tag=!ingame] times 0 0 0
title @a[tag=!ingame] actionbar {"text": "当前已离开游戏","color": "yellow"}

##状态栏UI显示
function pvp:state/title_loop

##虚拟生命值转化至真实生命值
function pvp:state/hp_display

##游戏倒计时UI显示
function pvp:state/bossbar/loop

##新玩家设定
function pvp:system/new_player/loop