function splatoon:random
execute if score random value matches 1..25 run scoreboard players set gamemode_id value 1
execute if score random value matches 26..50 run scoreboard players set gamemode_id value 2
execute if score random value matches 51..75 run scoreboard players set gamemode_id value 3
execute if score random value matches 76..100 run scoreboard players set gamemode_id value 4