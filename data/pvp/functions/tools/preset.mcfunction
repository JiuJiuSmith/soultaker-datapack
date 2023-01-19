#by JiuJiu 2023/01/19-17时

#应用当前预设点位
execute if entity @s[nbt={SelectedItem:{tag:{tools:1}}}] run function pvp:tools/apply

#删除所有预设点位
execute if entity @s[nbt={SelectedItem:{tag:{tools:2}}}] if score @s shift_time matches 0 run kill @e[tag=point,limit=1,sort=nearest]
execute if entity @s[nbt={SelectedItem:{tag:{tools:2}}}] if score @s shift_time matches 0 run tellraw @s {"text": "[设置工具] 已删除距离最近的预设点位","color": "light_purple"}

#潜行时删除距离最近的预设点位
execute if entity @s[nbt={SelectedItem:{tag:{tools:2}}}] if score @s shift_time matches 1.. run kill @e[tag=point]
execute if entity @s[nbt={SelectedItem:{tag:{tools:2}}}] if score @s shift_time matches 1.. run kill @e[tag=preset]
execute if entity @s[nbt={SelectedItem:{tag:{tools:2}}}] if score @s shift_time matches 1.. run tellraw @s {"text": "[设置工具] 已删除所有点位","color": "light_purple"}
execute if entity @s[nbt={SelectedItem:{tag:{tools:2}}}] if score @s shift_time matches 1.. run scoreboard players set @s shift_time 0

#预设游戏大厅
execute if entity @s[nbt={SelectedItem:{tag:{tools:4}}}] run kill @e[tag=hall,tag=preset]
execute if entity @s[nbt={SelectedItem:{tag:{tools:4}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["hall","point","preset","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 1441536}}}]}

#预设红方出生点
execute if entity @s[nbt={SelectedItem:{tag:{tools:5}}}] run kill @e[tag=red_spawn,tag=preset]
execute if entity @s[nbt={SelectedItem:{tag:{tools:5}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["red_spawn","point","preset","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 11546150}}}]}

#预设蓝方出生点
execute if entity @s[nbt={SelectedItem:{tag:{tools:6}}}] run kill @e[tag=blue_spawn,tag=preset]
execute if entity @s[nbt={SelectedItem:{tag:{tools:6}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["blue_spawn","point","preset","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 196776}}}]}

#预设红方复活等待点
execute if entity @s[nbt={SelectedItem:{tag:{tools:7}}}] run kill @e[tag=red_wait,tag=preset]
execute if entity @s[nbt={SelectedItem:{tag:{tools:7}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["red_wait","point","preset","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 16743426}}}]}

#预设蓝方复活等待点
execute if entity @s[nbt={SelectedItem:{tag:{tools:8}}}] run kill @e[tag=blue_wait,tag=preset]
execute if entity @s[nbt={SelectedItem:{tag:{tools:8}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["blue_wait","point","preset","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 123391}}}]}

#预设灵魂献祭点
execute if entity @s[nbt={SelectedItem:{tag:{tools:10}}}] run kill @e[tag=mid,tag=preset]
execute if entity @s[nbt={SelectedItem:{tag:{tools:10}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mid","point","preset","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 11337981}}}]}

#预设散落的灵魂生成点(采集灵魂点)
execute if entity @s[nbt={SelectedItem:{tag:{tools:11}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["lost_soul","point","preset","summon"],NoGravity:1b,Marker:1b,ArmorItems: [{}, {}, {}, {id: "minecraft:leather_helmet", Count: 1b, tag: {Damage: 0, display: {color: 1364408}}}]}

#切换设置工具列表(换页)
execute if entity @s[nbt={SelectedItem:{tag:{tools:9}}}] run tag @s add list2
execute if entity @s[nbt={SelectedItem:{tag:{tools:15}}}] run tag @s add list1
execute as @a[tag=list1] run function pvp:tools/give/list1
execute as @a[tag=list2] run function pvp:tools/give/list2
tag @a remove list1
tag @a remove list2

#移动生成预设点位定位盔甲架至当前所处坐标和面朝方向
execute as @e[tag=summon] run tp @s ^ ^ ^ ~ ~
tag @e[tag=summon] remove summon