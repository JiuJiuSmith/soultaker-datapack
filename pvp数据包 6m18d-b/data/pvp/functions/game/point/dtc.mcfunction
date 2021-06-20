#by JiuJiu

#距离点位判定
execute as @e[tag=point,tag=mid,distance=..3] run function pvp:game/point/move
execute as @e[tag=point,tag=mid,distance=3..] run function pvp:game/point/false