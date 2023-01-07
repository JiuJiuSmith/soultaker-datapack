#by JiuJiu

#开始游戏
execute as @a[tag=ingame,scores={rid=0}] run function pvp:game/choose/sword

function pvp:system/run/set

##计分板
scoreboard players set RedTeam score 0
scoreboard players set BlueTeam score 0
scoreboard players set @a[tag=ingame] hp 200
scoreboard players set @a[tag=ingame] peace 301
scoreboard players set @a[tag=ingame] soul 0

scoreboard players set #auto auto_time 99999

##队伍
team join red RedTeam
team join blue BlueTeam

##浮动胜负判定
execute store result score #win operation if entity @a[tag=ingame]
scoreboard players add #win operation 2
#tellraw @a [{"text": "[游戏] 争取优先获得","color": "yellow"},{"score":{"name":"#win","objective":"operation"},"color":"red","bold":false},{"text":"分以上并领先对方","color": "yellow"},{"text":"2","color": "red"},{"text":"分来获取胜利吧!","color": "yellow"}]