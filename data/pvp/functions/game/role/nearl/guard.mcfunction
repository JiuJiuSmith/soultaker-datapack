# By Azide 2023/01/12-21时

# 将盾丢给队友

playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1

execute positioned ~ ~1.4 ~ positioned ^-0.7 ^ ^1 run function pvp:game/role/nearl/flying_shield
execute positioned ~ ~1.4 ~ as @e[tag=summon] run tp @s ^ ^ ^1 ~ ~
scoreboard players set @e[tag=summon] life 20
scoreboard players operation @e[tag=summon] pid = @s pid
scoreboard players operation @e[tag=summon] tid = @s tid
scoreboard players operation @e[tag=summon] rid = @s rid

tag @e[tag=summon] remove summon