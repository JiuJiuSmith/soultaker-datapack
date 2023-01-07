#by JiuJiu

##狂战士-关闭技能
tag @s remove violent
tellraw @s {"text":"[游戏] 狂战士不再狂暴","color":"yellow"}
item replace entity @s[nbt={Inventory:[{id:"minecraft:iron_axe",Slot:-106b,tag:{CustomModelData:14,Unbreakable:1b}}]}] weapon.mainhand with minecraft:iron_axe{CustomModelData:13,Unbreakable:1b}
clear @s minecraft:iron_axe{CustomModelData:14,Unbreakable:1b}
give @s[nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}] minecraft:iron_axe{CustomModelData:13,Unbreakable:1b}
