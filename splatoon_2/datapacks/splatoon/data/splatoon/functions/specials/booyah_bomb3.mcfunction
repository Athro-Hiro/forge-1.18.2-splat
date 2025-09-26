execute if entity @s[tag=blue] run fill ~-3 ~-3 ~-5 ~3 ~3 ~5 blue_wool replace #wool
execute if entity @s[tag=blue] run fill ~-5 ~-3 ~-3 ~5 ~3 ~3 blue_wool replace #wool
execute if entity @s[tag=blue] run fill ~-3 ~-5 ~-3 ~3 ~5 ~3 blue_wool replace #wool
execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 3 3 3 0.1 200 normal @a
execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..5] health 30
execute if entity @s[tag=yellow] run fill ~-3 ~-3 ~-5 ~3 ~3 ~5 yellow_wool replace #wool
execute if entity @s[tag=yellow] run fill ~-5 ~-3 ~-3 ~5 ~3 ~3 yellow_wool replace #wool
execute if entity @s[tag=yellow] run fill ~-3 ~-5 ~-3 ~3 ~5 ~3 yellow_wool replace #wool
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 3 3 3 0.1 200 normal @a
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..5] health 30
particle explosion ~ ~ ~ 3 3 3 0.01 100 normal @a
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..5]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..5]