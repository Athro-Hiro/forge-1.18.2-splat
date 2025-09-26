execute if entity @s[tag=blue] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,damage,new_droplet],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,damage,new_droplet],Motion:[0.0,-1.0,0.0]}
scoreboard players operation damage value = @s damage
scoreboard players set fall value 0
execute if entity @s[tag=dead] run scoreboard players set fall value 1
execute if entity @s[tag=dead,tag=!tri_slosher] run scoreboard players set type value 4
execute if entity @s[tag=dead,tag=tri_slosher] run scoreboard players set type value 3
execute if entity @s[tag=!dead,tag=x] run scoreboard players set type value 1
execute if entity @s[tag=!dead,tag=z] run scoreboard players set type value 2
execute as @e[type=item,tag=new_droplet,limit=1,sort=nearest] run function splatoon:sloshers/damage_droplet_as_item
execute if entity @s[tag=blue,tag=!max_range,tag=dead,tag=!tri_slosher] run function splatoon:paint/large_blue
execute if entity @s[tag=yellow,tag=!max_range,tag=dead,tag=!tri_slosher] run function splatoon:paint/large_yellow
execute if entity @s[tag=blue,tag=!max_range,tag=dead,tag=tri_slosher] run function splatoon:paint/medium_blue
execute if entity @s[tag=yellow,tag=!max_range,tag=dead,tag=tri_slosher] run function splatoon:paint/medium_yellow