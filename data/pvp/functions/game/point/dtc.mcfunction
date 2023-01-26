#by JiuJiu

#献祭点位判定-step2：距离3之内执行下一步
execute as @e[tag=point,tag=mid,scores={enable=1},distance=..3] run function pvp:game/point/move
execute as @e[tag=point,tag=mid,scores={enable=1},distance=3..] run function pvp:game/point/false