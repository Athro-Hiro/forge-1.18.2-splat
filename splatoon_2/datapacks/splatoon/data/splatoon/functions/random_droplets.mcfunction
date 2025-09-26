function splatoon:random
scoreboard players set random_droplet value 0
execute if entity @s[tag=shooter_bullet,tag=small] if score random value matches 90.. run scoreboard players set random_droplet value 1
execute if entity @s[tag=shooter_bullet,tag=medium] if score random value matches 85.. run scoreboard players set random_droplet value 1
execute if entity @s[tag=shooter_bullet,tag=large] if score random value matches 80.. run scoreboard players set random_droplet value 1
execute if entity @s[tag=nozzlenose_bullet,tag=small] if score random value matches 85.. run scoreboard players set random_droplet value 1
execute if entity @s[tag=nozzlenose_bullet,tag=medium] if score random value matches 80.. run scoreboard players set random_droplet value 1
execute if entity @s[tag=splatling_bullet,tag=!more_paint] if score random value matches 95.. run scoreboard players set random_droplet value 1
execute if entity @s[tag=splatling_bullet,tag=more_paint] if score random value matches 90.. run scoreboard players set random_droplet value 1
execute if entity @s[tag=roller_bullet,tag=!vertical] if score random value matches 65.. run scoreboard players set random_droplet value 1
execute if score random_droplet value matches 1 if entity @s[tag=blue] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,small],Motion:[0.0,-1.0,0.0]}
execute if score random_droplet value matches 1 if entity @s[tag=yellow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,small],Motion:[0.0,-1.0,0.0]}