function splatoon:brellas/shoot_pellet
execute rotated ~-5 ~ run function splatoon:brellas/shoot_pellet
execute rotated ~5 ~ run function splatoon:brellas/shoot_pellet
execute rotated ~ ~-5 run function splatoon:brellas/shoot_pellet
execute rotated ~ ~5 run function splatoon:brellas/shoot_pellet
scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players operation @s inkregenlag > @s inkregenlag_main
