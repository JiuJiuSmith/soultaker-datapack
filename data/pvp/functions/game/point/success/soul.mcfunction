#by JiuJiu

#根据释放灵魂数量增加不同队伍分数
execute if score @s soul matches 60..69 run scoreboard players set score operation 1
execute if score @s soul matches 70..79 run scoreboard players set score operation 2
execute if score @s soul matches 80..89 run scoreboard players set score operation 3
execute if score @s soul matches 90..99 run scoreboard players set score operation 4
execute if score @s soul matches 100 run scoreboard players set score operation 5

execute as @s[team=red] run scoreboard players operation RedTeam score += score operation
execute as @s[team=blue] run scoreboard players operation BlueTeam score += score operation

#文本框提示
scoreboard players operation score operation += #5 operation
tellraw @a [{"selector":"@s"},{"text":"释放了","bold":false},{"score":{"name":"score","objective":"operation"}},{"text":"0颗灵魂","bold":false}]

#移除灵魂
scoreboard players operation @s soul %= #10 operation

#耀骑士移除强化守护效果
execute as @s[tag=guarded_plus] run function pvp:game/role/nearl/soul_release
