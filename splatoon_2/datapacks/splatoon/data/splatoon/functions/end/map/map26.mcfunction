scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3421
execute store result score blue_blocks value run fill 760 31 -260 840 33 -140 black_wool replace blue_wool
execute store result score yellow_blocks value run fill 760 31 -260 840 33 -140 black_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 760 34 -260 840 36 -140 black_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 760 34 -260 840 36 -140 black_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 760 37 -260 840 39 -140 black_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 760 37 -260 840 39 -140 black_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 760 40 -260 840 40 -140 black_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 760 40 -260 840 40 -140 black_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value