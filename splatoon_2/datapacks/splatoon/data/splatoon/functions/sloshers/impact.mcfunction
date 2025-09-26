execute if entity @s[tag=blue,tag=sloshing_machine,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=yellow,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=yellow,tag=sloshing_machine,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=blue,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=blue,tag=explosher,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=yellow,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=yellow,tag=explosher,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=blue,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=blue,tag=sloshing_machine] run scoreboard players operation @a[team=yellow,distance=..2] health -= @s damage_far
execute if entity @s[tag=yellow,tag=sloshing_machine] run scoreboard players operation @a[team=blue,distance=..2] health -= @s damage_far
execute if entity @s[tag=blue,tag=explosher] run scoreboard players operation @a[team=yellow,distance=..3] health -= @s damage_far
execute if entity @s[tag=yellow,tag=explosher] run scoreboard players operation @a[team=blue,distance=..3] health -= @s damage_far
execute if entity @s[tag=blue,tag=sloshing_machine] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..2]
execute if entity @s[tag=yellow,tag=sloshing_machine] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..2]
execute if entity @s[tag=blue,tag=explosher] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..3]
execute if entity @s[tag=yellow,tag=explosher] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..3]
execute if entity @s[tag=explosher] run playsound minecraft:block.slime_block.place ambient @a
execute if entity @s[tag=sloshing_machine] run playsound minecraft:block.slime_block.place ambient @a
execute if entity @s[tag=blue,tag=explosher] run particle block blue_wool ~ ~ ~ 1 1 1 0.1 50 normal @a
execute if entity @s[tag=yellow,tag=explosher] run particle block yellow_wool ~ ~ ~ 1 1 1 0.1 50 normal @a
execute if entity @s[tag=blue,tag=sloshing_machine] run particle block blue_wool ~ ~ ~ 1 1 1 0.1 50 normal @a
execute if entity @s[tag=yellow,tag=sloshing_machine] run particle block yellow_wool ~ ~ ~ 1 1 1 0.1 50 normal @a
execute if entity @s[tag=blue,tag=sloshing_machine] run function splatoon:paint/large_blue
execute if entity @s[tag=yellow,tag=sloshing_machine] run function splatoon:paint/large_yellow
execute if entity @s[tag=blue,tag=explosher] run function splatoon:paint/small_blue_bomb
execute if entity @s[tag=yellow,tag=explosher] run function splatoon:paint/small_yellow_bomb
execute if entity @s[tag=blue,tag=!sloshing_machine,tag=!explosher,tag=!bloblobber] positioned ~ ~1 ~ run function splatoon:sloshers/damage_droplet
execute if entity @s[tag=yellow,tag=!sloshing_machine,tag=!explosher,tag=!bloblobber] positioned ~ ~1 ~ run function splatoon:sloshers/damage_droplet
execute if entity @s[tag=bloblobber,tag=blue,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=yellow,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=bloblobber,tag=yellow,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=blue,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=bloblobber,tag=blue] positioned ~ ~1 ~ run function splatoon:paint/medium_blue
execute if entity @s[tag=bloblobber,tag=yellow] positioned ~ ~1 ~ run function splatoon:paint/medium_yellow