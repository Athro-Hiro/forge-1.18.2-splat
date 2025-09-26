execute if score map_id value matches 1 run function splatoon:end/map/map1
execute if score map_id value matches 2 run function splatoon:end/map/map2
execute if score map_id value matches 3 run function splatoon:end/map/map3
execute if score map_id value matches 4 run function splatoon:end/map/map4
execute if score map_id value matches 5 run function splatoon:end/map/map5
execute if score map_id value matches 6 run function splatoon:end/map/map6
execute if score map_id value matches 7 run function splatoon:end/map/map7
execute if score map_id value matches 8 run function splatoon:end/map/map8
execute if score map_id value matches 9 run function splatoon:end/map/map9
execute if score map_id value matches 10 run function splatoon:end/map/map10
execute if score map_id value matches 11 run function splatoon:end/map/map11
execute if score map_id value matches 12 run function splatoon:end/map/map12
execute if score map_id value matches 13 run function splatoon:end/map/map13
execute if score map_id value matches 14 run function splatoon:end/map/map14
execute if score map_id value matches 15 run function splatoon:end/map/map15
execute if score map_id value matches 16 run function splatoon:end/map/map16
execute if score map_id value matches 17 run function splatoon:end/map/map17
execute if score map_id value matches 18 run function splatoon:end/map/map18
execute if score map_id value matches 19 run function splatoon:end/map/map19
execute if score map_id value matches 20 run function splatoon:end/map/map20
execute if score map_id value matches 21 run function splatoon:end/map/map21
execute if score map_id value matches 22 run function splatoon:end/map/map22
execute if score map_id value matches 23 run function splatoon:end/map/map23
execute if score map_id value matches 24 run function splatoon:end/map/map24
execute if score map_id value matches 25 run function splatoon:end/map/map25
execute if score map_id value matches 26 run function splatoon:end/map/map26
execute if score map_id value matches 27 run function splatoon:end/map/map27
execute if score map_id value matches 28 run function splatoon:end/map/map28
execute if score map_id value matches 29 run function splatoon:end/map/map29
execute if score map_id value matches 30 run function splatoon:end/map/map30
execute if score map_id value matches 31 run function splatoon:end/map/map31
execute if score map_id value matches 32 run function splatoon:end/map/map32
execute if score map_id value matches 33 run function splatoon:end/map/map33
execute if score map_id value matches 34 run function splatoon:end/map/map34
execute if score map_id value matches 35 run function splatoon:end/map/map35
execute if score map_id value matches 36 run function splatoon:end/map/map36
execute as @a run function splatoon:start/set_weapon_parameters
scoreboard players set game_running value 1
scoreboard players set seconds value 0
execute if score gamemode_id value matches 1 run scoreboard players set minutes value 3
execute if score gamemode_id value matches 2..4 run scoreboard players set minutes value 5
execute if score map_id value matches 1 run tp @a[team=blue] 106 38 -52 0 0
execute if score map_id value matches 1 run tp @a[team=yellow] 94 38 52 180 0
execute if score map_id value matches 2 run tp @a[team=blue] 195 42 -47 0 0
execute if score map_id value matches 2 run tp @a[team=yellow] 205 42 47 180 0
execute if score map_id value matches 3 run tp @a[team=blue] 291 40 -49 0 0
execute if score map_id value matches 3 run tp @a[team=yellow] 309 40 49 180 0
execute if score map_id value matches 4 run tp @a[team=blue] 398 39 -52 0 0
execute if score map_id value matches 4 run tp @a[team=yellow] 402 39 52 180 0
execute if score map_id value matches 5 run tp @a[team=blue] 489 35 -47 0 0
execute if score map_id value matches 5 run tp @a[team=yellow] 511 35 47 180 0
execute if score map_id value matches 6 run tp @a[team=blue] 565 39 -55 0 0
execute if score map_id value matches 6 run tp @a[team=yellow] 565 39 55 180 0
execute if score map_id value matches 7 run tp @a[team=blue] 680 42 -49 0 0
execute if score map_id value matches 7 run tp @a[team=yellow] 720 42 49 180 0
execute if score map_id value matches 8 run tp @a[team=blue] 793 39 -49 0 0
execute if score map_id value matches 8 run tp @a[team=yellow] 807 39 49 180 0
execute if score map_id value matches 9 run tp @a[team=blue] 929 42 -39 0 0
execute if score map_id value matches 9 run tp @a[team=yellow] 871 42 39 180 0
execute if score map_id value matches 10 run tp @a[team=blue] 123 61 157 0 0
execute if score map_id value matches 10 run tp @a[team=yellow] 77 61 243 180 0
execute if score map_id value matches 11 run tp @a[team=blue] 190 42 152 0 0
execute if score map_id value matches 11 run tp @a[team=yellow] 210 42 248 180 0
execute if score map_id value matches 12 run tp @a[team=blue] 279 42 159 0 0
execute if score map_id value matches 12 run tp @a[team=yellow] 321 42 241 180 0
execute if score map_id value matches 13 run tp @a[team=blue] 399 46 152 0 0
execute if score map_id value matches 13 run tp @a[team=yellow] 401 46 248 180 0
execute if score map_id value matches 14 run tp @a[team=blue] 529 41 166 90 0
execute if score map_id value matches 14 run tp @a[team=yellow] 471 41 234 -90 0
execute if score map_id value matches 15 run tp @a[team=blue] 632 40 153 90 0
execute if score map_id value matches 15 run tp @a[team=yellow] 568 40 247 -90 0
execute if score map_id value matches 16 run tp @a[team=blue] 722 40 153 90 0
execute if score map_id value matches 16 run tp @a[team=yellow] 678 40 247 -90 0
execute if score map_id value matches 17 run tp @a[team=blue] 784 39 149 0 0
execute if score map_id value matches 17 run tp @a[team=yellow] 816 39 251 180 0
execute if score map_id value matches 18 run tp @a[team=blue] 907 47 156 90 0
execute if score map_id value matches 18 run tp @a[team=yellow] 893 47 244 -90 0
execute if score map_id value matches 19 run tp @a[team=blue] 73 39 -239 -90 0
execute if score map_id value matches 19 run tp @a[team=yellow] 73 39 -161 -90 0
execute if score map_id value matches 20 run tp @a[team=blue] 188 37 -252 0 0
execute if score map_id value matches 20 run tp @a[team=yellow] 212 37 -148 180 0
execute if score map_id value matches 21 run tp @a[team=blue] 309 43 -243 0 0
execute if score map_id value matches 21 run tp @a[team=yellow] 291 43 -157 180 0
execute if score map_id value matches 22 run tp @a[team=blue] 400 39 -249 0 0
execute if score map_id value matches 22 run tp @a[team=yellow] 400 39 -151 180 0
execute if score map_id value matches 23 run tp @a[team=blue] 488 49 -244 0 0
execute if score map_id value matches 23 run tp @a[team=yellow] 512 49 -156 180 0
execute if score map_id value matches 24 run tp @a[team=blue] 612 41 -246 0 0
execute if score map_id value matches 24 run tp @a[team=yellow] 588 41 -154 180 0
execute if score map_id value matches 25 run tp @a[team=blue] 731 39 -243 0 0
execute if score map_id value matches 25 run tp @a[team=yellow] 669 39 -157 180 0
execute if score map_id value matches 26 run tp @a[team=blue] 794 38 -246 0 0
execute if score map_id value matches 26 run tp @a[team=yellow] 806 38 -154 180 0
execute if score map_id value matches 27 run tp @a[team=blue] 894 40 -245 0 0
execute if score map_id value matches 27 run tp @a[team=yellow] 906 40 -155 180 0
execute if score map_id value matches 28 run tp @a[team=blue] -119 40 -47 0 0
execute if score map_id value matches 28 run tp @a[team=yellow] -81 40 47 180 0
execute if score map_id value matches 29 run tp @a[team=blue] -222 41 -41 0 0
execute if score map_id value matches 29 run tp @a[team=yellow] -178 41 41 180 0
execute if score map_id value matches 30 run tp @a[team=blue] -300 39 -53 0 0
execute if score map_id value matches 30 run tp @a[team=yellow] -300 39 53 180 0
execute if score map_id value matches 31 run tp @a[team=blue] 29 47 -237 0 0
execute if score map_id value matches 31 run tp @a[team=yellow] -29 47 -163 180 0
execute if score map_id value matches 32 run tp @a[team=blue] -391 45 -49 0 0
execute if score map_id value matches 32 run tp @a[team=yellow] -391 45 49 180 0
execute if score map_id value matches 33 run tp @a[team=blue] -481 41 -46 0 0
execute if score map_id value matches 33 run tp @a[team=yellow] -519 41 46 180 0
execute if score map_id value matches 34 run tp @a[team=blue] -35 38 163 0 0
execute if score map_id value matches 34 run tp @a[team=yellow] 35 38 237 180 0
execute if score map_id value matches 35 run tp @a[team=blue] -629 41 -42 0 0
execute if score map_id value matches 35 run tp @a[team=yellow] -571 41 42 180 0
execute if score map_id value matches 36 run tp @a[team=blue] -700 37 -47 0 0
execute if score map_id value matches 36 run tp @a[team=yellow] -700 37 47 180 0
execute if score map_id value matches 18 run tellraw @a {"text":"Stand on the diamond blocks to use a cannon"}
execute if score map_id value matches 23 run tellraw @a {"text":"Stand on the diamond blocks to use a cannon"}
title @a title {"text":"Go!","color":"green","bold":true}
clear @a
scoreboard players set @a health 100
scoreboard players set @a respawndelay -1
scoreboard players set @a cooldown 0
scoreboard players set @a bomb_cooldown 0
scoreboard players set @a stamp_cooldown 0
scoreboard players set @a inkregenlag 0
scoreboard players set @a inkarmor 0
scoreboard players set @a specialactive 0
scoreboard players set @a main_charge 0
scoreboard players set @a stored_charge 0
scoreboard players set @a shots 0
scoreboard players set @a squeezer 0
scoreboard players set @a rolltimer 0
scoreboard players set @a roll_cooldown 0
execute as @a run scoreboard players operation @s ink = @s ink_max
execute as @a run scoreboard players operation @s specialtimer = @s special_max
gamemode adventure @a
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 1
tellraw @a {"text":"Crouch to start swimming!","color":"yellow"}
scoreboard players set zone_status value 0
scoreboard players set old_zone_status value 0
scoreboard players set old_score_blue value 100
scoreboard players set old_score_yellow value 100
execute if score gamemode_id value matches 4 run bossbar set zone_control players @a
execute if score gamemode_id value matches 4 run bossbar set zone_control visible true
execute if score gamemode_id value matches 4 run bossbar set zone_control name {"text":"Zone neutral","color":"gray"}
execute if score gamemode_id value matches 4 run bossbar set zone_control color white
execute if score gamemode_id value matches 2..4 run scoreboard objectives setdisplay sidebar score
execute if score gamemode_id value matches 2..3 run scoreboard players set Blue score 0
execute if score gamemode_id value matches 2..3 run scoreboard players set Yellow score 0
execute if score gamemode_id value matches 4 run scoreboard players set Blue score 100
execute if score gamemode_id value matches 4 run scoreboard players set Yellow score 100
execute if score gamemode_id value matches 4 run scoreboard players set Blue_Penalty score 0
execute if score gamemode_id value matches 4 run scoreboard players set Yellow_Penalty score 0
execute unless score gamemode_id value matches 4 run scoreboard players reset Blue_Penalty
execute unless score gamemode_id value matches 4 run scoreboard players reset Yellow_Penalty