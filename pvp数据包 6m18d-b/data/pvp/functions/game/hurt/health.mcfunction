#by JiuJiu

#回血buff
scoreboard players remove @s health 1
execute if score @s health matches ..0 run scoreboard players add @s hp 1
execute if score @s[tag=health] health matches ..0 run scoreboard players set @s health 5