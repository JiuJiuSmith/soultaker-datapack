#by JiuJiu

#启用竞技模式
execute store result score #player operation if entity @a[tag=ingame]
execute if score #player operation matches 0 run scoreboard players set #player operation 1
execute if score #player operation matches 1.. run scoreboard players operation #player operation %= #2 operation
execute if score #player operation matches 1 run tellraw @a {"text": "[系统] 加入游戏人数不足或人数无法平均分组","color": "aqua"}
execute if score #player operation matches 0 run scoreboard players set #auto auto_step 1
execute if score #player operation matches 0 run scoreboard players set #auto auto_time 601