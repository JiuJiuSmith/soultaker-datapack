#by JiuJiu

##忍者-突刺
scoreboard players remove @s life 1
particle minecraft:enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0 1
execute if score @s tid matches 1 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] if score @s tid matches 2 run function pvp:game/role/ninja/defend/damage
execute if score @s tid matches 2 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] if score @s tid matches 1 run function pvp:game/role/ninja/defend/damage
execute if score @s life matches 1.. positioned ^ ^ ^0.2 run function pvp:game/role/ninja/defend/loop