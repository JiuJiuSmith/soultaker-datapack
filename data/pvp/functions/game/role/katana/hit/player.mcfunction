#by JiuJiu

#武士-判定剑气命中玩家
# *me:被命中的玩家
tag @s add me

effect give @s slowness 2 0 false
execute as @e[tag=move,limit=1] as @a[distance=..1.5] if score @s tid = @p[tag=me] tid run function pvp:game/role/katana/hit/effect

execute as @e[tag=move,limit=1] as @a[distance=..1.5] if score @s tid = @p[tag=me] tid run scoreboard players remove @s[tag=!me] hp 20
execute as @e[tag=move,limit=1] as @a[distance=..1.5] if score @s tid = @p[tag=me] tid run scoreboard players operation @s[tag=me] hp -= @e[tag=move] swordkee_damage 

particle minecraft:firework ~ ~1 ~ 0 0 0 0.15 15 force @a
execute as @a at @s if score @s pid = @e[tag=move,limit=1] pid run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

execute as @e[tag=move,limit=1] as @a[distance=..1.5] if score @s tid = @p[tag=me] tid unless score @s killer = @e[tag=move,limit=1] pid run scoreboard players operation @s helper = @s killer
execute as @e[tag=move,limit=1] as @a[distance=..1.5] if score @s tid = @p[tag=me] tid run scoreboard players operation @s killer = @e[tag=move] pid
#参见法师hit_player.mcfunction

tag @s remove me

kill @e[tag=move]