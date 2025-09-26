execute if entity @s[tag=blue,tag=mine] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,NoGravity:1,Tags:[blue,mine,bomb]}
execute if entity @s[tag=yellow,tag=mine] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,NoGravity:1,Tags:[yellow,mine,bomb]}
execute if entity @s[tag=blue,tag=beakon] run kill @e[type=armor_stand,tag=blue,tag=squid_beakon]
execute if entity @s[tag=yellow,tag=beakon] run kill @e[type=armor_stand,tag=yellow,tag=squid_beakon]
execute if entity @s[tag=blue,tag=beakon] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,NoGravity:1,Tags:[blue,squid_beakon,bomb,destructible],Small:1,DisabledSlots:7967,ArmorItems:[{},{},{},{id:"minecraft:purpur_block",Count:1}]}
execute if entity @s[tag=yellow,tag=beakon] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,NoGravity:1,Tags:[yellow,squid_beakon,bomb,destructible],Small:1,DisabledSlots:7967,ArmorItems:[{},{},{},{id:"minecraft:purpur_block",Count:1}]}
execute as @e[type=armor_stand,tag=squid_beakon,limit=1,sort=nearest] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
tp @s 0 0 0
kill @s