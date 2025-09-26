summon armor_stand ~ ~ ~ {Tags:[seeker,bomb,charged], Invisible:1, Invulnerable:1,Silent:1,NoGravity:0,Small:1,DisabledSlots:7967,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1}]}
execute store result entity @e[type=armor_stand,tag=seeker,tag=!timer,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=seeker,tag=!timer,limit=1,sort=nearest] add blue
execute if entity @s[team=yellow] run tag @e[type=armor_stand,tag=seeker,tag=!timer,limit=1,sort=nearest] add yellow
tag @e[type=armor_stand,tag=seeker,tag=!timer] add timer
scoreboard players set @s bomb_cooldown 10