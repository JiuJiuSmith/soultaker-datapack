#by JiuJiu

#状态栏
execute as @a[tag=ingame] run title @s actionbar [{"text":"生命:","color":"red","bold":true},{"score":{"name":"@s","objective":"hp"},"color":"white","bold":false},{"text":"         灵魂:","color":"aqua","bold":true},{"score":{"name":"@s","objective":"soul"},"color":"white","bold":false}]