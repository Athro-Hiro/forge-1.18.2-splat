scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 2626
execute store result score blue_blocks value run fill 660 32 60 740 34 -60 light_gray_wool replace blue_wool
execute store result score yellow_blocks value run fill 660 32 60 740 34 -60 light_gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 660 35 60 740 37 -60 light_gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 660 35 60 740 37 -60 light_gray_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 660 38 60 740 40 -60 light_gray_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 660 38 60 740 40 -60 light_gray_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 660 41 60 740 43 -60 light_gray_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 660 41 60 740 43 -60 light_gray_wool replace yellow_wool
execute store result score blue_blocks5 value run fill 660 44 60 740 44 -60 light_gray_wool replace blue_wool
execute store result score yellow_blocks5 value run fill 660 44 60 740 44 -60 light_gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value
scoreboard players operation blue_blocks value += blue_blocks5 value
scoreboard players operation yellow_blocks value += yellow_blocks5 value