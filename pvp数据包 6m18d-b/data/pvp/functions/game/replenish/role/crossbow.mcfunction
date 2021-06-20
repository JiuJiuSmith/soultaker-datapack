#by JiuJiu

#补充箭矢
execute store result score @s operation run clear @s minecraft:tipped_arrow{Potion:"minecraft:harming"} 0
execute unless score @s operation matches 12 run tag @s add replenish
execute store result score @s operation run clear @s minecraft:tipped_arrow{Potion:"minecraft:slowness"} 0
execute unless score @s operation matches 12 run tag @s add replenish
execute store result score @s operation run clear @s minecraft:tipped_arrow{Potion:"minecraft:weakness"} 0
execute unless score @s operation matches 12 run tag @s add replenish

clear @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:harming"}
clear @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:slowness"}
clear @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:weakness"}
give @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:harming"} 12
give @s[tag=replenish] minecraft:tipped_arrow{CustomPotionEffects:[{Id:15,Amplifier:0,Duration:600}],Potion:"minecraft:slowness"} 12
give @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:weakness"} 12

tellraw @s[tag=replenish] {"text":"[游戏] 补充了箭矢","color":"yellow"}

tag @s remove replenish