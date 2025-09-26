scoreboard players operation @s range = range value
execute if score direction value matches 1 run tag @s add x
execute if score direction value matches 2 run tag @s add z
execute if score direction value matches 3 run tag @s add dp
execute if score direction value matches 4 run tag @s add dn
execute if score uncharged value matches 1 run tag @s add uncharged
execute store result entity @s Motion[0] double 0.000002 run scoreboard players get dx value
execute store result entity @s Motion[1] double 0.000002 run scoreboard players get dy value
execute store result entity @s Motion[2] double 0.000002 run scoreboard players get dz value
tag @s add timer