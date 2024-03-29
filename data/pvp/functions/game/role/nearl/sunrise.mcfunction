# By Azide 2023/01/12-16时

# 耀骑士-拔剑插地

# 播放音效
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1.5 1

# 2秒的收起cd, 耀阳tag设为 插地：1
scoreboard players set @s cd 40
scoreboard players set @s nearl_sword 1

# 替换手中的武器为 “光”
item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData:19, nearl_sword: 1,display:{Name:'[{"text":"“光”", "color":"gold", "bold": true, "italic": false}]'},Lore:['[{"text":"拔出耀阳", "color":"yellow", "italic": false}]']}
item replace entity @s armor.chest with golden_chestplate{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Operation:0,Amount:5,Slot:"chest",Name:"Armor",UUID:[I;8651,1789,4989,4796]},{AttributeName:"generic.knockback_resistance",Operation:0,Amount:1.0,Slot:"chest",Name:"Armor",UUID:[I;114,514,1919,810]}]}

# 生成插在地上的剑
function pvp:game/role/nearl/summon_sword

# 无法移动和跳跃
effect give @s slowness 999999 7
effect give @s jump_boost 999999 128