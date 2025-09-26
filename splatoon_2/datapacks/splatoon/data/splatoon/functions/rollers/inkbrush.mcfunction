tag @s add horizontal
execute rotated ~-20 ~ run function splatoon:rollers/shoot
function splatoon:rollers/shoot
execute rotated ~20 ~ run function splatoon:rollers/shoot
tag @s remove horizontal
scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players operation @s inkregenlag > @s inkregenlag_main