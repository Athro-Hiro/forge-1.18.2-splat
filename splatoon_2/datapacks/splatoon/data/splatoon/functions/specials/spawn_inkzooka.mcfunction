summon armor_stand ~ ~1.5 ~ {Tags:[inkzooka,special],Invulnerable:1,Invisible:1,Marker:1,NoGravity:1}
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=inkzooka,tag=!timer,limit=1,sort=nearest] add blue
execute if entity @s[team=yellow] run tag @e[type=armor_stand,tag=inkzooka,tag=!timer,limit=1,sort=nearest] add yellow
execute store result entity @e[type=armor_stand,tag=inkzooka,tag=!timer,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[type=armor_stand,tag=inkzooka,tag=!timer,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]
tag @e[type=armor_stand,tag=inkzooka,tag=!timer] add timer