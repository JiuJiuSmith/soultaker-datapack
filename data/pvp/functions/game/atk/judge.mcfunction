#by JiuJiu

#原版攻击来源侦测
execute unless score @s pid = @p[scores={hurt=1..},tag=ingame] killer as @p[scores={hurt=1..},tag=ingame] run scoreboard players operation @s helper = @s killer
scoreboard players operation @p[scores={hurt=1..},tag=ingame] killer = @s pid