#by JiuJiu

#随机数量灵魂
summon minecraft:armor_stand ~ ~ ~ {Tags:["random","summon"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=random] store result score @s random run data get entity @s UUID[0]
scoreboard players operation @e[tag=random] random %= #max random

execute if score @e[tag=random,limit=1] random matches 0..9 run scoreboard players set #soul_add soul 10
execute if score @e[tag=random,limit=1] random matches 10..29 run scoreboard players set #soul_add soul 15
execute if score @e[tag=random,limit=1] random matches 30..69 run scoreboard players set #soul_add soul 15
execute if score @e[tag=random,limit=1] random matches 70..89 run scoreboard players set #soul_add soul 20
execute if score @e[tag=random,limit=1] random matches 90..98 run scoreboard players set #soul_add soul 30
execute if score @e[tag=random,limit=1] random matches 99 run scoreboard players set #soul_add soul 50
scoreboard players operation @s soul += #soul_add soul
tellraw @s [{"text":"[游戏] 回收数量为:","color":"yellow"},{"score":{"name":"#soul_add","objective":"soul"}},{"text":"的灵魂","color":"yellow"}]

kill @e[tag=random]
tag @s remove collect_soul
scoreboard players set @e[tag=point,tag=lost_soul,distance=..3] collect_time 0
scoreboard players set @e[tag=point,tag=lost_soul,distance=..3] soul_cd 3600
