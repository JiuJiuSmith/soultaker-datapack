#by JiuJiu

#设置重生点
execute as @e[tag=red_wait,scores={enable=1}] at @s run spawnpoint @a[team=red] ^ ^ ^
execute as @e[tag=blue_wait,scores={enable=1}] at @s run spawnpoint @a[team=blue] ^ ^ ^

#传送玩家
tp @a[team=red] @e[tag=red_spawn,scores={enable=1},limit=1]
tp @a[team=blue] @e[tag=blue_spawn,scores={enable=1},limit=1]

#状态
effect give @a[tag=ingame] saturation 99999 0 true
effect give @a[tag=ingame] resistance 99999 4 true
effect give @a[tag=ingame] instant_health 1 9 true
effect give @a[tag=ingame,scores={rid=3}] speed 99999 0 false

#游戏提示
tellraw @a[tag=ingame] {"text": "[游戏] 游戏开始!","color": "yellow"}

#开启倒计时
function pvp:state/bossbar/add
scoreboard players set #round round 1
scoreboard players set RedTeam round 0
scoreboard players set BlueTeam round 0