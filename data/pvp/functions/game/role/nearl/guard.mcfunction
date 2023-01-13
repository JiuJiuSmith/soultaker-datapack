# By Azide 2023/01/12-21时

# 将盾丢给队友

playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1

item replace entity @s weapon.mainhand with air

summon minecraft:armor_stand ~ ~ ~ {Tags:["summon","flying_shield"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1.4 ~ as @e[tag=summon] run tp @s ^ ^ ^1 ~ ~

scoreboard players set @e[tag=summon] life 15

scoreboard players operation @e[tag=summon] pid = @s pid
scoreboard players operation @e[tag=summon] tid = @s tid
scoreboard players operation @e[tag=summon] rid = @s rid

tag @e[tag=summon] remove summon