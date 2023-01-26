# By Azide 2023/01/12-19时

# 生成大剑

summon minecraft:armor_stand ^ ^ ^ {Tags:["nearl_sword","summon"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:golden_sword", Count: 1b, tag:{CustomModelData:1}}]}
scoreboard players operation @e[tag=summon] pid = @s pid
scoreboard players operation @e[tag=summon] tid = @s tid
tag @e[tag=summon] remove summon

# 生成耀阳粒子效果基准盔甲架
summon minecraft:armor_stand ^ ^ ^ {Tags:["nearl_sword_particle"],NoGravity:1b,Marker:1b,Invisible:1b}
