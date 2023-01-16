# By Azide 2023/01/12-16时

# 耀骑士-拔剑插地

# 2秒的收起cd, 耀阳tag设为 插地：1
scoreboard players set @s cd 40
scoreboard players set @s blazing_sun 1
# 替换手中的武器为 “光”  WIP!
item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData:3, blazing_sun: 1,display:{Name:'[{"text":"“光”", "color":"gold", "bold": true, "underlined": true, "italic": false}]'}}
item replace entity @s armor.chest with golden_chestplate{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Operation:0,Amount:1.0,Slot:"chest",Name:"Armor",UUID:[I;114,514,1919,810]}]}
# 生成插在地上的剑
function pvp:game/role/nearl/summon_sword
# 无法移动和跳跃
effect give @s slowness 999999 7
effect give @s jump_boost 999999 128