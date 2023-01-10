#by JiuJiu

#补充箭矢
execute store result score @s operation run clear @s minecraft:tipped_arrow{CustomModelData:1} 0
execute unless score @s operation matches 12 run tag @s add replenish
execute store result score @s operation run clear @s minecraft:tipped_arrow{CustomModelData:2} 0
execute unless score @s operation matches 12 run tag @s add replenish
execute store result score @s operation run clear @s minecraft:tipped_arrow{CustomModelData:3} 0
execute unless score @s operation matches 12 run tag @s add replenish

<<<<<<< HEAD
clear @s[tag=replenish] minecraft:tipped_arrow{CustomModelData:1}
clear @s[tag=replenish] minecraft:tipped_arrow{CustomModelData:2}
clear @s[tag=replenish] minecraft:tipped_arrow{CustomModelData:3}
give @s[tag=replenish] minecraft:tipped_arrow{CustomModelData:1,CustomPotionEffects:[{Id:7,Amplifier:0,Duration:1}],CustomPotionColor:16777215,display:{Name:'[{"text":"强击瓶","italic":false}]'}} 12
give @s[tag=replenish] minecraft:tipped_arrow{CustomModelData:2,CustomPotionEffects:[{Id:15,Amplifier:0,Duration:60}],CustomPotionColor:16777215,display:{Name:'[{"text":"致盲瓶","italic":false}]'}} 12
give @s[tag=replenish] minecraft:tipped_arrow{CustomModelData:3,CustomPotionEffects:[{Id:18,Amplifier:0,Duration:200}],CustomPotionColor:16777215,display:{Name:'[{"text":"虚弱瓶","italic":false}]'}} 12
=======
clear @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:harming"}
clear @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:slowness"}
clear @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:weakness"}
give @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:harming"} 12
give @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:slowness"} 12
give @s[tag=replenish] minecraft:tipped_arrow{Potion:"minecraft:weakness"} 12
>>>>>>> origin

tellraw @s[tag=replenish] {"text":"[游戏] 补充了箭矢","color":"yellow"}

tag @s remove replenish