kill @e[type=arrow,tag=]
execute rotated ~ ~-4 run function splatoon:bows/shoot
function splatoon:bows/shoot
execute rotated ~ ~4 run function splatoon:bows/shoot
scoreboard players operation @s inkregenlag = @s inkregenlag_main
execute if score @s main_charge > @s charge_max run scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players operation temp value = @s ink_cost_main
scoreboard players set temp2 value 3
scoreboard players operation temp value /= temp2 value
execute if score @s main_charge <= @s charge_max run scoreboard players operation @s ink -= temp value
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players set @s main_charge 0