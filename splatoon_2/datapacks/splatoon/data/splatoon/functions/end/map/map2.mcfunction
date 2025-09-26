scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3809
execute store result score blue_blocks value run fill 160 32 60 240 34 -60 gray_wool replace blue_wool
execute store result score yellow_blocks value run fill 160 32 60 240 34 -60 gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 160 35 60 240 37 -60 gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 160 35 60 240 37 -60 gray_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 160 38 60 240 40 -60 gray_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 160 38 60 240 40 -60 gray_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 160 41 60 240 43 -60 gray_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 160 41 60 240 43 -60 gray_wool replace yellow_wool
execute store result score blue_blocks5 value run fill 160 31 60 240 31 -60 gray_wool replace blue_wool
execute store result score yellow_blocks5 value run fill 160 31 60 240 31 -60 gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value
scoreboard players operation blue_blocks value += blue_blocks5 value
scoreboard players operation yellow_blocks value += yellow_blocks5 value