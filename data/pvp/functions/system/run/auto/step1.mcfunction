#by JiuJiu

#分队-选职业
function pvp:system/pid/reset
scoreboard players set #arrow arrow_id 0
gamemode adventure @a[tag=ingame]

function pvp:system/team/random_set

tp @a[team=red,tag=ingame] @e[tag=red_wait,limit=1]
tp @a[team=blue,tag=ingame] @e[tag=blue_wait,limit=1]

execute as @a[tag=ingame] run function pvp:game/choose/give
tellraw @a[tag=ingame] {"text": "[游戏] 右键以选择角色","color": "yellow"}

scoreboard players set #auto auto_time 600