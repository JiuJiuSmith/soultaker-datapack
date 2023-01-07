#by JiuJiu

scoreboard players set @s tid 2
scoreboard players add #player blueplayer 1
team join blue @s

tellraw @s[tag=ingame] [{"text": "[游戏] 你加入了","color": "yellow"},{"text": "蓝队","color": "blue"}]