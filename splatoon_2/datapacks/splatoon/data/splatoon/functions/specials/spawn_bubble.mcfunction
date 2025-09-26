execute if entity @s[team=blue] run summon armor_stand ~ ~1.5 ~ {Tags:[bubble,special,blue],Invulnerable:1,Invisible:1,Marker:1,NoGravity:1,Small:1,DisabledSlots:7967,ArmorItems:[{},{},{},{id:"minecraft:blue_wool",Count:1}]}
execute if entity @s[team=yellow] run summon armor_stand ~ ~1.5 ~ {Tags:[bubble,special,yellow],Invulnerable:1,Invisible:1,Marker:1,NoGravity:1,Small:1,DisabledSlots:7967,ArmorItems:[{},{},{},{id:"minecraft:yellow_wool",Count:1}]}
execute store result entity @e[type=armor_stand,tag=bubble,tag=!timer,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
scoreboard players set @e[type=armor_stand,tag=bubble,tag=!timer,limit=1,sort=nearest] health 0
tag @e[type=armor_stand,tag=bubble,tag=!timer] add timer
scoreboard players remove @s bubbles 1