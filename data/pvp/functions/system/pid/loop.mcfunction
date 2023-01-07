#by JiuJiu

scoreboard players add xpid pid 1
scoreboard players operation @r[scores={pid=0}] pid = xpid pid
execute if entity @a[scores={pid=0}] run function pvp:system/pid/loop