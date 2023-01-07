#by JiuJiu

execute if score RedTeam score > BlueTeam score run function pvp:system/run/win/round_red
execute if score RedTeam score < BlueTeam score run function pvp:system/run/win/round_blue
execute if score RedTeam score = BlueTeam score run function pvp:system/run/win/round_tie

scoreboard players set RedTeam score 0
scoreboard players set BlueTeam score 0

execute if score #round round matches ..2 run scoreboard players set #countdown countdown 6000