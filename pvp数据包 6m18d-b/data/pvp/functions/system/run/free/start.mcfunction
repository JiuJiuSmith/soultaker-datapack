#by JiuJiu

#启用自由模式
function pvp:system/team/set_up
scoreboard players set @a tid 0
scoreboard players set #player redplayer 0
scoreboard players set #player blueplayer 0
scoreboard players set #free free_step 1

tellraw @a[tag=ingame] {"text": "[系统] 请选择想要加入的队伍，所有加入游戏的玩家进入队伍后开始选择角色","color": "aqua"}
