scoreboard players add @s raycast 1
execute if entity @s[tag=blue] positioned ~-2 ~-2 ~-2 run scoreboard players set @a[dx=3,dy=3,dz=3,team=yellow] health 0
execute if entity @s[scores={raycast=2..},tag=blue] run particle block blue_wool ~ ~ ~ 2 2 2 0.1 5 force @a
execute if entity @s[tag=yellow] positioned ~-2 ~-2 ~-2 run scoreboard players set @a[dx=3,dy=3,dz=3,team=blue] health 0
execute if entity @s[scores={raycast=2..},tag=yellow] run particle block yellow_wool ~ ~ ~ 2 2 2 0.1 5 force @a
execute if entity @s[scores={raycast=2..}] run particle end_rod ~ ~ ~ 2 2 2 0.1 5 force @a
execute if entity @s[scores={raycast=..25}] positioned ^ ^ ^4 run function splatoon:specials/killer_wail_ray