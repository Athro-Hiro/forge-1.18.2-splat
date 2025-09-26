scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 4577
execute store result score blue_blocks value run fill 360 34 -260 440 36 -140 gray_wool replace blue_wool
execute store result score yellow_blocks value run fill 360 34 -260 440 36 -140 gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 360 37 -260 440 39 -140 gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 360 37 -260 440 39 -140 gray_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 360 40 -260 440 42 -140 gray_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 360 40 -260 440 42 -140 gray_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 360 43 -260 440 45 -140 gray_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 360 43 -260 440 45 -140 gray_wool replace yellow_wool
execute store result score blue_blocks5 value run fill 360 46 -260 440 48 -140 gray_wool replace blue_wool
execute store result score yellow_blocks5 value run fill 360 46 -260 440 48 -140 gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value
scoreboard players operation blue_blocks value += blue_blocks5 value
scoreboard players operation yellow_blocks value += yellow_blocks5 value