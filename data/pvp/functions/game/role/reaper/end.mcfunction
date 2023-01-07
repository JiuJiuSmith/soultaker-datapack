#by JiuJiu

##狂战士-关闭技能
tag @s remove violent
tellraw @s {"text":"[游戏] 狂战士不再狂暴","color":"yellow"}
replaceitem entity @s[nbt={Inventory:[{id:"minecraft:iron_axe",Slot:-106b,tag:{CustomModelData:14,Unbreakable:1}}]}] weapon.mainhand minecraft:iron_axe{CustomModelData:13,Unbreakable:1}
clear @s minecraft:iron_axe{CustomModelData:14,Unbreakable:1}
give @s[nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}] minecraft:iron_axe{CustomModelData:13,Unbreakable:1}
