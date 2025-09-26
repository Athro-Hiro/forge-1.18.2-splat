execute if entity @s[scores={rolltimer=0}] positioned ^-0.2 ^ ^ run function splatoon:dualies/shoot
execute if entity @s[scores={rolltimer=0}] positioned ^0.2 ^ ^ run function splatoon:dualies/shoot
execute if entity @s[scores={rolltimer=1..}] run function splatoon:dualies/shoot
execute if entity @s[scores={rolltimer=1..}] run function splatoon:dualies/shoot
scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players operation @s inkregenlag > @s inkregenlag_main