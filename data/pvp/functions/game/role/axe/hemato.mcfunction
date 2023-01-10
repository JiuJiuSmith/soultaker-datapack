#by JiuJiu

##狂战士-吸血值计算
scoreboard players operation @s hemato = @p[scores={hurt=1..}] hurt
scoreboard players operation @s hemato /= #2 operation
scoreboard players operation @s hp += @s hemato