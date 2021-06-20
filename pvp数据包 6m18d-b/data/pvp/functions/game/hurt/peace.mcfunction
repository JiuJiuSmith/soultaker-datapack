#by JiuJiu

#脱战
scoreboard players add @s peace 1

execute if score @s peace matches 1 run effect clear @s regeneration
execute if score @s peace matches 1 run tag @s remove health
execute if score @s[tag=cure] peace matches 1 run effect give @s regeneration 99999 1 false
execute if score @s[scores={rid=3}] peace matches 1 run effect clear @s speed

execute if score @s peace matches 160 run effect give @s regeneration 99999 0 false
execute if score @s peace matches 160 run tag @s add health
execute if score @s[scores={rid=3}] peace matches 160 run effect give @s speed 99999 0 false

execute if score @s peace matches 300 run scoreboard players set @s killer 0
execute if score @s peace matches 300 run scoreboard players set @s helper 0