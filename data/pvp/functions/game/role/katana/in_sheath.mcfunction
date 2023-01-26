#by JiuJiu

##武士-纳刀
scoreboard players set @s katana 1
scoreboard players set @s soul_escapes_s 0
scoreboard players set @s swordkee_damage 30
scoreboard players set @s cd 20

item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData:15,katana:1,display:{Name:'[{"text":"刀鞘","color":"white","italic": false}]'}}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}],Damage:0,AttributeModifiers:[{AttributeName:"generic.armor",Operation:0,Amount:4,Slot:"chest",Name:"Armor",UUID:[I;25,26,27,28]}],display:{color:15233282}}
