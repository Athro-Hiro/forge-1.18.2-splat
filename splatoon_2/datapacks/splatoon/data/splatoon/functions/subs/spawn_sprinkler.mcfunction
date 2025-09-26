execute at @e[type=armor_stand,tag=sprinkler] if score @e[type=armor_stand,tag=sprinkler,limit=1,sort=nearest] playerid = @s playerid run kill @e[type=armor_stand,tag=sprinkler,limit=1,sort=nearest]
execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Tags:[bomb,sprinkler,new,destructible],Invisible:1,Marker:1,Invulnerable:1,Silent:1,NoGravity:0,Small:1,DisabledSlots:7967,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1}]}
execute as @e[type=armor_stand,tag=sprinkler,tag=new] at @s run function splatoon:subs/set_sprinkler_direction
scoreboard players operation @e[type=armor_stand,tag=sprinkler,tag=new] playerid = @s playerid
scoreboard players set @e[type=armor_stand,tag=sprinkler,tag=new] range 6
scoreboard players set @e[type=armor_stand,tag=sprinkler,tag=new] damage 20
execute if entity @s[tag=blue] run tag @e[type=armor_stand,tag=sprinkler,tag=new] add blue
execute if entity @s[tag=yellow] run tag @e[type=armor_stand,tag=sprinkler,tag=new] add yellow
execute if entity @s[tag=blue] run function splatoon:paint/medium_blue
execute if entity @s[tag=yellow] run function splatoon:paint/medium_yellow
tag @e[type=armor_stand,tag=sprinkler,tag=new] remove new