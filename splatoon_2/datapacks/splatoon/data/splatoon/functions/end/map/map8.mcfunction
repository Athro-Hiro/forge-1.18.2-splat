scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3149
execute store result score blue_blocks value run fill 760 33 60 840 35 -60 gray_wool replace blue_wool
execute store result score yellow_blocks value run fill 760 33 60 840 35 -60 gray_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 760 36 60 840 38 -60 gray_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 760 36 60 840 38 -60 gray_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 760 39 60 840 41 -60 gray_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 760 39 60 840 41 -60 gray_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 760 42 60 840 44 -60 gray_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 760 42 60 840 44 -60 gray_wool replace yellow_wool
execute store result score blue_blocks5 value run fill 760 45 60 840 45 -60 gray_wool replace blue_wool
execute store result score yellow_blocks5 value run fill 760 45 60 840 45 -60 gray_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value
scoreboard players operation blue_blocks value += blue_blocks5 value
scoreboard players operation yellow_blocks value += yellow_blocks5 value