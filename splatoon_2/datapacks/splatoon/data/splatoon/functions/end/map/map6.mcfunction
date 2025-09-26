scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3736
execute store result score blue_blocks value run fill 560 35 60 640 37 -60 white_wool replace blue_wool
execute store result score yellow_blocks value run fill 560 35 60 640 37 -60 white_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 560 38 60 640 40 -60 white_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 560 38 60 640 40 -60 white_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 560 41 60 640 42 -60 white_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 560 41 60 640 42 -60 white_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value