#by JiuJiu

tag @s add shift

#人数差判定
execute if score #player redplayer > #player blueplayer as @s[team=red] run function pvp:game/point/dtc
execute if score #player redplayer < #player blueplayer as @s[team=blue] run function pvp:game/point/dtc
execute if score #player redplayer <= #player blueplayer as @s[team=red] run function pvp:game/point/false
execute if score #player redplayer >= #player blueplayer as @s[team=blue] run function pvp:game/point/false