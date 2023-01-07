#by JiuJiu

#占领点位移动判定
execute as @p[tag=shift] if score @s shift_move matches 0 run function pvp:game/point/time
execute as @p[tag=shift] if score @s shift_move matches 1.. run function pvp:game/point/false