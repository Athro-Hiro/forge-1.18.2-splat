scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 4551
execute store result score blue_blocks value run fill 360 31 60 440 33 -60 gray_wool replace blue_wool
execute store result score yellow_blocks value run fill 360 31 60 440 33 -60 gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 360 34 60 440 36 -60 gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 360 34 60 440 36 -60 gray_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 360 37 60 440 39 -60 gray_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 360 37 60 440 39 -60 gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value