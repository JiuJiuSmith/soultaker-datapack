#by JiuJiu

#攻击获取灵魂 *cling：附着
scoreboard players operation @s soul_cling = @p[scores={hurt=1..}] hurt
scoreboard players operation @s soul_cling /= #10 operation
scoreboard players operation @s soul_cling -= #3 operation
scoreboard players operation @s soul += @s soul_cling