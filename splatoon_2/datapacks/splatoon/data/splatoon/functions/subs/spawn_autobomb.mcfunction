execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Tags:[bomb,autobomb,new],Invisible:1,Marker:0,Invulnerable:1,Silent:1,NoGravity:0,Small:1,DisabledSlots:7967,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1}]}
scoreboard players set @e[type=armor_stand,tag=autobomb,tag=new] playerid 0
execute if entity @s[tag=blue] run tag @e[type=armor_stand,tag=autobomb,tag=new] add blue
execute if entity @s[tag=yellow] run tag @e[type=armor_stand,tag=autobomb,tag=new] add yellow
execute as @p[team=yellow,distance=..15,gamemode=adventure] run scoreboard players operation @e[type=armor_stand,tag=autobomb,tag=new,tag=blue] playerid = @s playerid
execute as @p[team=blue,distance=..15,gamemode=adventure] run scoreboard players operation @e[type=armor_stand,tag=autobomb,tag=new,tag=yellow] playerid = @s playerid
tag @e[type=armor_stand,tag=autobomb,tag=new] remove new