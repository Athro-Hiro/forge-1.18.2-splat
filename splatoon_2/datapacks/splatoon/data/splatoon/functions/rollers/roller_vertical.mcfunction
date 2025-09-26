tag @s add vertical
function splatoon:rollers/shoot
tag @s remove vertical
scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players operation @s inkregenlag > @s inkregenlag_main
function splatoon:next_bullet_id