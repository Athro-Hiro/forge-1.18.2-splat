title @a times 5 20 10
scoreboard players set @a playerid 0
execute if score random_mode value matches 1 run function splatoon:start/random_mode
execute if score random_teams value matches 0 run function splatoon:start/manual_teams
execute if score random_teams value matches 1 run function splatoon:start/random_teams
team leave @a[scores={playerid=0}]
execute as @a[tag=!selected_weapon] run function splatoon:select/weapon/splattershot_jr
execute as @a[tag=random_weapon] run function splatoon:start/random_weapon
tellraw @a {"text":"Teams:","bold":true,"color":"green"}
execute as @a[team=blue] run function splatoon:start/say_weapon
execute as @a[team=yellow] run function splatoon:start/say_weapon
gamemode spectator @a
execute if score random_map value matches 1 run function splatoon:start/random_map
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
execute if score map_id value matches 1 run title @a subtitle {"text":"Port Pufferfish","color":"red"}
execute if score map_id value matches 2 run title @a subtitle {"text":"Rockfish Ruins","color":"red"}
execute if score map_id value matches 3 run title @a subtitle {"text":"Bass Bridge","color":"red"}
execute if score map_id value matches 4 run title @a subtitle {"text":"Shellfish Skatepark","color":"red"}
execute if score map_id value matches 5 run title @a subtitle {"text":"Kelp Gardens","color":"red"}
execute if score map_id value matches 6 run title @a subtitle {"text":"Spawning Grounds Resort","color":"red"}
execute if score map_id value matches 7 run title @a subtitle {"text":"Octo Canyon","color":"red"}
execute if score map_id value matches 8 run title @a subtitle {"text":"Marina Mainstage","color":"red"}
execute if score map_id value matches 9 run title @a subtitle {"text":"Deepsea Metro Central Station","color":"red"}
execute if score map_id value matches 10 run title @a subtitle {"text":"Trout Towers","color":"red"}
execute if score map_id value matches 11 run title @a subtitle {"text":"Beluga Back-Alley","color":"red"}
execute if score map_id value matches 12 run title @a subtitle {"text":"Tidal Turmoil","color":"red"}
execute if score map_id value matches 13 run title @a subtitle {"text":"Anglerfish Residence","color":"red"}
execute if score map_id value matches 14 run title @a subtitle {"text":"Warmouth Wastes","color":"red"}
execute if score map_id value matches 15 run title @a subtitle {"text":"Flagtail Forest","color":"red"}
execute if score map_id value matches 16 run title @a subtitle {"text":"Arowana Aquarium","color":"red"}
execute if score map_id value matches 17 run title @a subtitle {"text":"Alfonsino Art Academy","color":"red"}
execute if score map_id value matches 18 run title @a subtitle {"text":"Cannon Chaos","color":"red"}
execute if score map_id value matches 19 run title @a subtitle {"text":"Flounder Falls","color":"red"}
execute if score map_id value matches 20 run title @a subtitle {"text":"Flathead Factory","color":"red"}
execute if score map_id value matches 21 run title @a subtitle {"text":"Catfish Castle","color":"red"}
execute if score map_id value matches 22 run title @a subtitle {"text":"Lamprey Library","color":"red"}
execute if score map_id value matches 23 run title @a subtitle {"text":"Octo Canyon 2","color":"red"}
execute if score map_id value matches 24 run title @a subtitle {"text":"Whiff Wharf","color":"red"}
execute if score map_id value matches 25 run title @a subtitle {"text":"Camp Coley","color":"red"}
execute if score map_id value matches 26 run title @a subtitle {"text":"Skilfish Stadium","color":"red"}
execute if score map_id value matches 27 run title @a subtitle {"text":"Dolphin Depot","color":"red"}
execute if score map_id value matches 28 run title @a subtitle {"text":"Dragonet Dungeon","color":"red"}
execute if score map_id value matches 29 run title @a subtitle {"text":"Hammerhead Harbour","color":"red"}
execute if score map_id value matches 30 run title @a subtitle {"text":"Fangtooth Faculty","color":"red"}
execute if score map_id value matches 31 run title @a subtitle {"text":"Pompano Plaza","color":"red"}
execute if score map_id value matches 32 run title @a subtitle {"text":"Ayu Airport","color":"red"}
execute if score map_id value matches 33 run title @a subtitle {"text":"Haddock Hotel","color":"red"}
execute if score map_id value matches 34 run title @a subtitle {"text":"Dragonfish Dome","color":"red"}
execute if score map_id value matches 35 run title @a subtitle {"text":"Old Albacore Hotel","color":"red"}
execute if score map_id value matches 36 run title @a subtitle {"text":"Cuttlefish Memorial","color":"red"}
execute if score gamemode_id value matches 1 run title @a title {"text":"Mode: Turf War","color":"green"}
execute if score gamemode_id value matches 2 run title @a title {"text":"Mode: Deathmatch","color":"green"}
execute if score gamemode_id value matches 3 run title @a title {"text":"Mode: Clam Blitz","color":"green"}
execute if score gamemode_id value matches 4 run title @a title {"text":"Mode: Splat Zones","color":"green"}
schedule function splatoon:start/main 5s replace
schedule function splatoon:start/mode_setup 2s replace