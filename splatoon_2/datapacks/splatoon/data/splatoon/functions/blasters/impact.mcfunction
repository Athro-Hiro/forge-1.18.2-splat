execute if entity @s[tag=blue,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=yellow,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=yellow,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=blue,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=blue,tag=small] run scoreboard players operation @a[team=yellow,distance=..2] health -= @s damage_far
execute if entity @s[tag=yellow,tag=small] run scoreboard players operation @a[team=blue,distance=..2] health -= @s damage_far
execute if entity @s[tag=blue,tag=medium] run scoreboard players operation @a[team=yellow,distance=..3] health -= @s damage_far
execute if entity @s[tag=yellow,tag=medium] run scoreboard players operation @a[team=blue,distance=..3] health -= @s damage_far
execute if entity @s[tag=blue,tag=large] run scoreboard players operation @a[team=yellow,distance=..4] health -= @s damage_far
execute if entity @s[tag=yellow,tag=large] run scoreboard players operation @a[team=blue,distance=..4] health -= @s damage_far
execute if entity @s[tag=blue] run function splatoon:paint/medium_blue
execute if entity @s[tag=yellow] run function splatoon:paint/medium_yellow
playsound minecraft:entity.firework_rocket.blast ambient @a
particle poof ~ ~ ~ 0.2 0.2 0.2 0.1 30 normal @a
execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 1 1 1 0.1 50 normal @a
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 1 1 1 0.1 50 normal @a
execute if entity @s[tag=blue,tag=small] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,medium],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=small] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,medium],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=medium] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=medium] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=large] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,small_bomb],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=large] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,small_bomb],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..2]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..2]