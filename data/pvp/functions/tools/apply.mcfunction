#by JiuJiu

#在预设点位盔甲架位置生成地图点位盔甲架
execute as @e[tag=hall,tag=preset] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["hall","point","apply"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=red_spawn,tag=preset] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["red_spawn","point","apply"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=blue_spawn,tag=preset] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["blue_spawn","point","apply"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=red_wait,tag=preset] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["red_wait","point","apply"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=blue_wait,tag=preset] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["blue_wait","point","apply"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=mid,tag=preset] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["mid","point"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=lost_soul,tag=preset] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["lost_soul","point","apply"],NoGravity:1b,Marker:1b,Invisible:1b}

#完整性检查,检查通过条件:除大厅，散落的灵魂外，场景内必须存在且仅存一个点位
execute if entity @e[tag=red_spawn] if entity @e[tag=blue_spawn] if entity @e[tag=red_wait] if entity @e[tag=blue_wait] if entity @e[tag=mid] run tag @s add well

#检查不通过，撤回生成并提示
execute as @s[tag=!well] run kill @e[tag=point,tag=apply]
tellraw @s[tag=!well] {"text": "[设置工具] 点位应用失败，可能原因有点位所在区块加载缺失或有基础的点位未设置，请检查点位后再次应用或删除所有点位重新设置","color": "light_purple"}

#检查通过，分配map_id，设置为禁用的可选用地图并提示
execute as @s[tag=well] run scoreboard players operation @e[tag=point,tag=apply] map_id = #map_id map_id
execute as @s[tag=well] run scoreboard players add #map_id map_id 1
execute as @s[tag=well] run scoreboard players set @e[tag=point,tag=apply] enable 0
execute as @s[tag=well] run kill @e[tag=preset]
tellraw @s[tag=well] {"text": "[设置工具] 成功应用点位","color": "light_purple"}

#移除检查标签
tag @s remove well