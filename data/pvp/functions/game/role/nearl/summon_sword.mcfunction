# By Azide 2023/01/12-19时

summon minecraft:armor_stand ^ ^ ^ {Tags:["nearl_sowrd","summon"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:golden_sword", Count: 1b, tag:{CustomModelData:1}}]}
scoreboard players operation @e[tag=summon] pid = @s pid
scoreboard players operation @e[tag=summon] tid = @s tid
tag @e[tag=summon] remove summon
