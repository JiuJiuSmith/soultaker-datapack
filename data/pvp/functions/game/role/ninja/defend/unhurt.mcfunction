#by JiuJiu

##忍者-弹反
tag @s add me

scoreboard players add @s life 25
execute anchored eyes run function pvp:game/role/ninja/defend/loop
scoreboard players reset @s life

playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.7 1.3
scoreboard players set @s hurt 0
function pvp:game/role/ninja/defend/end

tag @s remove me