#by JiuJiu

#受伤侦测

##来源
execute as @a[scores={damage=1..}] at @s run function pvp:game/atk/judge

##伤害
scoreboard players operation @s hp -= @s hurt
title @a[scores={damage=1..}] times 0 5 5
title @a[scores={damage=1..}] subtitle [{"text": "🗡","color": "red"},{"score":{"name":"@s","objective":"hurt"},"color":"red"}]
title @a[scores={damage=1..}] title {"text": ""}

##狂战士技能
execute at @s as @p[scores={damage=1..},tag=violent,distance=0.1..] run function pvp:game/role/axe/hemato

##武士技能
execute as @a[scores={damage=1..}] if score @s katana matches 2 at @s run function pvp:game/role/katana/judge_swordkee
execute as @a[scores={damage=1..}] if score @s katana matches 2 at @s run function pvp:game/role/katana/soul_cling

##重置
scoreboard players set @s hurt 0
execute at @s run scoreboard players set @p[scores={damage=1..},distance=0.1..] damage 0
scoreboard players set @s peace 0
