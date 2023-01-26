#by JiuJiu

#生成剑气的概率
summon minecraft:armor_stand ~ ~ ~ {Tags:["random"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=random] store result score @s random run data get entity @s UUID[0]
scoreboard players operation @e[tag=random] random %= #max random

execute if score @e[tag=random,limit=1] random <= @s soul run function pvp:game/role/katana/swordkee

kill @e[tag=random]
