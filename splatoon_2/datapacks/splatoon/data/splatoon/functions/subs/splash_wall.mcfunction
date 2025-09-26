scoreboard players operation wall_health value = @s lifetime
execute if entity @s[tag=x,tag=blue] run particle block blue_wool ~ ~3.5 ~ 1 0.1 0.5 0.1 10 normal @a
execute if entity @s[tag=x,tag=yellow] run particle block yellow_wool ~ ~3.5 ~ 1 0.1 0.5 0.1 10 normal @a
execute if entity @s[tag=x,tag=blue] run particle block blue_wool ~1 ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=blue] run particle block blue_wool ~ ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=blue] run particle block blue_wool ~-1 ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=blue] run particle block blue_wool ~2 ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=blue] run particle block blue_wool ~-2 ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=yellow] run particle block yellow_wool ~1 ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=yellow] run particle block yellow_wool ~ ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=yellow] run particle block yellow_wool ~-1 ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=yellow] run particle block yellow_wool ~2 ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=yellow] run particle block yellow_wool ~-2 ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=x,tag=blue] positioned ~-2.5 ~ ~-0.75 as @e[dx=4,dy=3,dz=0.5] at @s run function splatoon:subs/blue_wall
execute if entity @s[tag=x,tag=yellow] positioned ~-2.5 ~ ~-0.75 as @e[dx=4,dy=3,dz=0.5] at @s run function splatoon:subs/yellow_wall
execute if entity @s[tag=x,tag=blue] positioned ~-2.5 ~ ~-1.5 as @e[dx=4,dy=3,dz=2,type=arrow,tag=x] at @s run function splatoon:subs/blue_wall
execute if entity @s[tag=x,tag=yellow] positioned ~-2.5 ~ ~-1.5 as @e[dx=4,dy=3,dz=2,type=arrow,tag=x] at @s run function splatoon:subs/yellow_wall
execute if entity @s[tag=x,tag=blue] run fill ~-2 ~-1 ~ ~2 ~ ~ blue_wool replace #wool
execute if entity @s[tag=x,tag=yellow] run fill ~-2 ~-1 ~ ~2 ~ ~ yellow_wool replace #wool
execute if entity @s[tag=z,tag=blue] run particle block blue_wool ~ ~3.5 ~ 0.5 0.1 1 0.1 10 normal @a
execute if entity @s[tag=z,tag=yellow] run particle block yellow_wool ~ ~3.5 ~ 0.5 0.1 1 0.1 10 normal @a
execute if entity @s[tag=z,tag=blue] run particle block blue_wool ~ ~2 ~1 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=blue] run particle block blue_wool ~ ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=blue] run particle block blue_wool ~ ~2 ~-1 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=blue] run particle block blue_wool ~ ~2 ~2 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=blue] run particle block blue_wool ~ ~2 ~-2 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=yellow] run particle block yellow_wool ~ ~2 ~1 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=yellow] run particle block yellow_wool ~ ~2 ~ 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=yellow] run particle block yellow_wool ~ ~2 ~-1 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=yellow] run particle block yellow_wool ~ ~2 ~2 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=yellow] run particle block yellow_wool ~ ~2 ~-2 0.1 1 0.1 0.1 10 normal @a
execute if entity @s[tag=z,tag=blue] positioned ~-0.75 ~ ~-2.5 as @e[dx=0.5,dy=3,dz=4] at @s run function splatoon:subs/blue_wall
execute if entity @s[tag=z,tag=yellow] positioned ~-0.75 ~ ~-2.5 as @e[dx=0.5,dy=3,dz=4] at @s run function splatoon:subs/yellow_wall
execute if entity @s[tag=z,tag=blue] positioned ~-1.5 ~ ~-2.5 as @e[dx=2,dy=3,dz=4,type=arrow,tag=z] at @s run function splatoon:subs/blue_wall
execute if entity @s[tag=z,tag=yellow] positioned ~-1.5 ~ ~-2.5 as @e[dx=2,dy=3,dz=4,type=arrow,tag=z] at @s run function splatoon:subs/yellow_wall
execute if entity @s[tag=z,tag=blue] run fill ~ ~-1 ~-2 ~ ~ ~2 blue_wool replace #wool
execute if entity @s[tag=z,tag=yellow] run fill ~ ~-1 ~-2 ~ ~ ~2 yellow_wool replace #wool
scoreboard players operation @s lifetime = wall_health value
kill @s[scores={lifetime=200..}]
execute if block ~ ~ ~ water run kill @s
execute if block ~ ~-1 ~ barrier run kill @s