scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3808
execute store result score blue_blocks value run fill 660 31 -260 740 33 -140 brown_wool replace blue_wool
execute store result score yellow_blocks value run fill 660 31 -260 740 33 -140 brown_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 660 34 -260 740 36 -140 brown_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 660 34 -260 740 36 -140 brown_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 660 37 -260 740 39 -140 brown_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 660 37 -260 740 39 -140 brown_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 660 40 -260 740 42 -140 brown_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 660 40 -260 740 42 -140 brown_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value