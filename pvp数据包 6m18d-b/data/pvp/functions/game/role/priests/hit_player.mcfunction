#by JiuJiu

#牧师-灵魂书
effect give @s wither 99999 1
scoreboard players set @s wither 60

particle minecraft:soul ~ ~ ~ 0 0 0 0.05 20
execute as @a at @s if score @s pid = @e[tag=move,limit=1] pid run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

scoreboard players operation @s killer = @e[tag=move] pid
scoreboard players set @e[tag=move] life 0