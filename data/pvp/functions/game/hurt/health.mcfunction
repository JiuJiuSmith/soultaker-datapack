#by JiuJiu

#脱战后缓慢回复效果循环
scoreboard players remove @s health 1
execute if score @s health matches ..0 run scoreboard players add @s hp 1
execute if score @s[tag=health] health matches ..0 run scoreboard players set @s health 5