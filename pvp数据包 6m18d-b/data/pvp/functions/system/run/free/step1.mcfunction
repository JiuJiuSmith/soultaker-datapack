#by JiuJiu

#进入游戏
tp @a[team=red,tag=ingame] @e[tag=red_wait,limit=1]
tp @a[team=blue,tag=ingame] @e[tag=blue_wait,limit=1]

execute as @a[tag=ingame] run function pvp:game/choose/give
tellraw @a[tag=ingame] {"text": "[游戏] 所有玩家选择角色后，游戏自动开始","color": "yellow"}
tellraw @a[tag=ingame] {"text": "[游戏] 右键以选择角色","color": "yellow"}

function pvp:system/pid/reset
scoreboard players set #arrow arrow_id 0
gamemode adventure @a[tag=ingame]

scoreboard players set #free free_step 2
