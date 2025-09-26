scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 2758
execute store result score blue_blocks value run fill -460 33 60 -540 35 -60 white_wool replace blue_wool
execute store result score yellow_blocks value run fill -460 33 60 -540 35 -60 white_wool replace yellow_wool
execute store result score blue_blocks2 value run fill -460 36 60 -540 38 -60 white_wool replace blue_wool
execute store result score yellow_blocks2 value run fill -460 36 60 -540 38 -60 white_wool replace yellow_wool
execute store result score blue_blocks3 value run fill -460 39 60 -540 41 -60 white_wool replace blue_wool
execute store result score yellow_blocks3 value run fill -460 39 60 -540 41 -60 white_wool replace yellow_wool
execute store result score blue_blocks4 value run fill -460 42 60 -540 44 -60 white_wool replace blue_wool
execute store result score yellow_blocks4 value run fill -460 42 60 -540 44 -60 white_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value