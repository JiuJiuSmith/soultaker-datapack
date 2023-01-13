# By Azide 2023/01/12-21时

# 盾牌的生成与传递判定
tp @s ^ ^ ^0.7

tag @s add move

scoreboard players remove @s life 1

execute if score @s tid matches 1 positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!guarded,dx=0,dy=0,dz=0,scores={tid=1,rid=1..8}] positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/nearl/hit/teammate 
execute if score @s tid matches 1 positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!guarded,dx=0,dy=0,dz=0,scores={tid=1,rid=10..}] positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/nearl/hit/teammate
execute if score @s tid matches 2 positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!guarded,dx=0,dy=0,dz=0,scores={tid=2,rid=1..8}] positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/nearl/hit/teammate
execute if score @s tid matches 2 positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!guarded,dx=0,dy=0,dz=0,scores={tid=2,rid=10..}] positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function pvp:game/role/nearl/hit/teammate
execute unless block ~ ~ ~ #pvp:transparent run function pvp:game/role/nearl/hit/block

# 超时还盾
execute if score @s life matches ..0 as @a if score @s pid = @e[tag=move, limit=1] pid run function pvp:game/role/nearl/regain_shield

tag @s remove move
kill @s[scores={life=..0}]