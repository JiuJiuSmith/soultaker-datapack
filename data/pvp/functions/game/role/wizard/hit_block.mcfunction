#by JiuJiu

#法师-法杖
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 30 force @a

execute if score @s charge matches 2..3 as @a[distance=..2.5] unless score @s tid = @e[tag=move,limit=1] tid as @a if score @s pid = @e[tag=move,limit=1] pid run scoreboard players set @s damage 1
execute if score @s charge matches 2..3 as @a[distance=..2.5] unless score @s tid = @e[tag=move,limit=1] tid as @a if score @s pid = @e[tag=move,limit=1] pid at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s charge matches 2..3 as @a[distance=..2.5] unless score @s tid = @e[tag=move,limit=1] tid run playsound minecraft:entity.player.hurt_on_fire player @a ~ ~ ~ 1 1

execute if score @s charge matches 2 as @a[distance=..2.5] unless score @s tid = @e[tag=move,limit=1] tid run scoreboard players set @s hurt 40
execute if score @s charge matches 3 as @a[distance=..2.5] unless score @s tid = @e[tag=move,limit=1] tid run scoreboard players set @s hurt 60

execute if score @s charge matches 2..3 as @a[distance=..2.5] unless score @s tid = @e[tag=move,limit=1] tid unless score @s killer = @e[tag=move,limit=1] pid run scoreboard players operation @s helper = @s killer
execute if score @s charge matches 2..3 as @a[distance=..2.5] unless score @s tid = @e[tag=move,limit=1] tid run scoreboard players operation @s killer = @e[tag=move] pid

scoreboard players set @e[tag=move] life 0