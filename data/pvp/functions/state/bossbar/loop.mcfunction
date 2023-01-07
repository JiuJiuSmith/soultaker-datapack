#by JiuJiu

scoreboard players operation #countdown countdown_s = #countdown countdown
scoreboard players operation #countdown countdown_s /= #20 operation
scoreboard players operation #countdown countdown_min = #countdown countdown_s
scoreboard players operation #countdown countdown_min /= #60 operation
scoreboard players operation #countdown countdown_s %= #60 operation

execute if score #countdown countdown matches 1.. run scoreboard players remove #countdown countdown 1
execute store result bossbar minecraft:countdown value run scoreboard players get #countdown countdown
execute if score #countdown countdown_s matches 0..9 run bossbar set countdown name [{"text":"本局剩余时间  "},{"score":{"name":"#countdown","objective":"countdown_min"},"color":"white","bold":false},{"text":":0"},{"score":{"name":"#countdown","objective":"countdown_s"},"color":"white","bold":false}]
execute unless score #countdown countdown_s matches 0..9 run bossbar set countdown name [{"text":"本局剩余时间  "},{"score":{"name":"#countdown","objective":"countdown_min"},"color":"white","bold":false},{"text":":"},{"score":{"name":"#countdown","objective":"countdown_s"},"color":"white","bold":false}]