#by JiuJiu

##忍者-防御
scoreboard players add @a[tag=defend,scores={defend=0..10}] defend 1
scoreboard players set @a[tag=defend] defend_end 0
scoreboard players add @a[scores={defend_end=0..4}] defend_end 1
execute as @a at @s if score @s defend_end matches 5 run function pvp:game/role/ninja/defend/end
tag @a[tag=defend] remove defend

##忍者-弹反
execute if score @s unhurt matches 1.. run scoreboard players remove @s unhurt 1

##忍者纳刀/拔刀
execute as @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,tag:{CustomModelData:3}}]}] run function pvp:game/role/ninja/in_sheath
execute as @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:-106b,tag:{CustomModelData:2}}]}] run function pvp:game/role/ninja/in_sheath
execute as @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{CustomModelData:15}}]}] run function pvp:game/role/ninja/out_sheath