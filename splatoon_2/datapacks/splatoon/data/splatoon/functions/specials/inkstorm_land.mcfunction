summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Invulnerable:1,Tags:[inkstorm,special]}
execute store result entity @e[type=armor_stand,tag=inkstorm,tag=!timer,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get @s rotation
execute if entity @s[tag=blue] run tag @e[type=armor_stand,tag=inkstorm,tag=!timer,limit=1,sort=nearest] add blue
execute if entity @s[tag=yellow] run tag @e[type=armor_stand,tag=inkstorm,tag=!timer,limit=1,sort=nearest] add yellow
tag @e[type=armor_stand,tag=inkstorm] add timer