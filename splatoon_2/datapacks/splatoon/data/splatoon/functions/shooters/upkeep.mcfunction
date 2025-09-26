execute if score performance_mode value matches 0 run function splatoon:random_droplets
execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 0.1 0.1 0.1 0.1 1
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 0.1 0.1 0.1 0.1 1
execute store result score @s x run data get entity @s Motion[0] 1000000
execute store result score @s y run data get entity @s Motion[1] 1000000
execute store result score @s z run data get entity @s Motion[2] 1000000
tag @s[tag=!x_zero,scores={x=0},tag=!bloblobber] add dead
tag @s[tag=!z_zero,scores={z=0},tag=!bloblobber] add dead
tag @s[nbt={OnGround:1b},tag=!bloblobber] add dead
execute unless block ~ ~0.3 ~ air unless block ~ ~0.3 ~ iron_trapdoor run tag @s[tag=!bloblobber] add dead
execute if entity @s[tag=bloblobber,tag=blue] if entity @a[distance=..1.5,team=yellow] run tag @s add damage
execute if entity @s[tag=bloblobber,tag=yellow] if entity @a[distance=..1.5,team=blue] run tag @s add damage
tag @s[tag=damage] add dead
execute if entity @s[tag=slosher_bullet,tag=!explosher,tag=!sloshing_machine] if score @s lifetime >= @s range run tag @s add dead
execute if entity @s[tag=slosher_bullet,tag=!explosher,tag=!sloshing_machine] if score @s lifetime >= @s range run tag @s add max_range
execute if entity @s[tag=brella_bullet] if score @s lifetime >= @s range run tag @s add dead
execute if entity @s[tag=blaster_bullet] if score @s lifetime >= @s range run tag @s add dead
execute if entity @s[tag=bloblobber] if block ^ ^ ^1 air run tag @s add move_forward
execute if entity @s[tag=bloblobber] unless block ^ ^ ^1 air if block ^ ^1 ^1 air run tag @s add move_upward
execute if entity @s[tag=bloblobber,tag=move_forward] run tp @s ^ ^ ^1
execute if entity @s[tag=bloblobber,tag=move_upward] run tp @s ^ ^1 ^1
execute at @s if entity @s[tag=bloblobber] unless block ^ ^ ^1 air unless block ^ ^1 ^1 air unless block ^ ^ ^1 iron_trapdoor unless block ^ ^1 ^1 iron_trapdoor run tag @s add dead
execute if entity @s[tag=bloblobber] run function splatoon:random
execute at @s if score random value matches 70.. if entity @s[tag=bloblobber,tag=blue] run fill ~ ~ ~ ~ ~-1 ~ blue_wool replace #wool
execute at @s if score random value matches 70.. if entity @s[tag=bloblobber,tag=yellow] run fill ~ ~ ~ ~ ~-1 ~ yellow_wool replace #wool
execute at @s if entity @s[tag=bloblobber] if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute at @s if entity @s[tag=bloblobber] if block ~ ~-1 ~ iron_trapdoor run tp @s ~ ~-1 ~
execute at @s if entity @s[tag=bloblobber] if block ~ ~-1 ~ water run kill @s
execute at @s if entity @s[tag=bloblobber] if block ~ ~-1 ~ barrier run kill @s
tag @s remove move_upward
tag @s remove move_forward
execute if entity @s[tag=shooter_bullet,tag=dead] run function splatoon:shooters/impact
execute as @s[tag=splatling_bullet,tag=dead] at @s run function splatoon:splatlings/impact
execute as @s[tag=roller_bullet,tag=dead] at @s run function splatoon:rollers/impact
execute as @s[tag=nozzlenose_bullet,tag=dead] at @s run function splatoon:nozzlenoses/impact
execute as @s[tag=blaster_bullet,tag=dead] at @s run function splatoon:blasters/impact
execute as @s[tag=slosher_bullet,tag=dead] at @s run function splatoon:sloshers/impact
execute as @s[tag=brella_bullet,tag=dead] at @s run function splatoon:brellas/impact
scoreboard players add @s lifetime 1
execute if entity @s[tag=can_falloff,tag=!falloff] if score @s lifetime >= @s range run data merge entity @s {Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=can_falloff,tag=!falloff] if score @s lifetime >= @s range run tag @s add x_zero
execute if entity @s[tag=can_falloff,tag=!falloff] if score @s lifetime >= @s range run tag @s add z_zero
execute if entity @s[tag=can_falloff,tag=!falloff] if score @s lifetime >= @s range run tag @s add falloff
scoreboard players remove @s[tag=falloff,scores={damage=12..}] damage 2
execute if entity @s[tag=slosher_bullet,tag=sloshing_machine,tag=!falloff,tag=blue,tag=x] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=slosher_bullet,tag=sloshing_machine,tag=!falloff,tag=blue,tag=z] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,z],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=slosher_bullet,tag=sloshing_machine,tag=!falloff,tag=yellow,tag=x] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=slosher_bullet,tag=sloshing_machine,tag=!falloff,tag=yellow,tag=z] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,z],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=slosher_bullet,tag=explosher,tag=!falloff,tag=blue,tag=x] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=slosher_bullet,tag=explosher,tag=!falloff,tag=blue,tag=z] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,z],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=slosher_bullet,tag=explosher,tag=!falloff,tag=yellow,tag=x] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=slosher_bullet,tag=explosher,tag=!falloff,tag=yellow,tag=z] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,z],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=slosher_bullet,tag=!explosher,tag=!sloshing_machine,tag=!bloblobber] run function splatoon:sloshers/damage_droplet
scoreboard players remove @s[tag=roller_bullet,scores={damage=1..}] damage 5
scoreboard players set @s[tag=roller_bullet,scores={damage=..20}] damage 20
execute if entity @s[tag=roller_bullet,tag=blue,tag=vertical] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,small],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=roller_bullet,tag=yellow,tag=vertical] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,small],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blaster_bullet,tag=!small,tag=blue] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,small],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blaster_bullet,tag=!small,tag=yellow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,small],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blaster_bullet,tag=small,tag=blue,tag=x] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blaster_bullet,tag=small,tag=blue,tag=z] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,z],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blaster_bullet,tag=small,tag=yellow,tag=x] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blaster_bullet,tag=small,tag=yellow,tag=z] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,z],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=inkstorm,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=inkstorm,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=inkstorm,tag=dead] run function splatoon:specials/inkstorm_land
execute if entity @s[tag=booyah_bomb,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=booyah_bomb,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=booyah_bomb] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=booyah_bomb,tag=dead,tag=blue] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Invulnerable:1,Tags:[booyah_bomb,blue,special]}
execute if entity @s[tag=booyah_bomb,tag=dead,tag=yellow] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Invulnerable:1,Tags:[booyah_bomb,yellow,special]}
execute if entity @s[tag=stamp,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=stamp,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=stamp,tag=dead] run function splatoon:specials/stamp_impact
execute if entity @s[tag=cannon,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=cannon,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=cannon,tag=dead] run function splatoon:cannon_impact
execute if entity @s[tag=brella_bullet,tag=x,tag=blue] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=brella_bullet,tag=x,tag=yellow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=brella_bullet,tag=z,tag=blue] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,z],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=brella_bullet,tag=z,tag=yellow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,z],Motion:[0.0,-1.0,0.0]}
kill @s[tag=dead]