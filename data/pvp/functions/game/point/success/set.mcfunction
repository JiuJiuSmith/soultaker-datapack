#by JiuJiu

#粒子效果
particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 200

#播放音乐
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1

#重置潜行时间
scoreboard players set @s shift_time 0

#结算灵魂以及得分
function pvp:game/point/success/soul

#移除标签
tag @s remove shift