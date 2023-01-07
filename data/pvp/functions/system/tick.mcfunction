#by JiuJiu

#右键侦测
execute as @a[scores={rightclick=1..}] at @s run function pvp:system/rightclick

#设置工具点位高亮
execute if entity @a[nbt={SelectedItem:{tag:{point:3}}}] run function pvp:tools/highlight

#游戏模式
execute if score #system gamemode matches 1 if score #auto auto_step matches 1.. run function pvp:system/run/auto/loop
execute if score #system gamemode matches 2 run function pvp:system/run/free/loop

#游戏运行与胜负判定
execute if score #round round matches 1..3 if score #countdown countdown matches 0 run function pvp:system/run/win/loop

#献祭侦测
execute as @a[tag=ingame,scores={shift_time=1..}] if score @s soul matches 60.. at @s run function pvp:game/point/soul

#灵魂相关
execute as @a[tag=ingame,tag=collect_soul] at @s run function pvp:game/lost_soul/judge
execute as @a[tag=ingame,tag=!max_soul] if score @s soul matches 100.. run tellraw @s {"text": "[游戏] 灵魂容器已经满了","color": "yellow"}
execute as @a[tag=ingame,tag=!max_soul] if score @s soul matches 100.. run tag @s add max_soul
scoreboard players set @a[tag=ingame,scores={soul=101..}] soul 100

scoreboard players remove @e[tag=lost_soul,tag=point,scores={soul_cd=1..}] soul_cd 1
execute as @e[tag=lost_soul] at @s if score @s soul_cd matches 0 run function pvp:game/lost_soul/display

#伤害判定/脱战/回血
execute as @a[scores={hurt=1..}] run function pvp:game/hurt/judge
execute as @a[scores={peace=0..300},tag=ingame] run function pvp:game/hurt/peace
execute as @a[tag=health,scores={hp=..199}] run function pvp:game/hurt/health
execute as @a[tag=cure,scores={hp=..199}] run function pvp:game/hurt/cure

scoreboard players set @a[scores={hp=201..}] hp 200

#死亡判定
execute as @a[scores={hp=..0}] at @s run function pvp:game/death/judge

#重生
function pvp:game/death/spawn

#箭矢补充
function pvp:game/replenish/loop

#角色技能互动
function pvp:game/role/loop

#实体设定(Q键防误触/箭矢防捡/离开显示)
execute as @e[type=minecraft:item] at @s if entity @p[tag=ingame,distance=..1.5] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:arrow] run data merge entity @s {pickup:0}
title @a[tag=!ingame] times 0 0 0
title @a[tag=!ingame] actionbar {"text": "当前已离开游戏","color": "yellow"}

#UI显示
function pvp:state/title_loop
function pvp:state/hp_display
function pvp:state/bossbar/loop

#初始玩家设定
function pvp:system/new_player/loop