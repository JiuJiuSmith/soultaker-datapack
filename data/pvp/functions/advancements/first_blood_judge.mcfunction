#by Reazide

execute if entity @s[tag=!notfirst] run advancement grant @s only pvp:first_blood
execute if entity @a[tag=!notfirst] run tag @a[tag=!notfirst] add notfirst