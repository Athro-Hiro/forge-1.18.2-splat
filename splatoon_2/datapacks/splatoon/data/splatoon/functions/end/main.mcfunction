scoreboard players set game_running value 0
scoreboard players reset @a
clear @a
title @a title {"text":"Game Over!","color":"green","bold":true}
execute as @a run attribute @s generic.movement_speed base set 0.1
gamemode spectator @a
execute if score map_id value matches 1 run tp @a 100 50 0 0 90
execute if score map_id value matches 2 run tp @a 200 50 0 0 90
execute if score map_id value matches 3 run tp @a 300 50 0 0 90
execute if score map_id value matches 4 run tp @a 400 50 0 0 90
execute if score map_id value matches 5 run tp @a 500 50 0 0 90
execute if score map_id value matches 6 run tp @a 600 50 0 0 90
execute if score map_id value matches 7 run tp @a 700 50 0 0 90
execute if score map_id value matches 8 run tp @a 800 52 0 0 90
execute if score map_id value matches 9 run tp @a 900 52 0 0 90
execute if score map_id value matches 10 run tp @a 100 60 200 0 90
execute if score map_id value matches 11 run tp @a 200 50 200 0 90
execute if score map_id value matches 12 run tp @a 300 50 200 0 90
execute if score map_id value matches 13 run tp @a 400 50 200 0 90
execute if score map_id value matches 14 run tp @a 500 50 200 0 90
execute if score map_id value matches 15 run tp @a 600 50 200 0 90
execute if score map_id value matches 16 run tp @a 700 50 200 0 90
execute if score map_id value matches 17 run tp @a 800 50 200 0 90
execute if score map_id value matches 18 run tp @a 900 50 200 0 90
execute if score map_id value matches 19 run tp @a 100 50 -200 0 90
execute if score map_id value matches 20 run tp @a 200 60 -200 0 90
execute if score map_id value matches 21 run tp @a 300 50 -200 0 90
execute if score map_id value matches 22 run tp @a 400 60 -200 0 90
execute if score map_id value matches 23 run tp @a 500 60 -200 0 90
execute if score map_id value matches 24 run tp @a 600 50 -200 0 90
execute if score map_id value matches 25 run tp @a 700 50 -200 0 90
execute if score map_id value matches 26 run tp @a 800 50 -200 0 90
execute if score map_id value matches 27 run tp @a 900 50 -200 0 90
execute if score map_id value matches 28 run tp @a -100 40 0 0 90
execute if score map_id value matches 29 run tp @a -200 50 0 0 90
execute if score map_id value matches 30 run tp @a -300 50 0 0 90
execute if score map_id value matches 31 run tp @a 0 50 -200 0 90
execute if score map_id value matches 32 run tp @a -400 48 0 0 90
execute if score map_id value matches 33 run tp @a -500 50 0 0 90
execute if score map_id value matches 34 run tp @a 0 50 200 0 90
execute if score map_id value matches 35 run tp @a -600 50 0 0 90
execute if score map_id value matches 36 run tp @a -700 50 0 0 90
tag @a remove armor
tag @a remove noitems
tag @a remove using_brush
tag @a remove using_roller
tag @a remove squid
tag @a remove climb
tag @a remove enemyink
tag @a remove squidgrate
tag @a remove small_paint
tag @a remove medium_paint
tag @a remove large_paint
tag @a remove small_explosion
tag @a remove medium_explosion
tag @a remove large_explosion
tag @a remove splatling_charged
tag @a remove splatling_released
tag @a remove charger_fired
tag @a remove perfect_accuracy
tag @a remove low_accuracy
tag @a remove medium_accuracy
tag @a remove high_accuracy
tag @a remove has_clam
tag @a remove using_cannon
tag @a remove charging_scope
tag @a remove bow_narrow
tag @a remove bow_medium
tag @a remove bow_wide
advancement revoke @a only splatoon:spyglass
advancement revoke @a only splatoon:bow
xp set @a 0 points
kill @e[type=item]
kill @e[type=armor_stand,tag=!random]
kill @e[type=arrow]
kill @e[type=snowball]
kill @e[type=egg]
kill @e[type=experience_bottle]
kill @e[type=ender_pearl]
kill @e[type=squid]
scoreboard objectives setdisplay sidebar
bossbar set zone_control visible false
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 42-42-42-42-42
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 420-420-420-420-420
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 37-37-37-37-37
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 69-69-69-69-69
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 69-69-69-69-68
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 1-1-1-1-1
execute as @a run attribute @s generic.movement_speed modifier remove 42-42-42-42-1
execute if score gamemode_id value matches 1 run schedule function splatoon:end/scores_turf_war 5s replace
execute if score gamemode_id value matches 2..3 run schedule function splatoon:end/scores 5s replace
execute if score gamemode_id value matches 4 run schedule function splatoon:end/scores_splat_zones 5s replace