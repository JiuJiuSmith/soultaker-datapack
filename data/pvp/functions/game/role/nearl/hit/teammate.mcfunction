# By Azide 2023/01/12-22时

# 给予队友护盾

tag @s add guarded
# 代表我被击中
tag @s add me

execute as @a if score @s pid = @e[tag=move, limit=1] pid run function pvp:game/role/nearl/hit/success

tag @s remove me

kill @e[tag=move]
