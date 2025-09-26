scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3915
execute store result score blue_blocks value run fill 260 33 60 340 35 -60 light_gray_wool replace blue_wool
execute store result score yellow_blocks value run fill 260 33 60 340 35 -60 light_gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 260 36 60 340 38 -60 light_gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 260 36 60 340 38 -60 light_gray_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 260 39 60 340 40 -60 light_gray_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 260 39 60 340 40 -60 light_gray_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 260 41 60 340 43 -60 light_gray_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 260 41 60 340 43 -60 light_gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value