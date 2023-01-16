#by JiuJiu

tp @e[tag=ingame] @e[tag=hall,limit=1]

clear @a[tag=ingame]
execute as @a[tag=ingame] run function pvp:book/give
execute as @e[tag=hall] at @s run spawnpoint @a[tag=ingame] ~ ~ ~
effect clear @a[tag=ingame]
effect give @a[tag=ingame] saturation 99999 0 true
effect give @a[tag=ingame] instant_health 999999 0 true

#系统设置
scoreboard objectives remove pid
scoreboard objectives remove rid

#自动游戏系统
scoreboard players set xauto auto_step 0
scoreboard players set xauto auto_time 60

#游戏进程
scoreboard objectives remove countdown
scoreboard objectives remove round

#队伍
scoreboard objectives remove tid
scoreboard objectives remove redplayer
scoreboard objectives remove blueplayer

#占点
scoreboard objectives remove score

#灵魂
scoreboard objectives remove soul
scoreboard players set @e[tag=lost_soul,tag=point] soul_cd 0

#伤害及死亡判定
scoreboard objectives remove hp

scoreboard objectives remove kill
scoreboard objectives remove kill_count

scoreboard objectives remove spawn

scoreboard objectives remove hurt
scoreboard objectives remove damage
scoreboard objectives remove killer
scoreboard objectives remove helper

scoreboard objectives remove peace

scoreboard objectives remove arrow_id

#角色技能互动
scoreboard objectives remove life
scoreboard objectives remove cd
scoreboard objectives remove charge
scoreboard objectives remove fire
scoreboard objectives remove cure
scoreboard objectives remove wither
scoreboard objectives remove katana
scoreboard objectives remove unhurt
#标签和进度
tag @a remove notfirst
tag @a remove max_soul
tag @a remove guarded
tag @a remove guarded_plus
advancement revoke @a only pvp:first_blood

#实体
kill @e[type=armor_stand,tag=fire_ball]
kill @e[type=arrow]
kill @e[tag=swordkee]
kill @e[tag=nearl_sword]
kill @e[tag=flying_shield]

#bossbar
bossbar remove countdown

###
function pvp:system/scoreboard
function pvp:system/team/set_up