#by JiuJiu

#################################################################################
##疑似无用文件，为建构时由挪用其他数据包导致残留
execute as @a if score @s cd matches 1.. run scoreboard players remove @s cd 1
execute as @a if score @s cd matches ..0 run function gl:game/skill/ready
execute as @a run scoreboard players operation @s cd_display = @s cd
scoreboard players operation @a cd_display /= npc cd
#################################################################################