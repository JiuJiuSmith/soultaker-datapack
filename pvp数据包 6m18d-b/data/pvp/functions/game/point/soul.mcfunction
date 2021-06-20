#by JiuJiu

tag @s add shift

#灵魂判定
execute as @s[scores={soul=1..}] run function pvp:game/point/dtc
execute as @s[scores={soul=0}] run function pvp:game/point/false