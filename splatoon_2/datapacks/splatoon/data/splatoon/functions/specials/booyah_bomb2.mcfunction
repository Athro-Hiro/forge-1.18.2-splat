execute if entity @s[tag=blue] run fill ~-2 ~-2 ~-4 ~2 ~2 ~4 blue_wool replace #wool
execute if entity @s[tag=blue] run fill ~-4 ~-2 ~-2 ~4 ~2 ~2 blue_wool replace #wool
execute if entity @s[tag=blue] run fill ~-2 ~-4 ~-2 ~2 ~4 ~2 blue_wool replace #wool
execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 2.5 2.5 2.5 0.1 200 normal @a
execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..4] health 30
execute if entity @s[tag=yellow] run fill ~-2 ~-2 ~-4 ~2 ~2 ~4 yellow_wool replace #wool
execute if entity @s[tag=yellow] run fill ~-4 ~-2 ~-2 ~4 ~2 ~2 yellow_wool replace #wool
execute if entity @s[tag=yellow] run fill ~-2 ~-4 ~-2 ~2 ~4 ~2 yellow_wool replace #wool
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 2.5 2.5 2.5 0.1 200 normal @a
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..4] health 30
particle explosion ~ ~ ~ 2.5 2.5 2.5 0.01 100 normal @a
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..4]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..4]