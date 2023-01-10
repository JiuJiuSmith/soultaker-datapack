#by JiuJiu

#法师-法杖
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1

execute positioned ~ ~1.4 ~ positioned ^-0.7 ^ ^1 run function pvp:game/role/wizard/rotation
execute positioned ~ ~1.4 ~ as @e[tag=summon] run tp @s ^ ^ ^1 ~ ~
scoreboard players set @e[tag=summon,scores={charge=1}] life 20
scoreboard players set @e[tag=summon,scores={charge=2}] life 27
scoreboard players set @e[tag=summon,scores={charge=3}] life 40
scoreboard players operation @e[tag=summon] pid = @s pid
scoreboard players operation @e[tag=summon] tid = @s tid
scoreboard players operation @e[tag=summon] rid = @s rid

scoreboard players set @s cd 20
scoreboard players set @s charge 0
scoreboard players set @s fire 3

tag @e[tag=summon] remove summon