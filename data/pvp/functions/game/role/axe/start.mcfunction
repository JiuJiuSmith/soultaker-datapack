#by JiuJiu

##狂战士-开启技能
execute if score @s soul matches 0 run tellraw @s {"text":"[游戏] 灵魂不足以开启技能","color":"yellow"}
execute if score @s soul matches 0 run clear @s minecraft:iron_axe
execute if score @s soul matches 0 run item replace entity @s weapon.mainhand with minecraft:iron_axe{CustomModelData: 13, Unbreakable: 1}

execute if score @s soul matches 1.. run tag @s add violent
tellraw @s[tag=violent] {"text":"[游戏] 狂战士进入了狂暴","color":"yellow"}
clear @s[tag=violent] minecraft:iron_axe
execute if score @s soul matches 1.. run item replace entity @s weapon.mainhand with minecraft:iron_axe{CustomModelData: 14, Unbreakable: 1}
execute at @s[tag=violent] run playsound minecraft:item.trident.return player @a[distance=..10] ~ ~ ~ 3 1
scoreboard players remove @s[tag=violent] soul 1
scoreboard players set @s[tag=violent] cd 20