#by JiuJiu

##武士-拔刀斩
scoreboard players set @s cd 100
scoreboard players set @s katana 2

item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData:16,katana:2,display:{Name:'[{"text":"太刀","color":"white","italic": false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Operation:0,Amount:6,Slot:"mainhand",Name:"Armor",UUID:[I;17,18,19,20]},{AttributeName:"generic.attack_speed",Operation:0,Amount:-2,Slot:"mainhand",Name:"Armor",UUID:[I;21,22,23,24]}]}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b,Damage:0,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Operation:0,Amount:4,Slot:"chest",Name:"Armor",UUID:[I;25,26,27,28]},{AttributeName:"generic.movement_speed",Operation:0,Amount:-0.02,Slot:"chest",Name:"Armor",UUID:[I;21,22,23,24]}],display:{color:15233282}}

function pvp:game/role/katana/swordkee