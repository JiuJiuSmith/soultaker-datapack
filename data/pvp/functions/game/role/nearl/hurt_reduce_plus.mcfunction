# By Azide 2023/01/14-11时

# guarded_plus标签二次减伤
# 与guard为乘法计算， 最终承伤0.7*(0.7~1)=0.49~0.7 取决于继承灵魂的数量(0-100)
scoreboard players operation #inherit_soul inherit_soul = @s inherit_soul
scoreboard players operation #inherit_soul inherit_soul *= #3 operation
scoreboard players operation #inherit_soul inherit_soul /= #10 operation
scoreboard players set #operation operation 100
scoreboard players operation #operation operation -= #inherit_soul inherit_soul
scoreboard players operation @s hurt *= #operation operation
scoreboard players operation @s hurt /= #100 operation