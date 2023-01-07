#by JiuJiu

##忍者-弹反
tag @s add me

execute anchored eyes positioned ^ ^ ^2 if score @s tid matches 1 as @a[distance=..3] if score @s tid matches 2 run function pvp:game/role/ninja/draw_attack/damage
execute anchored eyes positioned ^ ^ ^2 if score @s tid matches 2 as @a[distance=..3] if score @s tid matches 1 run function pvp:game/role/ninja/draw_attack/damage

execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^2 0 0 0 0 1
playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.7 1.3
scoreboard players set @s hurt 0
scoreboard players set @s unhurt 0

tag @s remove me