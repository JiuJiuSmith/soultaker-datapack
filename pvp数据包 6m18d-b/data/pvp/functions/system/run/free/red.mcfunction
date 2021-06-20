#by JiuJiu

execute store result score #player operation if entity @a[tag=ingame]
scoreboard players remove #playr operation 1
execute if score #player redplayer = #player operation run tellraw @a {"text": "[系统] 每个队伍至少需要存在一位玩家","color": "aqua"}

execute unless score #player redplayer = #player operation if score @s tid matches 2 run scoreboard players remove #player blueplayer 1
execute unless score #player redplayer = #player operation run function pvp:system/team/red