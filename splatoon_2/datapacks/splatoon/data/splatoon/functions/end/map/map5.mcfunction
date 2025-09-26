scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 4238
execute store result score blue_blocks value run fill 460 31 60 540 33 -60 brown_wool replace blue_wool
execute store result score yellow_blocks value run fill 460 31 60 540 33 -60 brown_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 460 34 60 540 36 -60 brown_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 460 34 60 540 36 -60 brown_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 460 37 60 540 38 -60 brown_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 460 37 60 540 38 -60 brown_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value