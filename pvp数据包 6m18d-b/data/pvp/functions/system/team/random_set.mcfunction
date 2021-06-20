#by JiuJiu

function pvp:system/team/set_up
scoreboard players set #player redplayer 0
scoreboard players set #player blueplayer 0
scoreboard players set @a tid 0
execute as @r[scores={tid=0},tag=ingame] run function pvp:system/team/loop
scoreboard players set #tid tid 0