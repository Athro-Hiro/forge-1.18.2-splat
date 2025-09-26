execute if entity @s[tag=blue] run summon armor_stand ~ ~ ~ {Invulnerable:1,Marker:1,NoGravity:1,Invisible:1,Tags:[torpedo,blue,bomb]}
execute if entity @s[tag=yellow] run summon armor_stand ~ ~ ~ {Invulnerable:1,Marker:1,NoGravity:1,Invisible:1,Tags:[torpedo,yellow,bomb]}
tp @e[type=armor_stand,tag=torpedo,tag=!timer,limit=1,sort=nearest,tag=blue] ~ ~ ~ facing entity @p[team=yellow,gamemode=adventure] feet
tp @e[type=armor_stand,tag=torpedo,tag=!timer,limit=1,sort=nearest,tag=yellow] ~ ~ ~ facing entity @p[team=blue,gamemode=adventure] feet
tag @e[type=armor_stand,tag=torpedo] add timer
playsound block.dispenser.dispense player @a
kill @s