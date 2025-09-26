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
scoreboard players operation blue_percentage value = blue_blocks value
scoreboard players operation yellow_percentage value = yellow_blocks value
scoreboard players set temp value 100
scoreboard players operation blue_percentage value *= temp value
scoreboard players operation yellow_percentage value *= temp value
scoreboard players operation blue_percentage value /= total_blocks value
scoreboard players operation yellow_percentage value /= total_blocks value
tellraw @a ["",{"text":"Game Results:","bold":true,"color":"green"},{"text":"\n-Blue: "},{"score":{"name":"blue_blocks","objective":"value"}},{"text":"p - "},{"score":{"name":"blue_percentage","objective":"value"}},{"text":"%"},{"text":"\n-Yellow: "},{"score":{"name":"yellow_blocks","objective":"value"}},{"text":"p - "},{"score":{"name":"yellow_percentage","objective":"value"}},{"text":"%"}]
execute if score blue_blocks value < yellow_blocks value run tellraw @a {"text":"Yellow Wins!","color":"yellow"}
execute if score blue_blocks value > yellow_blocks value run tellraw @a {"text":"Blue Wins!","color":"blue"}
execute if score blue_blocks value = yellow_blocks value run tellraw @a {"text":"It's a tie!"}
gamemode adventure @a
tp @a 0 31 0