scoreboard players operation @s range = range value
scoreboard players operation @s damage = damage value
execute if score x_zero value matches 1 run tag @s add x_zero
execute if score z_zero value matches 1 run tag @s add z_zero
execute store result entity @s Motion[0] double 0.0000012 run scoreboard players get dx value
execute store result entity @s Motion[1] double 0.0000012 run scoreboard players get dy value
execute store result entity @s Motion[2] double 0.0000012 run scoreboard players get dz value
tag @s add small
tag @s add timer