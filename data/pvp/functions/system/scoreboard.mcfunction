#by JiuJiu

#计分板(scoreboard)与游戏规则(gamerule)

##系统设置
scoreboard objectives add rightclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add pid dummy
scoreboard objectives add rid dummy
scoreboard objectives add random dummy
scoreboard players set #max random 100
scoreboard objectives add gamemode dummy

##运算相关
scoreboard objectives add operation dummy
scoreboard players set #1 operation 1
scoreboard players set #2 operation 2
scoreboard players set #3 operation 3
scoreboard players set #5 operation 5
scoreboard players set #6 operation 6
scoreboard players set #10 operation 10
scoreboard players set #20 operation 20
scoreboard players set #60 operation 60
scoreboard players set #100 operation 100
scoreboard players set #160 operation 160
scoreboard players set #360 operation 360

##UI显示
scoreboard objectives add countdown dummy
scoreboard objectives add countdown_s dummy
scoreboard objectives add countdown_min dummy
scoreboard objectives add release_time dummy
scoreboard objectives add release_s dummy
scoreboard objectives add release_0.1s dummy

##默认自动游戏(竞技模式)系统
scoreboard objectives add auto_time dummy
scoreboard objectives add auto_step dummy
scoreboard players set #auto auto_time 0
scoreboard players set #auto auto_step 0

##自由模式
scoreboard objectives add free_step dummy
scoreboard players set #free free_step 0

##游戏进程
scoreboard objectives add round dummy

##队伍
scoreboard objectives add tid dummy
scoreboard players set #tid tid 0
scoreboard objectives add redplayer dummy
scoreboard players set #player redplayer 0
scoreboard objectives add blueplayer dummy
scoreboard players set #player blueplayer 0

##献祭
scoreboard objectives add shift_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add shift_move minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add score dummy "分数"
scoreboard objectives setdisplay sidebar score

##灵魂相关
scoreboard objectives add collect_time dummy
scoreboard objectives add soul_cd dummy
scoreboard objectives add soul dummy
scoreboard objectives setdisplay list soul

##伤害与死亡判定相关
#生命值
scoreboard objectives add hp dummy
scoreboard players set @a hp 200
#击杀数(疑似无用计分板kill，在death/judge中重置死亡侦测内使用)
scoreboard objectives add kill playerKillCount
scoreboard objectives add kill_count dummy
#重生时间
scoreboard objectives add spawn dummy
#受伤值(被伤害吸收)
scoreboard objectives add hurt minecraft.custom:minecraft.damage_resisted
#造成伤害者检测(与成就相关)
scoreboard objectives add damage dummy
#击杀者、助攻者
scoreboard objectives add killer dummy
scoreboard objectives add helper dummy
#脱战时间
scoreboard objectives add peace dummy
#脱战后再生效果的回复时间间隔计算
scoreboard objectives add health dummy

##箭矢类武器使用判定
#使用箭矢类武器者判定
scoreboard objectives add bow minecraft.used:minecraft.bow
scoreboard objectives add crossbow minecraft.used:minecraft.crossbow
#箭矢绑定发射者时对箭矢的编号
scoreboard objectives add arrow_id dummy
scoreboard players set #arrow arrow_id 0

##角色技能互动
#通用 *life：实体道具的存活时间 *cd:角色技能计时器
scoreboard objectives add life dummy
scoreboard objectives add cd dummy
#狂战士 *hemato：吸血值
scoreboard objectives add hemato dummy
#法师 *charge:充能阶段 *fire：发射时右键时长检测值
scoreboard objectives add charge dummy
scoreboard objectives add fire dummy
#牧师 *cure：快速再生时间 *wither：凋零效果时间
scoreboard objectives add cure dummy
scoreboard objectives add wither dummy
#武士 *katana：武器状态 *soul_escapes_s：灵魂逸散时间间隔 *soul_cling：攻击获取灵魂值 *swordkee_damage：剑气伤害值
scoreboard objectives add katana dummy
scoreboard objectives add soul_escapes_s dummy
scoreboard objectives add soul_cling dummy
scoreboard objectives add swordkee_damage dummy
#耀骑士
## 武器耀阳的状态 0: 手持 1: 插地
scoreboard objectives add blazing_sun dummy
scoreboard objectives add guarded_pid dummy

##游戏规则
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule commandBlockOutput false
gamerule showDeathMessages false
gamerule doMobSpawning false
gamerule randomTickSpeed 0