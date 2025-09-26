scoreboard players add @s raycast 1
execute if entity @s[scores={raycast=3..}] run particle end_rod ~ ~ ~ 0.01 0.01 0.01 0.1 1 force @a
execute if entity @s[scores={raycast=3..},tag=blue] run particle block blue_wool ~ ~ ~ 0.01 0.01 0.01 0.1 1 force @a
execute if entity @s[scores={raycast=3..},tag=yellow] run particle block yellow_wool ~ ~ ~ 0.01 0.01 0.01 0.1 1 force @a
execute if entity @s[scores={raycast=..100}] positioned ^ ^ ^1 run function splatoon:specials/killer_wail_ray_start