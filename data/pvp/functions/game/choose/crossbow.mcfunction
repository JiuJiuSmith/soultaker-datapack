#by JiuJiu

scoreboard players set @s rid 4

clear @s

item replace entity @s container.0 with minecraft:iron_pickaxe{CustomModelData: 7, Unbreakable: 1, display: {Name: '[{"text":"钉锤","italic":false}]'}}
item replace entity @s container.1 with minecraft:crossbow{Unbreakable: 1}
item replace entity @s container.2 with minecraft:tipped_arrow{Potion: "minecraft:harming"} 12
item replace entity @s container.3 with minecraft:tipped_arrow{Potion: "minecraft:slowness"} 12
item replace entity @s container.4 with minecraft:tipped_arrow{Potion: "minecraft:weakness"} 12
item replace entity @s container.5 with carrot_on_a_stick{CustomModelData: 21, cage: 1, display: {Name: '[{"text":"灵魂容器","color":"aqua","italic": false}]'}}

item replace entity @s armor.head with minecraft:leather_helmet{Unbreakable: 1}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable: 1}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable: 1}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable: 1}

tellraw @s [{"text": "[游戏] 你选择了成为","color": "yellow"},{"text": "弩手","color": "red"}]