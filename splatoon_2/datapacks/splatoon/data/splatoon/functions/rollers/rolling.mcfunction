execute if entity @s[team=blue] run fill ~ ~-2 ~ ~ ~ ~ blue_wool replace #wool
execute if entity @s[team=yellow] run fill ~ ~-2 ~ ~ ~ ~ yellow_wool replace #wool
execute if entity @s[team=blue] run particle block blue_wool ~ ~0.2 ~ 0.1 0.1 0.1 0.01 5 normal @a
execute if entity @s[team=yellow] run particle block yellow_wool ~ ~0.2 ~ 0.1 0.1 0.1 0.01 5 normal @a
execute if entity @s[team=blue] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=yellow,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[team=yellow] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=blue,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[team=blue] positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=armor_stand,tag=destructible,tag=yellow,dx=0,dy=0,dz=0]
execute if entity @s[team=yellow] positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=armor_stand,tag=destructible,tag=blue,dx=0,dy=0,dz=0]