#by JiuJiu

##狂战士-技能
execute as @s[nbt={Inventory:[{id:"minecraft:iron_axe",Slot:-106b,tag:{CustomModelData:13,Unbreakable:1b}}]}] run function pvp:game/role/axe/start
execute as @s[nbt={Inventory:[{id:"minecraft:iron_axe",Slot:-106b,tag:{CustomModelData:14,Unbreakable:1b}}]}] run function pvp:game/role/axe/end

tag @s add me
execute at @s[tag=violent] run particle minecraft:dust 0.545 0.004 0.004 1 ~ ~1 ~ 0 0.3 0 0.02 10 normal @a[tag=!me]
tag @s remove me

execute as @s[tag=violent,scores={soul=3..}] if score @s cd matches 0 run scoreboard players remove @s soul 3
scoreboard players set @s[tag=violent,scores={cd=0}] cd 20
execute as @s[tag=violent,scores={soul=..2}] run function pvp:game/role/axe/end