#by JiuJiu

execute store result score #player operation if entity @a[tag=ingame]
scoreboard players remove #playr operation 1
execute if score #player blueplayer = #player operation run tellraw @a {"text": "[系统] 每个队伍至少需要存在一位玩家","color": "aqua"}

execute unless score #player blueplayer = #player operation if score @s tid matches 1 run scoreboard players remove #player redplayer 1
execute unless score #player blueplayer = #player operation run function pvp:system/team/blue