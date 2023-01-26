#by JiuJiu

#献祭点位判定-step4：潜行时间大于8s则成功释放灵魂，小于8s时显示粒子效果
execute as @p[tag=shift] if score @s shift_time matches 160.. at @s run function pvp:game/point/success/set
execute as @p[tag=shift] if score @s shift_time matches 0..160 at @s run function pvp:game/point/in_point