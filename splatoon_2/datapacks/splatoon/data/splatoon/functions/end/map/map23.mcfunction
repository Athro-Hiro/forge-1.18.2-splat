scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3073
execute store result score blue_blocks value run fill 460 36 -260 540 38 -140 light_gray_wool replace blue_wool
execute store result score yellow_blocks value run fill 460 36 -260 540 38 -140 light_gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 460 39 -260 540 41 -140 light_gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 460 39 -260 540 41 -140 light_gray_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 460 42 -260 540 44 -140 light_gray_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 460 42 -260 540 44 -140 light_gray_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 460 45 -260 540 47 -140 light_gray_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 460 45 -260 540 47 -140 light_gray_wool replace yellow_wool
execute store result score blue_blocks5 value run fill 460 48 -260 540 50 -140 light_gray_wool replace blue_wool
execute store result score yellow_blocks5 value run fill 460 48 -260 540 50 -140 light_gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value
scoreboard players operation blue_blocks value += blue_blocks5 value
scoreboard players operation yellow_blocks value += yellow_blocks5 value