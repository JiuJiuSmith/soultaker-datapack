#by JiuJiu

#自由模式检测
execute unless entity @a[tag=ingame,team=] if score #free free_step matches 1 run function pvp:system/run/free/step1
execute unless entity @a[tag=ingame,scores={rid=0}] if score #free free_step matches 2 run function pvp:system/run/free/step2

execute as @a[tag=ingame] at @s unless score @s tid matches 1 if block ~ ~-1 ~ red_concrete run function pvp:system/run/free/red
execute as @a[tag=ingame] at @s unless score @s tid matches 2 if block ~ ~-1 ~ blue_concrete run function pvp:system/run/free/blue