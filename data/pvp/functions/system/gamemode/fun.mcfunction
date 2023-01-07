#by JiuJiu

#启用竞技模式
execute unless score #system gamemode matches 1 run tellraw @a {"text": "[系统] 竞技模式启用","color": "aqua"}
execute if score #system gamemode matches 1 run tellraw @a {"text": "[系统] 目前模式已经为竞技模式","color": "aqua"}
scoreboard players set #system gamemode 1