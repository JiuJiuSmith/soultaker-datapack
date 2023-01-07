#by JiuJiu

#系统设置
scoreboard objectives add rightclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add pid dummy
scoreboard objectives add rid dummy
scoreboard objectives add random dummy
scoreboard players set #max random 100
scoreboard objectives add gamemode dummy

#运算
scoreboard objectives add operation dummy
scoreboard players set #2 operation 2
scoreboard players set #20 operation 20
scoreboard players set #60 operation 60
scoreboard players set #160 operation 160
scoreboard players set #360 operation 360

#UI显示
scoreboard objectives add countdown dummy
scoreboard objectives add countdown_s dummy
scoreboard objectives add countdown_min dummy
scoreboard objectives add release_time dummy
scoreboard objectives add release_s dummy
scoreboard objectives add release_0.1s dummy

#默认自动游戏系统
scoreboard objectives add auto_time dummy
scoreboard objectives add auto_step dummy
scoreboard players set #auto auto_time 0
scoreboard players set #auto auto_step 0

#自由模式
scoreboard objectives add free_step dummy
scoreboard players set #free free_step 0

#游戏进程
scoreboard objectives add round dummy

#队伍
scoreboard objectives add tid dummy
scoreboard players set #tid tid 0
scoreboard objectives add redplayer dummy
scoreboard players set #player redplayer 0
scoreboard objectives add blueplayer dummy
scoreboard players set #player blueplayer 0

#火山献祭
scoreboard objectives add shift_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add shift_move minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add score dummy "分数"
scoreboard objectives setdisplay sidebar score

#灵魂相关
scoreboard objectives add collect_time dummy
scoreboard objectives add soul_cd dummy
scoreboard objectives add soul dummy
scoreboard objectives setdisplay list soul

#伤害与死亡判定相关
scoreboard objectives add hp dummy
scoreboard players set @a hp 200

scoreboard objectives add kill playerKillCount
scoreboard objectives add kill_count dummy

scoreboard objectives add spawn dummy

scoreboard objectives add hurt minecraft.custom:minecraft.damage_resisted
scoreboard objectives add damage dummy
scoreboard objectives add killer dummy
scoreboard objectives add helper dummy

scoreboard objectives add peace dummy
scoreboard objectives add health dummy

scoreboard objectives add arrow_id dummy
scoreboard players set #arrow arrow_id 0

#箭矢类武器使用判定
scoreboard objectives add bow minecraft.used:minecraft.bow
scoreboard objectives add crossbow minecraft.used:minecraft.crossbow

#角色技能互动
scoreboard objectives add life dummy
scoreboard objectives add cd dummy
scoreboard objectives add charge dummy
scoreboard objectives add cure dummy
scoreboard objectives add wither dummy

#游戏规则
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule commandBlockOutput false
gamerule showDeathMessages false
gamerule doMobSpawning false
gamerule randomTickSpeed 0