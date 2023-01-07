#by JiuJiu

#受伤侦测

execute as @a[scores={damage=1..}] run function pvp:game/atk/judge

scoreboard players operation @s hp -= @s hurt
title @a[scores={damage=1..}] times 0 5 5
title @a[scores={damage=1..}] subtitle [{"text": "🗡","color": "red"},{"score":{"name":"@s","objective":"hurt"},"color":"red"}]
title @a[scores={damage=1..}] title {"text": ""}

##狂战士技能
scoreboard players operation @s hurt /= #2 operation
execute as @p[scores={damage=1..},tag=violent] run scoreboard players operation @s hp += @p[scores={hurt=1..}] hurt

scoreboard players set @s hurt 0
scoreboard players set @p[scores={damage=1..}] damage 0
scoreboard players set @s peace 0
