execute if entity @s[team=blue] run fill ~-3 ~-3 ~-5 ~3 ~3 ~5 blue_wool replace #wool
execute if entity @s[team=blue] run fill ~-5 ~-3 ~-3 ~5 ~3 ~3 blue_wool replace #wool
execute if entity @s[team=blue] run fill ~-3 ~-5 ~-3 ~3 ~5 ~3 blue_wool replace #wool
execute if entity @s[team=yellow] run fill ~-3 ~-3 ~-5 ~3 ~3 ~5 yellow_wool replace #wool
execute if entity @s[team=yellow] run fill ~-5 ~-3 ~-3 ~5 ~3 ~3 yellow_wool replace #wool
execute if entity @s[team=yellow] run fill ~-3 ~-5 ~-3 ~3 ~5 ~3 yellow_wool replace #wool
execute if entity @s[team=blue] run scoreboard players remove @a[team=yellow,distance=..4] health 120
execute if entity @s[team=yellow] run scoreboard players remove @a[team=blue,distance=..4] health 120
execute if entity @s[team=blue] run particle block blue_wool ~ ~ ~ 4 4 4 0.1 500 normal @a
execute if entity @s[team=yellow] run particle block yellow_wool ~ ~ ~ 4 4 4 0.1 500 normal @a
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 3
execute if entity @s[team=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..4]
execute if entity @s[team=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..4]
execute if entity @s[team=blue] run scoreboard players add @e[type=armor_stand,tag=bubble,tag=blue,distance=..4] health 10
execute if entity @s[team=blue] run scoreboard players remove @e[type=armor_stand,tag=bubble,tag=yellow,distance=..4] health 10
execute if entity @s[team=yellow] run scoreboard players remove @e[type=armor_stand,tag=bubble,tag=blue,distance=..4] health 10
execute if entity @s[team=yellow] run scoreboard players add @e[type=armor_stand,tag=bubble,tag=yellow,distance=..4] health 10