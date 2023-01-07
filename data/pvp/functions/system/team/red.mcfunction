#by JiuJiu

scoreboard players set @s tid 1
scoreboard players add #player redplayer 1
team join red @s

tellraw @s[tag=ingame] [{"text": "[游戏] 你加入了","color": "yellow"},{"text": "红队","color": "red"}]