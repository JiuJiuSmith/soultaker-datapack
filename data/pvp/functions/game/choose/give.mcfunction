#pvp
#by JiuJiu

#重置职业
clear @s
scoreboard players set @s rid 0

#给予选择职业的信物(右键选择检测物)
item replace entity @s container.0 with carrot_on_a_stick{CustomModelData:1,role:1,display:{Name:'[{"text": "剑士","color": "gold","italic": false,"bold": true}]'}}
item replace entity @s container.1 with carrot_on_a_stick{CustomModelData:2,role:2,display:{Name:'[{"text": "狂战士","color": "gold","italic": false,"bold": true}]'}}
item replace entity @s container.2 with carrot_on_a_stick{CustomModelData:3,role:3,display:{Name:'[{"text": "游侠","color": "gold","italic": false,"bold": true}]'}}
item replace entity @s container.3 with carrot_on_a_stick{CustomModelData:4,role:4,display:{Name:'[{"text": "弩手","color": "gold","italic": false,"bold": true}]'}}
item replace entity @s container.4 with carrot_on_a_stick{CustomModelData:5,role:5,display:{Name:'[{"text": "法师","color": "gold","italic": false,"bold": true}]'}}
item replace entity @s container.5 with carrot_on_a_stick{CustomModelData:6,role:6,display:{Name:'[{"text": "牧师","color": "gold","italic": false,"bold": true}]'}}
item replace entity @s container.6 with carrot_on_a_stick{CustomModelData:15,role:8,display:{Name:'[{"text": "武士","color": "gold","italic": false,"bold": true}]'}}
item replace entity @s container.7 with carrot_on_a_stick{CustomModelData:17,role:9,display:{Name:'[{"text": "耀骑士","color": "gold","italic": false,"bold": true}]'}}
