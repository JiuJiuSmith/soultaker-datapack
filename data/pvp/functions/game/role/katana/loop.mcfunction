#by JiuJiu

##武士灵魂弥散
execute if score @s katana matches 2 run scoreboard players add @s soul_escapes_s 1
execute if score @s katana matches 2 run scoreboard players operation @s soul_escapes_s %= #20 operation
execute if score @s katana matches 2 if score @s soul matches 1.. if score @s soul_escapes_s matches 0 run function pvp:game/role/katana/soul_escape

##武士剑气移动
execute as @e[type=armor_stand,tag=swordkee,scores={life=1..}] at @s run function pvp:game/role/katana/swordkee_move