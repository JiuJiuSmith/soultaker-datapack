#by JiuJiu

#启用竞技模式
execute unless score #system gamemode matches 1 run tellraw @a [{"text": "[系统] 切换游戏模式为：","color": "aqua"},{"text": "竞技模式","color": "red","bold": true}]
execute if score #system gamemode matches 1 run tellraw @a [{"text": "[系统] 目前模式已经为","color": "aqua"},{"text": "竞技模式","color": "red","bold": true}]
scoreboard players set #system gamemode 1