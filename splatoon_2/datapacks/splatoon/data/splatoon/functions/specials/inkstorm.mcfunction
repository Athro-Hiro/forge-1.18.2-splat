summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Invulnerable:1,Tags:[inkstorm_droplet]}
spreadplayers ~ ~ 0 6 under 48 false @e[type=armor_stand,tag=inkstorm_droplet]
execute if entity @s[tag=blue] at @e[type=armor_stand,tag=inkstorm_droplet] run fill ~ ~-1 ~ ~ ~ ~ blue_wool replace #wool
execute if entity @s[tag=yellow] at @e[type=armor_stand,tag=inkstorm_droplet] run fill ~ ~-1 ~ ~ ~ ~ yellow_wool replace #wool
execute if score map_id value matches 28 if entity @s[tag=blue] at @e[type=armor_stand,tag=inkstorm_droplet] run fill ~ 31 ~ ~ 50 ~ blue_wool replace #wool
execute if score map_id value matches 28 if entity @s[tag=yellow] at @e[type=armor_stand,tag=inkstorm_droplet] run fill ~ 31 ~ ~ 50 ~ yellow_wool replace #wool
execute if entity @s[tag=blue] run particle block blue_wool ~ ~10 ~ 3 5 3 0.1 50
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~10 ~ 3 5 3 0.1 50
particle dolphin ~ ~10 ~ 3 5 3 0.1 50
execute if entity @s[tag=blue] positioned ~-6 ~ ~-6 run scoreboard players remove @a[team=yellow,dx=12,dy=20,dz=12] health 1
execute if entity @s[tag=yellow] positioned ~-6 ~ ~-6 run scoreboard players remove @a[team=blue,dx=12,dy=20,dz=12] health 1
tp @s ^ ^ ^0.1
kill @e[type=armor_stand,tag=inkstorm_droplet]