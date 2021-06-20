#by JiuJiu

#牧师-灵魂书
effect give @s regeneration 99999 1 false
particle minecraft:dust 0.898 0.992 0.361 0.8 ~ ~ ~ 0.5 0.5 0.5 0.01 70
tag @s add cure
scoreboard players set @s cure 100
execute as @a at @s if score @s pid = @e[tag=move,limit=1] pid run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

scoreboard players set @e[tag=move] life 0