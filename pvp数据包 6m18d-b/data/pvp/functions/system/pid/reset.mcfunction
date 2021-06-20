#by JiuJiu

scoreboard players set @a[tag=ingame] pid 0
scoreboard players set xpid pid 0
execute if entity @a[scores={pid=0}] run function pvp:system/pid/loop
#say 玩家ID已重新分配！