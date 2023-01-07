#by JiuJiu

#法师
scoreboard players add @a[tag=charge,scores={charge=0..39}] charge 1
scoreboard players set @a[tag=charge] fire 0
scoreboard players add @a[scores={fire=..1}] fire 1
execute as @a at @s if score @s fire matches 2 run function pvp:game/role/wizard/staff
tag @a[tag=charge] remove charge

playsound minecraft:block.fire.ambient player @a[scores={charge=2}] ~ ~100 ~ 100 0
playsound minecraft:block.fire.ambient player @a[scores={charge=20}] ~ ~100 ~ 100 1
playsound minecraft:block.fire.ambient player @a[scores={charge=39}] ~ ~100 ~ 100 2

title @a[scores={charge=1..}] times 0 5 0
title @a[scores={charge=1..}] title {"text": ""}
title @a[scores={charge=1..19}] subtitle [{"text": "🔥","color": "yellow"}]
title @a[scores={charge=20..39}] subtitle [{"text": "🔥","color": "yellow"},{"text": "🔥","color": "gold"}]
title @a[scores={charge=40}] subtitle [{"text": "🔥","color": "yellow"},{"text": "🔥","color": "gold"},{"text": "🔥","color": "red"}]

execute as @e[type=armor_stand,tag=fire_ball,scores={life=1..}] at @s run function pvp:game/role/wizard/fireball

execute as @a at @s anchored eyes if score @s rid matches 5 if score @s charge matches 1..20 run particle dust 1 0.902 0 1 ^-0.32 ^ ^0.25 0 0 0 0 3 normal @s
execute as @a at @s anchored eyes if score @s rid matches 5 if score @s charge matches 21..39 run particle dust 1 0.451 0 1 ^-0.32 ^ ^0.25 0 0 0 0 3 normal @s
execute as @a at @s anchored eyes if score @s rid matches 5 if score @s charge matches 40 run particle dust 1 0.067 0 1 ^-0.32 ^ ^0.25 0 0 0 0 3 normal @s
execute as @a at @s anchored eyes if score @s rid matches 5 if score @s cd matches 1.. run particle smoke ^-0.32 ^ ^0.25 0 0 0 0 3 normal @s