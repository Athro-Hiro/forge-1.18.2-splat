bossbar set zone_control name {"text":"Yellow in control","color":"yellow"}
bossbar set zone_control color yellow
title @a[team=yellow] title {"text":"We're in control!","color":"green"}
title @a[team=blue] title {"text":"They're in control!","color":"red"}
execute if score old_zone_status value matches 1 run scoreboard players operation old_score_yellow value = Yellow score
execute if score old_zone_status value matches 1 run scoreboard players operation penalty value = old_score_blue value
execute if score old_zone_status value matches 1 run scoreboard players operation penalty value -= Blue score
scoreboard players set temp value 3
execute if score old_zone_status value matches 1 run scoreboard players operation penalty value *= temp value
scoreboard players set temp value 4
execute if score old_zone_status value matches 1 run scoreboard players operation penalty value /= temp value
execute if score old_zone_status value matches 1 run scoreboard players operation Blue_Penalty score += penalty value
execute if score map_id value matches 1 run fill 94 32 -7 106 33 7 yellow_wool replace #wool
execute if score map_id value matches 2 run fill 195 31 -5 205 31 5 yellow_wool replace #wool
execute if score map_id value matches 3 run fill 308 40 -4 292 40 4 yellow_wool replace #wool
execute if score map_id value matches 4 run fill 407 31 4 393 32 -4 yellow_wool replace #wool
execute if score map_id value matches 5 run fill 495 35 5 505 35 -5 yellow_wool replace #wool
execute if score map_id value matches 6 run fill 598 35 -5 608 35 5 yellow_wool replace #wool
execute if score map_id value matches 7 run fill 704 35 -4 696 36 4 yellow_wool replace #wool
execute if score map_id value matches 8 run fill 805 39 5 795 40 -5 yellow_wool replace #wool
execute if score map_id value matches 9 run fill 902 34 -9 898 34 9 yellow_wool replace #wool
execute if score map_id value matches 10 run fill 91 33 194 109 35 206 yellow_wool replace #wool
execute if score map_id value matches 11 run fill 196 31 204 204 31 196 yellow_wool replace #wool
execute if score map_id value matches 12 run fill 305 38 203 295 38 197 yellow_wool replace #wool
execute if score map_id value matches 13 run fill 408 31 194 392 35 206 yellow_wool replace #wool
execute if score map_id value matches 14 run fill 489 32 195 511 32 205 yellow_wool replace #wool
execute if score map_id value matches 15 run fill 593 37 193 607 37 207 yellow_wool replace #wool
execute if score map_id value matches 16 run fill 693 31 193 707 31 207 yellow_wool replace #wool
execute if score map_id value matches 17 run fill 791 35 208 809 35 192 yellow_wool replace #wool
execute if score map_id value matches 18 run fill 895 34 205 905 34 195 yellow_wool replace #wool
execute if score map_id value matches 19 run fill 121 32 -205 111 33 -195 yellow_wool replace #wool
execute if score map_id value matches 20 run fill 196 41 -196 204 41 -204 yellow_wool replace #wool
execute if score map_id value matches 21 run fill 308 36 -208 292 36 -192 yellow_wool replace #wool
execute if score map_id value matches 22 run fill 411 34 -189 389 34 -211 yellow_wool replace #wool
execute if score map_id value matches 23 run fill 496 50 -196 504 49 -204 yellow_wool replace #wool
execute if score map_id value matches 24 run fill 596 39 -195 604 39 -205 yellow_wool replace #wool
execute if score map_id value matches 25 run fill 710 35 -186 690 35 -214 yellow_wool replace #wool
execute if score map_id value matches 26 run fill 791 31 -207 809 31 -193 yellow_wool replace #wool
execute if score map_id value matches 27 run fill 906 33 -208 894 34 -192 yellow_wool replace #wool
execute if score map_id value matches 28 run fill -106 31 -6 -94 31 6 yellow_wool replace #wool
execute if score map_id value matches 29 run fill -204 36 -4 -196 36 4 yellow_wool replace #wool
execute if score map_id value matches 30 run fill -287 31 -13 -313 31 13 yellow_wool replace #wool
execute if score map_id value matches 31 run fill 7 34 -193 -7 34 -207 yellow_wool replace #wool
execute if score map_id value matches 32 run fill -394 31 -7 -416 31 7 yellow_wool replace #wool
execute if score map_id value matches 33 run fill -510 43 2 -490 43 -2 yellow_wool replace #wool
execute if score map_id value matches 34 run fill 10 31 213 -10 31 187 yellow_wool replace #wool
execute if score map_id value matches 35 run fill -592 33 -5 -608 33 5 yellow_wool replace #wool
execute if score map_id value matches 36 run fill -710 31 8 -690 31 -8 yellow_wool replace #wool
scoreboard players set zone_status value 2
scoreboard players set old_zone_status value 2
execute as @a at @s run playsound entity.player.levelup ambient @s