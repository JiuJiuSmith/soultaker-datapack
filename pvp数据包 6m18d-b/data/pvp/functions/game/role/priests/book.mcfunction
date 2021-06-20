#by JiuJiu

#牧师-灵魂书
playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 1
scoreboard players set @s cd 20

summon minecraft:armor_stand ~ ~ ~ {Tags:["summon","book"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=summon] positioned ~ ~1.6 ~ run tp @s ^ ^ ^1 ~ ~
scoreboard players set @e[tag=summon] life 22
scoreboard players operation @e[tag=summon] pid = @s pid
scoreboard players operation @e[tag=summon] tid = @s tid
scoreboard players operation @e[tag=summon] rid = @s rid

tag @e[tag=summon] remove summon

tag @s add shoot