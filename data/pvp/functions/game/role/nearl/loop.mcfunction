# By Azide 2023/01/13-16时

# 循环函数

## 盾牌飞行
execute as @e[type=armor_stand,tag=flying_shield,scores={life=1..}] at @s run function pvp:game/role/nearl/flying_shield
## 耀阳治疗
execute as @a at @s if score @e[distance=..6, tag=nearl_sword, limit=1] tid = @s tid run tag @s add nearl_cure

tag @a[tag=nearl_cure] add cure
scoreboard players set @a[tag=nearl_cure] cure 20 

tag @a[tag=nearl_cure] remove nearl_cure