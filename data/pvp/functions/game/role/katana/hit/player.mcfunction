#by JiuJiu

#武士-判定剑气命中玩家
# *me:被命中的玩家
tag @s add me

execute as @e[tag=move,limit=1] as @a[distance=..1.5] if score @s tid = @p[tag=me] tid run scoreboard players add @s[tag=!me] hp 20
execute as @e[tag=move,limit=1] as @a[distance=..1.5] if score @s tid = @p[tag=me] tid run effect give @s instant_damage 1 0 true


particle minecraft:flame ~ ~ ~ 0 0 0 0.1 30 force @a
execute as @a at @s if score @s pid = @e[tag=move,limit=1] pid run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

execute as @e[tag=move,limit=1] as @a[distance=..1.5] if score @s tid = @p[tag=me] tid unless score @s killer = @e[tag=move,limit=1] pid run scoreboard players operation @s helper = @s killer
execute as @e[tag=move,limit=1] as @a[distance=..1.5] if score @s tid = @p[tag=me] tid run scoreboard players operation @s killer = @e[tag=move] pid
#参见法师hit_player.mcfunction

tag @s remove me

scoreboard players set @e[tag=move] life 0