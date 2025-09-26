scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3961
execute store result score blue_blocks value run fill 860 33 -260 940 33 -140 light_gray_wool replace blue_wool
execute store result score yellow_blocks value run fill 860 33 -260 940 33 -140 light_gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 860 34 -260 940 36 -140 light_gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 860 34 -260 940 36 -140 light_gray_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 860 37 -260 940 39 -140 light_gray_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 860 37 -260 940 39 -140 light_gray_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 860 40 -260 940 40 -140 light_gray_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 860 40 -260 940 40 -140 light_gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value
fill 930 35 -203 928 37 -203 netherite_block
fill 870 35 -197 872 37 -197 netherite_block