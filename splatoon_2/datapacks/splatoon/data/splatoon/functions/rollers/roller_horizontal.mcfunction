tag @s add horizontal
execute rotated ~-30 ~ run function splatoon:rollers/shoot
tag @s add middle
execute rotated ~-10 ~ run function splatoon:rollers/shoot
execute rotated ~10 ~ run function splatoon:rollers/shoot
tag @s remove middle
execute rotated ~30 ~ run function splatoon:rollers/shoot
tag @s remove horizontal
scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players operation @s inkregenlag > @s inkregenlag_main
function splatoon:next_bullet_id