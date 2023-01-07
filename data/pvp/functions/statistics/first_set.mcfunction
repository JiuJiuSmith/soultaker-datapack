#by JiuJiu

scoreboard objectives add game_times dummy "游戏场次"
scoreboard objectives add role_pick_times dummy "角色登场次数"
scoreboard objectives add role_win_times dummy "角色胜场"
scoreboard objectives add role_pick_rate dummy "角色登场率‰"
scoreboard objectives add role_win_rate dummy "角色胜率‰"

scoreboard players set 游戏场次 game_times 0
scoreboard players set R1剑士 role_times 0
scoreboard players set R2狂战士 role_times 0
scoreboard players set R3游侠 role_times 0
scoreboard players set R4弩手 role_times 0
scoreboard players set R5法师 role_times 0
scoreboard players set R6牧师 role_times 0
scoreboard players set R7死神 role_times 0

scoreboard players set #1000 operation 1000