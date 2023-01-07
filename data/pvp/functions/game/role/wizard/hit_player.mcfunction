#by JiuJiu

#法师-法杖
tag @s add me

execute as @a at @s if score @s pid = @e[tag=move,limit=1] pid run scoreboard players set @s damage 1
execute if score @e[tag=move,limit=1] charge matches 1 run scoreboard players set @s hurt 40
execute if score @e[tag=move,limit=1] charge matches 2 as @a[distance=..2.5] if score @s tid = @p[tag=me] tid run scoreboard players set @s[tag=!me] hurt 40
execute if score @e[tag=move,limit=1] charge matches 2 as @a[distance=..2.5] if score @s tid = @p[tag=me] tid run scoreboard players set @s[tag=me] hurt 60
execute if score @e[tag=move,limit=1] charge matches 3 as @a[distance=..2.5] if score @s tid = @p[tag=me] tid run scoreboard players set @s hurt 60

particle minecraft:flame ~ ~ ~ 0 0 0 0.1 30 force @a
execute as @a at @s if score @s pid = @e[tag=move,limit=1] pid run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
playsound minecraft:entity.player.hurt_on_fire player @a ~ ~ ~ 1 1

execute if score @e[tag=move,limit=1] charge matches 1 unless score @s killer = @e[tag=move,limit=1] pid run scoreboard players operation @s helper = @s killer
execute if score @e[tag=move,limit=1] charge matches 1 run scoreboard players operation @s killer = @e[tag=move] pid
execute if score @e[tag=move,limit=1] charge matches 2..3 as @a[distance=..2.5] if score @s tid = @p[tag=me] tid unless score @s killer = @e[tag=move,limit=1] pid run scoreboard players operation @s helper = @s killer
execute if score @e[tag=move,limit=1] charge matches 2..3 as @a[distance=..2.5] if score @s tid = @p[tag=me] tid run scoreboard players operation @s killer = @e[tag=move] pid

tag @s remove me

scoreboard players set @e[tag=move] life 0