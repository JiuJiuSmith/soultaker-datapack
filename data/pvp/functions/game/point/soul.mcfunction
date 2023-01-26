#by JiuJiu

#增加标签
tag @s add shift

#献祭点位判定-step1：存在灵魂则执行下一步
execute as @s[scores={soul=1..}] run function pvp:game/point/dtc
execute as @s[scores={soul=0}] run function pvp:game/point/false