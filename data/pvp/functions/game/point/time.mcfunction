#by JiuJiu

#占领点位时间判定
execute as @p[tag=shift] if score @s shift_time matches 160.. at @s run function pvp:game/point/success/set
execute as @p[tag=shift] if score @s shift_time matches 0..160 at @s run function pvp:game/point/in_point