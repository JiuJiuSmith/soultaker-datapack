#by JiuJiu 2023/01/19-23时

#选择地图为诡茂蓝泽
scoreboard players set @e[tag=point,tag=apply] enable 0
execute as @e[tag=point,tag=apply,scores={map_id=2}] run scoreboard players set @s enable 1
tellraw @a [{"text": "[系统] 地图变更为：","color": "aqua"},{"text": "诡茂蓝泽","color": "#FF00FF","bold": true}]