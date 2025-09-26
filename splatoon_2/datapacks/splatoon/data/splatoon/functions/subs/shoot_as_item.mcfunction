execute if score team value matches 1 run tag @s add blue
execute if score team value matches 2 run tag @s add yellow
execute if score type value matches 1 run tag @s add splat_bomb
execute if score type value matches 2 run tag @s add suction_bomb
execute if score type value matches 3 run tag @s add burst_bomb
execute if score type value matches 4 run tag @s add fizzy_bomb
execute if score type value matches 5 run tag @s add torpedo
execute if score type value matches 6 run tag @s add point_sensor
execute if score type value matches 7 run tag @s add toxic_mist
execute if score type value matches 8 run tag @s add autobomb
execute if score type value matches 9 run tag @s add sprinkler
execute if score charged value matches 1 run tag @s add charged
execute if score type value matches 4 store result entity @s Rotation[0] float 0.000001 run scoreboard players get rotation value
execute if score type value matches 4 if score charged value matches 1 run scoreboard players set @s shots 3
execute if score type value matches 4 if score charged value matches 0 run scoreboard players set @s shots 1
execute if score impact value matches 1 run tag @s add impact
execute if score type value matches 9 run scoreboard players operation @s playerid = playerid value
execute if score x_zero value matches 1 run tag @s add x_zero
execute if score z_zero value matches 1 run tag @s add z_zero
execute if score direction value matches 1 if score type value matches 4 run tag @s add x
execute if score direction value matches 2 if score type value matches 4 run tag @s add z
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get dx value
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get dy value
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get dz value
tag @s add timer