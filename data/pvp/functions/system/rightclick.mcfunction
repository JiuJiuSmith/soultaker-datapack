#by JiuJiu

##角色道具
execute if entity @s[nbt={SelectedItem:{tag:{rid:5}}},scores={cd=0}] at @s run tag @s add charge
execute if entity @s[nbt={SelectedItem:{tag:{rid:6}}},scores={cd=0}] at @s run function pvp:game/role/priests/book
execute if entity @s[nbt={SelectedItem:{tag:{katana:1}}},scores={cd=0}] at @s run function pvp:game/role/katana/out_sheath
execute if entity @s[nbt={SelectedItem:{tag:{katana:2}}},scores={cd=0}] at @s run function pvp:game/role/katana/in_sheath

##收集遗落的灵魂
execute if entity @s[nbt={SelectedItem:{tag:{cage:1}}}] if entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tellraw @s[tag=ingame,tag=!collect_soul,tag=!max_soul] {"text": "[游戏] 开始回收灵魂，请保持在附近","color": "yellow"}
execute if entity @s[nbt={SelectedItem:{tag:{cage:1}}}] if entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tellraw @s[tag=ingame,tag=!collect_soul,tag=max_soul] {"text": "[游戏] 灵魂容器已经满了","color": "yellow"}
execute if entity @s[nbt={SelectedItem:{tag:{cage:1}}}] unless entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tellraw @s {"text": "[游戏] 周围没有搜寻到遗落的灵魂","color": "yellow"}
execute if entity @s[nbt={SelectedItem:{tag:{cage:1}}}] if entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tag @s[tag=ingame,tag=!collect_soul,tag=!max_soul] add collect_soul

##选择职业
execute if entity @s[nbt={SelectedItem:{tag:{role:1}}}] run function pvp:game/choose/sword
execute if entity @s[nbt={SelectedItem:{tag:{role:2}}}] run function pvp:game/choose/axe
execute if entity @s[nbt={SelectedItem:{tag:{role:3}}}] run function pvp:game/choose/bow
execute if entity @s[nbt={SelectedItem:{tag:{role:4}}}] run function pvp:game/choose/crossbow
execute if entity @s[nbt={SelectedItem:{tag:{role:5}}}] run function pvp:game/choose/wizard
execute if entity @s[nbt={SelectedItem:{tag:{role:6}}}] run function pvp:game/choose/priest
execute if entity @s[nbt={SelectedItem:{tag:{role:8}}}] run function pvp:game/choose/katana

##自定义设置工具
execute if entity @s[nbt={SelectedItem:{tag:{point:1}}}] run function pvp:tools/point_set

execute if entity @s[nbt={SelectedItem:{tag:{point:2}}}] if score @s shift_time matches 0 run kill @e[tag=point]
execute if entity @s[nbt={SelectedItem:{tag:{point:2}}}] if score @s shift_time matches 0 run kill @e[tag=point_set]
execute if entity @s[nbt={SelectedItem:{tag:{point:2}}}] if score @s shift_time matches 0 run tellraw @s {"text": "[设置工具] 已删除所有点位","color": "light_purple"}
execute if entity @s[nbt={SelectedItem:{tag:{point:2}}}] if score @s shift_time matches 1.. run kill @e[tag=point,limit=1,sort=nearest]
execute if entity @s[nbt={SelectedItem:{tag:{point:2}}}] if score @s shift_time matches 1.. run tellraw @s {"text": "[设置工具] 已删除最近的已应用点位","color": "light_purple"}
execute if entity @s[nbt={SelectedItem:{tag:{point:2}}}] if score @s shift_time matches 1.. run scoreboard players set @s shift_time 0


execute if entity @s[nbt={SelectedItem:{tag:{point:4}}}] run kill @e[tag=hall,tag=point_set]
execute if entity @s[nbt={SelectedItem:{tag:{point:4}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["hall","point_set","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 1441536}}}]}

execute if entity @s[nbt={SelectedItem:{tag:{point:5}}}] run kill @e[tag=red_spawn,tag=point_set]
execute if entity @s[nbt={SelectedItem:{tag:{point:5}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["red_spawn","point_set","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 11546150}}}]}

execute if entity @s[nbt={SelectedItem:{tag:{point:6}}}] run kill @e[tag=blue_spawn,tag=point_set]
execute if entity @s[nbt={SelectedItem:{tag:{point:6}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["blue_spawn","point_set","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 196776}}}]}

execute if entity @s[nbt={SelectedItem:{tag:{point:7}}}] run kill @e[tag=red_wait,tag=point_set]
execute if entity @s[nbt={SelectedItem:{tag:{point:7}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["red_wait","point_set","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 16743426}}}]}

execute if entity @s[nbt={SelectedItem:{tag:{point:8}}}] run kill @e[tag=blue_wait,tag=point_set]
execute if entity @s[nbt={SelectedItem:{tag:{point:8}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["blue_wait","point_set","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 123391}}}]}

execute if entity @s[nbt={SelectedItem:{tag:{point:10}}}] run kill @e[tag=mid,tag=point_set]
execute if entity @s[nbt={SelectedItem:{tag:{point:10}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mid","point_set","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 11337981}}}]}

execute if entity @s[nbt={SelectedItem:{tag:{point:11}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["lost_soul","point_set","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 1364408}}}]}

execute if entity @s[nbt={SelectedItem:{tag:{point:9}}}] run tag @s add list2
execute if entity @s[nbt={SelectedItem:{tag:{point:15}}}] run tag @s add list1
execute as @a[tag=list1] run function pvp:tools/give/list1
execute as @a[tag=list2] run function pvp:tools/give/list2
tag @a remove list1
tag @a remove list2

execute as @e[tag=summon] run tp @s ^ ^ ^ ~ ~
tag @e[tag=summon] remove summon

##重置计分板
scoreboard players set @s rightclick 0