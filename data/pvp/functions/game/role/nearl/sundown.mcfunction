# By Azide 2023/01/12-20时

# 耀骑士-收回大剑 

scoreboard players set @s cd 600
scoreboard players set @s nearl_sword 0
# 替换“光”为耀阳
item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData:17, nearl_sword:0, display:{Name:'[{"text":"耀阳", "color":"gold", "bold": true, "italic": false}]'}, AttributeModifiers:[{AttributeName:"generic.attack_damage", Operation:0, Amount:4, Slot:"mainhand", Name:"Armor", UUID:[I;2376,8811,7442,3900]},{AttributeName:"generic.attack_speed",Operation:0,Amount:-2.4,Slot:"mainhand",Name:"Armor",UUID:[I;2231,1732,9123,4204]}]}
item replace entity @s armor.chest with golden_chestplate{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}]}
# 杀死大剑
tag @s add me
execute as @e[tag=nearl_sword] at @s if score @s pid = @p[tag=me] pid run function pvp:game/role/nearl/kill_sword
tag @s remove me
# 清除无法移动和跳跃
effect clear @s slowness
effect clear @s jump_boost
