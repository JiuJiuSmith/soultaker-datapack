#by JiuJiu

#火球移动和命中判定
tp @s ^ ^ ^1.5

tag @s add move

execute as @s[scores={charge=1}] if score @s life matches ..16 positioned ^ ^ ^-3 run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 2 force @a
execute as @s[scores={charge=2}] if score @s life matches ..23 positioned ^ ^ ^-3 run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 2 force @a
execute as @s[scores={charge=3}] if score @s life matches ..36 positioned ^ ^ ^-3 run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 2 force @a

scoreboard players remove @s life 1

execute if score @s tid matches 1 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=2}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 2 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=1}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player

execute if score @s tid matches 1 positioned ^ ^ ^-0.25 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=2}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 2 positioned ^ ^ ^-0.25 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=1}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 1 positioned ^ ^ ^-0.5 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=2}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 2 positioned ^ ^ ^-0.5 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=1}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 1 positioned ^ ^ ^-0.75 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=2}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 2 positioned ^ ^ ^-0.75 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=1}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 1 positioned ^ ^ ^-1 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=2}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 2 positioned ^ ^ ^-1 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=1}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 1 positioned ^ ^ ^-1.25 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=2}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player
execute if score @s tid matches 2 positioned ^ ^ ^-1.25 positioned ~-0.25 ~-0.25 ~-0.25 as @p[dx=0,dy=0,dz=0,scores={tid=1}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/wizard/hit/player

execute positioned ^ ^ ^-0.75 unless block ~ ~ ~ #pvp:transparent run function pvp:game/role/wizard/hit/block
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~ #pvp:transparent run function pvp:game/role/wizard/hit/block
execute positioned ^ ^ ^-0.25 unless block ~ ~ ~ #pvp:transparent run function pvp:game/role/wizard/hit/block
execute unless block ~ ~ ~ #pvp:transparent run function pvp:game/role/wizard/hit/block

tag @s remove move

kill @s[scores={life=..0}]