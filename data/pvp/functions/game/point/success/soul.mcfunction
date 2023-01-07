#by JiuJiu

execute if score @s soul matches 60..69 run scoreboard players set score operation 1
execute if score @s soul matches 70..79 run scoreboard players set score operation 2
execute if score @s soul matches 80..89 run scoreboard players set score operation 3
execute if score @s soul matches 90..99 run scoreboard players set score operation 4
execute if score @s soul matches 100 run scoreboard players set score operation 5

execute as @s[team=red] run scoreboard players operation RedTeam score += score operation
execute as @s[team=blue] run scoreboard players operation BlueTeam score += score operation

tellraw @a [{"selector":"@s"},{"text":"释放了","bold":false},{"score":{"name":"@s","objective":"soul"}},{"text":"颗灵魂","bold":false}]

scoreboard players set #10 operation 10
scoreboard players operation @s soul %= #10 operation