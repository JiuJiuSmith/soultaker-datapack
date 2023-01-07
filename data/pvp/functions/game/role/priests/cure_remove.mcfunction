#by JiuJiu

#牧师-灵魂书
effect clear @s[tag=cure] regeneration
execute as @s[tag=health,tag=cure] unless score @s peace matches 1..160 run effect give @s regeneration 99999 0 false
tag @s remove cure