scoreboard players operation @s damage = damage value
execute if score fall value matches 1 run tag @s add fall
scoreboard players operation @s bullet_id = next_bullet_id value
execute if score type value matches 1 run tag @s add x
execute if score type value matches 2 run tag @s add z
execute if score type value matches 3 run tag @s add small
execute if score type value matches 4 run tag @s add medium
tag @s remove new_droplet