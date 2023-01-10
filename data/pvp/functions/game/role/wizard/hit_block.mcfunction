#by JiuJiu

#法师-法杖
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 30 force @a

execute if score @s charge matches 2 as @a[distance=..1.5] unless score @s tid = @e[tag=move,limit=1] tid run scoreboard players add @s hp 20
execute if score @s charge matches 2 as @a[distance=..1.5] unless score @s tid = @e[tag=move,limit=1] tid run effect give @s instant_damage 1 0 true
execute if score @s charge matches 3 as @a[distance=..1.5] unless score @s tid = @e[tag=move,limit=1] tid run effect give @s instant_damage 1 0 true

execute if score @s charge matches 2..3 as @a[distance=..1.5] unless score @s tid = @e[tag=move,limit=1] tid unless score @s killer = @e[tag=move,limit=1] pid run scoreboard players operation @s helper = @s killer
execute if score @s charge matches 2..3 as @a[distance=..1.5] unless score @s tid = @e[tag=move,limit=1] tid run scoreboard players operation @s killer = @e[tag=move] pid

scoreboard players set @e[tag=move] life 0