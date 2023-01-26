#by JiuJiu

#伤害事件

##来源检测
execute as @a[scores={damage=1..}] at @s run function pvp:game/atk/judge

## 耀骑士护盾减伤
execute as @s[tag=guarded] run function pvp:game/role/nearl/hurt_reduce
execute as @s[tag=guarded_plus] run function pvp:game/role/nearl/hurt_reduce_plus

##造成伤害并提示
scoreboard players operation @s hp -= @s hurt
title @a[scores={damage=1..}] times 0 5 5
title @a[scores={damage=1..}] subtitle [{"text": "🗡","color": "red"},{"score":{"name":"@s","objective":"hurt"},"color":"red"}]
title @a[scores={damage=1..}] title {"text": ""}

##检测狂战士技能触发
execute at @s as @p[scores={damage=1..},tag=violent,distance=0.1..] run function pvp:game/role/axe/hemato

##检测武士技能触发
execute as @a[scores={damage=1..}] if score @s katana matches 2 at @s run scoreboard players operation @s swordkee_damage = @p[scores={hurt=1..}] hurt
execute as @a[scores={damage=1..}] if score @s katana matches 2 at @s run function pvp:game/role/katana/judge_swordkee
execute as @a[scores={damage=1..}] if score @s katana matches 2 at @s run function pvp:game/role/katana/soul_cling

##重置计分板
scoreboard players set @s hurt 0
execute at @s run scoreboard players set @p[scores={damage=1..},distance=0.1..] damage 0
scoreboard players set @s peace 0
