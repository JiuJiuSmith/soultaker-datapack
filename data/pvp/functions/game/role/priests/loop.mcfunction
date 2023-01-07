#by JiuJiu

#牧师-灵魂书
tp @s ^ ^ ^1
tag @s add move

particle minecraft:enchant ~ ~ ~ 0 0 0 0.1 5
scoreboard players remove @s life 1

execute if score @s tid matches 1 positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=0,dz=0,scores={tid=2}] positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] run function pvp:game/role/priests/hit_player 
execute if score @s tid matches 1 positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=0,dz=0,scores={tid=1}] positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] unless score @s pid = @e[tag=move,limit=1] pid run function pvp:game/role/priests/cure_player
execute if score @s tid matches 2 positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=0,dz=0,scores={tid=1}] positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] run function pvp:game/role/priests/hit_player
execute if score @s tid matches 2 positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=0,dz=0,scores={tid=2}] positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] unless score @s pid = @e[tag=move,limit=1] pid run function pvp:game/role/priests/cure_player

execute unless block ~ ~ ~ #pvp:transparent run function pvp:game/role/priests/hit_block

tag @s remove move
kill @s[scores={life=0}]
