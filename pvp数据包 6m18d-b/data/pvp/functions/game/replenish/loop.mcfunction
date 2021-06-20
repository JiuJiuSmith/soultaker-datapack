#by JiuJiu

#补充箭矢
execute as @e[tag=red_spawn] at @s as @a[distance=..3,team=red,tag=ingame] run function pvp:game/replenish/judge
execute as @e[tag=blue_spawn] at @s as @a[distance=..3,team=blue,tag=ingame] run function pvp:game/replenish/judge