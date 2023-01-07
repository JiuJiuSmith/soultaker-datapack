#by JiuJiu

##忍者-弹反伤害
scoreboard players set @p[tag=me] life 0
scoreboard players set @p[tag=me] damage 1
scoreboard players operation @s hurt = @p[tag=me] hurt
execute at @p[tag=me] run playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.5 0.8
execute at @p[tag=me] run playsound minecraft:block.anvil.place player @a ~ ~ ~ 2 2
