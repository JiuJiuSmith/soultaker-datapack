#by JiuJiu

#角色技能互动
scoreboard players remove @a[tag=ingame,scores={cd=1..}] cd 1

##法师
function pvp:game/role/wizard/loop

##牧师
execute as @e[type=armor_stand,tag=book,scores={life=1..}] at @s run function pvp:game/role/priests/loop
scoreboard players remove @a[scores={cure=1..}] cure 1
execute as @a[scores={cure=0}] run function pvp:game/role/priests/cure_remove
scoreboard players remove @a[scores={wither=1..}] wither 1
execute as @a[scores={wither=0}] run function pvp:game/role/priests/wither_remove

##狂战士
execute as @a[tag=ingame] if score @s rid matches 2 run function pvp:game/role/axe/loop
