scoreboard players set blue_blocks value 0
scoreboard players set yellow_blocks value 0
scoreboard players set total_blocks value 3018
execute store result score blue_blocks value run fill 260 33 260 340 35 140 brown_wool replace blue_wool
execute store result score yellow_blocks value run fill 260 33 260 340 35 140 brown_wool replace yellow_wool
execute store result score blue_blocks2 value run fill 260 36 260 340 38 140 brown_wool replace blue_wool
execute store result score yellow_blocks2 value run fill 260 36 260 340 38 140 brown_wool replace yellow_wool
execute store result score blue_blocks3 value run fill 260 39 260 340 41 140 brown_wool replace blue_wool
execute store result score yellow_blocks3 value run fill 260 39 260 340 41 140 brown_wool replace yellow_wool
execute store result score blue_blocks4 value run fill 260 42 260 340 44 140 brown_wool replace blue_wool
execute store result score yellow_blocks4 value run fill 260 42 260 340 44 140 brown_wool replace yellow_wool
execute store result score blue_blocks5 value run fill 260 31 260 340 32 140 brown_wool replace blue_wool
execute store result score yellow_blocks5 value run fill 260 31 260 340 32 140 brown_wool replace yellow_wool
scoreboard players operation blue_blocks value += blue_blocks2 value
scoreboard players operation yellow_blocks value += yellow_blocks2 value
scoreboard players operation blue_blocks value += blue_blocks3 value
scoreboard players operation yellow_blocks value += yellow_blocks3 value
scoreboard players operation blue_blocks value += blue_blocks4 value
scoreboard players operation yellow_blocks value += yellow_blocks4 value
scoreboard players operation blue_blocks value += blue_blocks5 value
scoreboard players operation yellow_blocks value += yellow_blocks5 value
fill 260 33 260 340 34 140 water keep
fill 260 33 260 340 34 140 iron_trapdoor[half=top,waterlogged=true] replace iron_trapdoor