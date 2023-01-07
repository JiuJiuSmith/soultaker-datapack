#by JiuJiu

bossbar add countdown [{"text":"本局剩余时间:"},{"score":{"name":"#countdown","objective":"countdown"},"color":"white","bold":false}]
bossbar set minecraft:countdown max 6000
scoreboard players set #countdown countdown 6000
bossbar set minecraft:countdown players @a