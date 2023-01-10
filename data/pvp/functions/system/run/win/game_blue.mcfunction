#by JiuJiu

title @a times 0 60 10
title @a subtitle {"text":""}
title @a title [{"text":"蓝方","color":"blue"},{"text":"胜利","color":"white"}]

scoreboard players add 游戏场次 game_times 1
execute as @a[team=blue,scores={rid=1}] run scoreboard players add R1剑士 role_win_times 1
execute as @a[team=blue,scores={rid=2}] run scoreboard players add R2狂战士 role_win_times 1
execute as @a[team=blue,scores={rid=3}] run scoreboard players add R3游侠 role_win_times 1
execute as @a[team=blue,scores={rid=4}] run scoreboard players add R4弩手 role_win_times 1
execute as @a[team=blue,scores={rid=5}] run scoreboard players add R5法师 role_win_times 1
execute as @a[team=blue,scores={rid=6}] run scoreboard players add R6牧师 role_win_times 1
execute as @a[team=blue,scores={rid=7}] run scoreboard players add R7死神 role_win_times 1
function pvp:statistics/operation

function pvp:system/run/win/reset