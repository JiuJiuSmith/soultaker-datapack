#by JiuJiu

#应用点位
execute as @e[tag=hall,tag=point_set] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["hall","point"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=red_spawn,tag=point_set] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["red_spawn","point"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=blue_spawn,tag=point_set] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["blue_spawn","point"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=red_wait,tag=point_set] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["red_wait","point"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=blue_wait,tag=point_set] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["blue_wait","point"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=mid,tag=point_set] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["mid","point"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if entity @e[tag=hall] if entity @e[tag=red_spawn] if entity @e[tag=blue_spawn] if entity @e[tag=red_wait] if entity @e[tag=blue_wait] if entity @e[tag=mid] run tag @s add well

execute as @e[tag=lost_soul,tag=point_set] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["lost_soul","point"],NoGravity:1b,Marker:1b,Invisible:1b}

tellraw @s[tag=well] {"text": "[设置工具] 成功应用点位","color": "light_purple"}
tellraw @s[tag=!well] {"text": "[设置工具] 点位应用失败，可能原因有点位所在区块加载缺失或有基础的点位未设置，请检查点位后再次应用或删除所有点位重新设置","color": "light_purple"}

execute as @s[tag=well] run kill @e[tag=point_set]
tag @s remove well