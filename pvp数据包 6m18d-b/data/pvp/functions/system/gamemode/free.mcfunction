#by JiuJiu

#启用自由模式
execute unless score #system gamemode matches 2 run tellraw @a {"text": "[系统] 自由模式启用","color": "aqua"}
execute if score #system gamemode matches 2 run tellraw @a {"text": "[系统] 目前模式已经为自由模式","color": "aqua"}
scoreboard players set #system gamemode 2