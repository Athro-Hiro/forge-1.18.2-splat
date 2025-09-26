execute as @a[scores={shoot=1..,cooldown=0},tag=dualie_class] at @s run function splatoon:dualies/double_shoot
scoreboard players set @a[tag=dualie_class] shoot 0
scoreboard players remove @a[scores={rolltimer=1..}] rolltimer 1
scoreboard players remove @a[scores={roll_cooldown=1..}] roll_cooldown 1
scoreboard players set @a[scores={rolltimer=0}] dodge_rolls 0
execute as @a[scores={rolltimer=0}] run attribute @s minecraft:generic.movement_speed modifier remove 420-420-420-420-420
execute as @a[scores={roll_cooldown=0},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Dodge Roll\"}"}}}}] if score @s dodge_rolls < @s dodge_rolls_max if score @s ink >= @s ink_cost_roll run tag @s add dodge_roll
execute as @a[tag=dodge_roll] at @s run function splatoon:dualies/dodge_roll
tag @a remove dodge_roll