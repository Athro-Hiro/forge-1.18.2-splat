scoreboard players remove @a[scores={specialtimer=1..,specialactive=0,respawndelay=..0},team=!] specialtimer 1
scoreboard players add passive_charge value 1
execute if score passive_charge value matches 2.. if score lead value matches 1 run scoreboard players remove @a[scores={specialtimer=1..,specialactive=0,respawndelay=..0},team=yellow] specialtimer 1
execute if score passive_charge value matches 2.. if score lead value matches 2 run scoreboard players remove @a[scores={specialtimer=1..,specialactive=0,respawndelay=..0},team=blue] specialtimer 1
execute if score passive_charge value matches 2.. run scoreboard players set passive_charge value 0
tellraw @a[scores={specialtimer=0}] {"text":"Special ready!"}
execute as @a[scores={specialtimer=0}] at @s run playsound minecraft:entity.player.levelup player @s
scoreboard players set @a[scores={specialtimer=0}] specialtimer -1
scoreboard players remove @a[scores={respawndelay=1..}] respawndelay 1
scoreboard players remove seconds value 1
execute if score seconds value matches -1 run scoreboard players remove minutes value 1
execute if score seconds value matches -1 run scoreboard players set seconds value 59
execute if score gamemode_id value matches 4 run function splatoon:splat_zones/update_control
execute if score minutes value matches 1 if score seconds value matches 0 run title @a title {"text":"One minute remaining!","color":"green"}
scoreboard players set overtime value 0
execute if score gamemode_id value matches 3 if score Blue score < Yellow score if entity @a[team=blue,tag=has_clam] run scoreboard players set overtime value 1
execute if score gamemode_id value matches 3 if score Blue score > Yellow score if entity @a[team=yellow,tag=has_clam] run scoreboard players set overtime value 1
execute if score gamemode_id value matches 3 if score Blue score = Yellow score run scoreboard players set overtime value 1
execute if score gamemode_id value matches 4 if score Blue score >= Yellow score if score zone_status value matches 1 run scoreboard players set overtime value 1
execute if score gamemode_id value matches 4 if score Blue score <= Yellow score if score zone_status value matches 2 run scoreboard players set overtime value 1
execute if score gamemode_id value matches 4 if score zone_status value matches 0 run scoreboard players set overtime value 1
execute if score minutes value matches ..-2 run function splatoon:end/main
execute unless score overtime value matches 1 if score minutes value matches ..-1 run function splatoon:end/main
execute if score gamemode_id value matches 4 if score Blue score matches 0 run function splatoon:end/main
execute if score gamemode_id value matches 4 if score Yellow score matches 0 run function splatoon:end/main
execute if score map_id value matches 12 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 30 run tellraw @a {"text":"The water level is lowering!","color":"green"}
execute if score map_id value matches 12 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 30 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 0
execute if score map_id value matches 12 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 28 run fill 260 34 260 340 34 140 air replace water
execute if score map_id value matches 12 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 28 run fill 260 34 260 340 34 140 iron_trapdoor[half=top,waterlogged=false] replace iron_trapdoor
execute if score map_id value matches 12 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 26 run fill 260 33 260 340 33 140 air replace water
execute if score map_id value matches 12 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 26 run fill 260 33 260 340 33 140 iron_trapdoor[half=top,waterlogged=false] replace iron_trapdoor
execute if score map_id value matches 12 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 30 run tellraw @a {"text":"The water level is lowering!","color":"green"}
execute if score map_id value matches 12 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 30 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 0
execute if score map_id value matches 12 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 28 run fill 260 34 260 340 34 140 air replace water
execute if score map_id value matches 12 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 28 run fill 260 34 260 340 34 140 iron_trapdoor[half=top,waterlogged=false] replace iron_trapdoor
execute if score map_id value matches 12 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 26 run fill 260 33 260 340 33 140 air replace water
execute if score map_id value matches 12 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 26 run fill 260 33 260 340 33 140 iron_trapdoor[half=top,waterlogged=false] replace iron_trapdoor
execute if score map_id value matches 27 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 30 run tellraw @a {"text":"The gates are open!","color":"green"}
execute if score map_id value matches 27 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 30 run fill 870 35 -197 872 37 -197 air
execute if score map_id value matches 27 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 30 run fill 930 35 -203 928 37 -203 air
execute if score map_id value matches 27 if score gamemode_id value matches 1 if score minutes value matches 1 if score seconds value matches 30 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 0
execute if score map_id value matches 27 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 30 run tellraw @a {"text":"The gates are open!","color":"green"}
execute if score map_id value matches 27 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 30 run fill 870 35 -197 872 37 -197 air
execute if score map_id value matches 27 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 30 run fill 930 35 -203 928 37 -203 air
execute if score map_id value matches 27 unless score gamemode_id value matches 1 if score minutes value matches 2 if score seconds value matches 30 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 0