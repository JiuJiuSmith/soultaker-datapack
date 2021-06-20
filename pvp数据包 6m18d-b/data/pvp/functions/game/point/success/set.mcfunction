#by JiuJiu

particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 200
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1

scoreboard players set @s shift_dtc 0
scoreboard players set @s shift_time 0

function pvp:game/point/success/soul

tag @s remove shift
tag @s remove max_soul