#by JiuJiu 2023/01/18-16时

tag @s add guarded_display

#生成对应护盾效果显示基准盔甲架
summon minecraft:armor_stand ~ ~ ~ {Tags:["summon","guarded_display_entity"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:scute", Count: 1b, tag:{CustomModelData:1}}]}
scoreboard players operation @e[tag=summon] pid = @s pid
tag @e[tag=summon] remove summon