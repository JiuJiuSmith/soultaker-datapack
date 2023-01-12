#by JiuJiu

#技能造成的快速回血效果循环(目前仅牧师触发)
scoreboard players remove @s health 1
execute if score @s health matches ..0 run scoreboard players add @s hp 1
execute if score @s[tag=cure] health matches ..0 run scoreboard players set @s health 2