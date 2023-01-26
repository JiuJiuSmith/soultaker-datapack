#by JiuJiu

#进入游戏
function pvp:system/run/set

##计分板
scoreboard players set RedTeam score 0
scoreboard players set BlueTeam score 0
scoreboard players set @a[tag=ingame] hp 200
scoreboard players set @a[tag=ingame] peace 301
scoreboard players set @a[tag=ingame] soul 0

scoreboard players set #free free_step 3

##队伍
team join red RedTeam
team join blue BlueTeam

##浮动胜负判定
execute store result score #win operation if entity @a[tag=ingame]
scoreboard players add #win operation 2