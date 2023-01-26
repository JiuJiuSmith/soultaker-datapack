#by JiuJiu

#启用自由模式
execute unless score #system gamemode matches 2 run tellraw @a [{"text": "[系统] 切换游戏模式为：","color": "aqua"},{"text": "自由模式","color": "green","bold": true}]
execute if score #system gamemode matches 2 run tellraw @a [{"text": "[系统] 目前模式已经为","color": "aqua"},{"text": "自由模式","color": "green","bold": true}]
scoreboard players set #system gamemode 2