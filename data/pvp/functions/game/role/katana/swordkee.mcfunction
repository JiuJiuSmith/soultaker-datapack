#by JiuJiu

#生成剑气
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.1
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.5

execute positioned ~ ~1.4 ~ positioned ^ ^ ^1.5 run function pvp:game/role/katana/rotation

execute positioned ~ ~1.4 ~ as @e[tag=summon] run tp @s ^ ^ ^1.5 ~ ~
scoreboard players set @e[tag=summon] life 6
scoreboard players operation @e[tag=summon] swordkee_damage = @s swordkee_damage
scoreboard players operation @e[tag=summon] pid = @s pid
scoreboard players operation @e[tag=summon] tid = @s tid
scoreboard players operation @e[tag=summon] rid = @s rid

tag @e[tag=summon] remove summon