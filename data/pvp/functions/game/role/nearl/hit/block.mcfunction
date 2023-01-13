# By Azide 2023/01/12-22时

# 击中方框

execute as @a[tag=ingame] if score @s pid = @e[tag=move, limit=1] pid run function pvp:game/role/nearl/regain_shield

kill @e[tag=move]
