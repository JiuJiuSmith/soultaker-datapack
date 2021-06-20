#by JiuJiu

#补充箭矢
execute store result score @s operation run clear @s arrow 0
execute unless score @s operation matches 32 run clear @s arrow
execute unless score @s operation matches 32 run give @s arrow 32
execute unless score @s operation matches 32 run tellraw @s {"text":"[游戏] 补充了箭矢","color":"yellow"}