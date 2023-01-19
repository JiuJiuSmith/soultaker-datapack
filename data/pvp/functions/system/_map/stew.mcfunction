#by JiuJiu 2023/01/19-23时

#选择地图为初始地图
scoreboard players set @e[tag=point,tag=apply] enable 0
execute as @e[tag=point,tag=apply,scores={map_id=1}] run scoreboard players set @s enable 1