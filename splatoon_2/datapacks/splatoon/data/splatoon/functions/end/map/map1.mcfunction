scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3909
execute store result score blue_blocks value run fill 60 32 60 140 34 -60 gray_wool replace blue_wool
execute store result score yellow_blocks value run fill 60 32 60 140 34 -60 gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 60 35 60 140 37 -60 gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 60 35 60 140 37 -60 gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value