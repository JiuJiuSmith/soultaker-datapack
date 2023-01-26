#by JiuJiu

##角色道具
# 法师
execute if entity @s[nbt={SelectedItem:{tag:{rid:5}}},scores={cd=0}] at @s run tag @s add charge
# 牧师
execute if entity @s[nbt={SelectedItem:{tag:{rid:6}}},scores={cd=0}] at @s run function pvp:game/role/priests/book
# 武士
execute if entity @s[nbt={SelectedItem:{tag:{katana:1}}},scores={cd=0}] at @s run function pvp:game/role/katana/out_sheath
execute if entity @s[nbt={SelectedItem:{tag:{katana:2}}},scores={cd=0}] at @s run function pvp:game/role/katana/in_sheath
# 耀骑士
execute if entity @s[nbt={SelectedItem:{tag:{nearl_sword:0}}}, scores={cd=0}] at @s run function pvp:game/role/nearl/sunrise
execute if entity @s[nbt={SelectedItem:{tag:{nearl_sword:1}}}, scores={cd=0}] at @s run function pvp:game/role/nearl/sundown
execute if entity @s[nbt={SelectedItem:{tag:{nearl_shield:1}}}] at @s run function pvp:game/role/nearl/guard
execute if entity @s[nbt={SelectedItem:{tag:{nearl_shield:2}}}] at @s run function pvp:game/role/nearl/callback
execute if entity @s[nbt={SelectedItem:{tag:{nearl_shield:2}}}] at @s run item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData:18, rid:9, nearl_shield:1, display:{Name:'[{"text":"神圣之盾", "color":"gold", "bold": true, "italic": false}]'}}

##收集遗落的灵魂
execute if entity @s[nbt={SelectedItem:{tag:{cage:1}}}] if entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tellraw @s[tag=ingame,tag=!collect_soul,tag=!max_soul] {"text": "[游戏] 开始回收灵魂，请保持在附近","color": "yellow"}
execute if entity @s[nbt={SelectedItem:{tag:{cage:1}}}] if entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tellraw @s[tag=ingame,tag=!collect_soul,tag=max_soul] {"text": "[游戏] 灵魂容器已经满了","color": "yellow"}
execute if entity @s[nbt={SelectedItem:{tag:{cage:1}}}] unless entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tellraw @s {"text": "[游戏] 周围没有搜寻到遗落的灵魂","color": "yellow"}
execute if entity @s[nbt={SelectedItem:{tag:{cage:1}}}] if entity @e[tag=point,tag=lost_soul,scores={soul_cd=0},distance=..3] run tag @s[tag=ingame,tag=!collect_soul,tag=!max_soul] add collect_soul

##选择职业
execute if entity @s[nbt={SelectedItem:{tag:{role:1}}}] run function pvp:game/choose/sword
execute if entity @s[nbt={SelectedItem:{tag:{role:2}}}] run function pvp:game/choose/axe
execute if entity @s[nbt={SelectedItem:{tag:{role:3}}}] run function pvp:game/choose/bow
execute if entity @s[nbt={SelectedItem:{tag:{role:4}}}] run function pvp:game/choose/crossbow
execute if entity @s[nbt={SelectedItem:{tag:{role:5}}}] run function pvp:game/choose/wizard
execute if entity @s[nbt={SelectedItem:{tag:{role:6}}}] run function pvp:game/choose/priest
execute if entity @s[nbt={SelectedItem:{tag:{role:8}}}] run function pvp:game/choose/katana
execute if entity @s[nbt={SelectedItem:{tag:{role:9}}}] run function pvp:game/choose/nearl

##自定义设置工具
function pvp:tools/preset

##重置计分板
scoreboard players set @s rightclick 0