execute unless block ~ ~-1 ~ air run tag @s add y_pos
execute unless block ~ ~1 ~ air if entity @s[tag=!y_pos] run tag @s add y_neg
execute unless block ~-1 ~ ~ air if entity @s[tag=!y_pos,tag=!y_neg] run tag @s add x_pos
execute unless block ~1 ~ ~ air if entity @s[tag=!y_pos,tag=!y_neg,tag=!x_pos] run tag @s add x_neg
execute unless block ~ ~ ~-1 air if entity @s[tag=!y_pos,tag=!y_neg,tag=!x_neg,tag=!x_pos] run tag @s add z_pos
execute unless block ~ ~ ~1 air if entity @s[tag=!y_pos,tag=!y_neg,tag=!x_pos,tag=!x_neg,tag=!z_pos] run tag @s add z_neg
execute if entity @s[tag=!y_pos,tag=!y_neg,tag=!x_pos,tag=!x_neg,tag=!z_pos,tag=!z_neg] run tag @s add y_pos