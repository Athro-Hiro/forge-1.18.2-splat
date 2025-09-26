execute if entity @s[tag=blue] run fill ~-4 ~-4 ~-7 ~4 ~4 ~7 blue_wool replace #wool
execute if entity @s[tag=blue] run fill ~-7 ~-4 ~-4 ~7 ~4 ~4 blue_wool replace #wool
execute if entity @s[tag=blue] run fill ~-4 ~-7 ~-4 ~4 ~7 ~4 blue_wool replace #wool
execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 4 4 4 0.1 200 normal @a
execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..7] health 30
execute if entity @s[tag=yellow] run fill ~-4 ~-4 ~-7 ~4 ~4 ~7 yellow_wool replace #wool
execute if entity @s[tag=yellow] run fill ~-7 ~-4 ~-4 ~7 ~4 ~4 yellow_wool replace #wool
execute if entity @s[tag=yellow] run fill ~-4 ~-7 ~-4 ~4 ~7 ~4 yellow_wool replace #wool
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 4 4 4 0.1 200 normal @a
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..7] health 30
particle explosion ~ ~ ~ 4 4 4 0.01 100 normal @a
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..7]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..7]