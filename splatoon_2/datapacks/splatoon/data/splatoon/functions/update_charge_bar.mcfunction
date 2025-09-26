scoreboard players operation temp value = @s charge_max
scoreboard players set temp3 value 10
scoreboard players operation temp value *= temp3 value
scoreboard players set temp2 value 7
scoreboard players operation temp value /= temp2 value
scoreboard players operation temp2 value = @s main_charge
scoreboard players operation temp2 value *= temp3 value
scoreboard players operation temp2 value /= temp value
xp set @s 0 points
execute if score temp2 value matches 1 run xp set @s 1 points
execute if score temp2 value matches 2 run xp set @s 2 points
execute if score temp2 value matches 3 run xp set @s 3 points
execute if score temp2 value matches 4 run xp set @s 4 points
execute if score temp2 value matches 5 run xp set @s 5 points
execute if score temp2 value matches 6 run xp set @s 6 points