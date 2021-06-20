#by JiuJiu

execute as @s if score #tid tid matches 0 run function pvp:system/team/red
execute as @s if score #tid tid matches 1 run function pvp:system/team/blue

scoreboard players add #tid tid 1
execute if score #tid tid matches 2 run scoreboard players set #tid tid 0

execute as @r[scores={tid=0},tag=ingame] run function pvp:system/team/loop