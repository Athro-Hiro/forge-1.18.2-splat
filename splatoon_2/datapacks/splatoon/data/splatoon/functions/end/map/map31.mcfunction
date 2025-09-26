scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 4505
execute store result score blue_blocks value run fill -50 32 -150 50 34 -250 light_gray_wool replace blue_wool
execute store result score yellow_blocks value run fill -50 32 -150 50 34 -250 light_gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill -50 35 -150 50 37 -250 light_gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill -50 35 -150 50 37 -250 light_gray_wool replace yellow_wool
execute store result score blue_blocks3 value run fill -50 38 -150 50 40 -250 light_gray_wool replace blue_wool
execute store result score yellow_blocks3 value run fill -50 38 -150 50 40 -250 light_gray_wool replace yellow_wool
execute store result score blue_blocks4 value run fill -50 41 -150 50 43 -250 light_gray_wool replace blue_wool
execute store result score yellow_blocks4 value run fill -50 41 -150 50 43 -250 light_gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value