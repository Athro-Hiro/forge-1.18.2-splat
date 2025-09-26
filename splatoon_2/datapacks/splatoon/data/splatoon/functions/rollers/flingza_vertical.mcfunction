scoreboard players add @s range 2
tag @s add vertical
function splatoon:rollers/shoot
tag @s remove vertical
scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players operation @s inkregenlag > @s inkregenlag_main
scoreboard players remove @s range 2
function splatoon:next_bullet_id