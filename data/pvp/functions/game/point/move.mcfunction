#by JiuJiu

#献祭点位判定-step3：潜行下移动为0则下一步
execute as @p[tag=shift] if score @s shift_move matches 0 run function pvp:game/point/time
execute as @p[tag=shift] if score @s shift_move matches 1.. run function pvp:game/point/false