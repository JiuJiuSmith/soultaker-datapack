#by JiuJiu

function pvp:system/run/win/judge
execute if score #round round matches 2..3 if score RedTeam round matches 2 run schedule function pvp:system/run/win/game_red 3s
execute if score #round round matches 2..3 if score BlueTeam round matches 2 run schedule function pvp:system/run/win/game_blue 3s
execute if score #round round matches 3 if score RedTeam round matches 1 if score BlueTeam round matches 0 run schedule function pvp:system/run/win/game_red 3s
execute if score #round round matches 3 if score BlueTeam round matches 1 if score RedTeam round matches 0 run schedule function pvp:system/run/win/game_blue 3s
execute if score #round round matches 3 if score RedTeam round matches 1 if score BlueTeam round matches 1 run schedule function pvp:system/run/win/game_tie 3s
execute if score #round round matches 3 if score BlueTeam round matches 0 if score RedTeam round matches 0 run schedule function pvp:system/run/win/game_tie 3s
scoreboard players add #round round 1