#by JiuJiu

#火球预设角度/蓄力等级
execute store result score #rotation operation run data get entity @s Rotation[0]
execute if score #rotation operation matches ..-1 run scoreboard players operation #rotation operation += #360 operation
execute if score #rotation operation matches 0..19 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[10.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 20..39 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[30.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 40..59 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[50.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 60..79 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[70.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 80..99 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 100..119 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[110.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 120..139 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[130.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 140..159 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[150.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 160..179 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[170.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 180..199 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-170.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 200..239 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-150.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 220..269 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-130.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 240..259 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-110.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 260..279 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-90.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 280..299 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-70.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 300..319 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-50.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 320..339 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-30.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}
execute if score #rotation operation matches 340..359 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-10.0f],Tags:["summon","fire_ball"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:fire_charge", Count: 1b, tag:{CustomModelData:101}}]}

execute if score @s charge matches 1..19 run scoreboard players set @e[tag=summon] charge 1
execute if score @s charge matches 20..39 run scoreboard players set @e[tag=summon] charge 2
execute if score @s charge matches 40 run scoreboard players set @e[tag=summon] charge 3

scoreboard players set @s charge 41