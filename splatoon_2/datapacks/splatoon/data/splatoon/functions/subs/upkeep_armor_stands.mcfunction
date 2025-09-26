scoreboard players add @s lifetime 1
execute if entity @a[team=blue,distance=..2] run scoreboard players set @s[tag=yellow,tag=mine,scores={lifetime=20..}] lifetime 600
execute if entity @a[team=yellow,distance=..2] run scoreboard players set @s[tag=blue,tag=mine,scores={lifetime=20..}] lifetime 600
execute if entity @s[tag=blue,tag=mine] run particle angry_villager ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal @a[team=blue]
execute if entity @s[tag=yellow,tag=mine] run particle angry_villager ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal @a[team=yellow]
execute if entity @s[tag=blue,tag=mine,scores={lifetime=20..}] unless block ~ ~-1 ~ blue_wool run scoreboard players add @s lifetime 9
execute if entity @s[tag=yellow,tag=mine,scores={lifetime=20..}] unless block ~ ~-1 ~ yellow_wool run scoreboard players add @s lifetime 9
tag @s[tag=mine,scores={lifetime=600..}] add dead
execute as @s[tag=mine,tag=dead] at @s run function splatoon:subs/mine
kill @s[tag=mine,tag=dead]
execute if entity @s[tag=point_sensor,tag=blue] run effect give @a[team=yellow,distance=..3] glowing 10 0
execute if entity @s[tag=point_sensor,tag=yellow] run effect give @a[team=blue,distance=..3] glowing 10 0
execute if entity @s[tag=toxic_mist,tag=blue] run effect give @a[team=yellow,distance=..3] slowness 1 1 true
execute if entity @s[tag=toxic_mist,tag=yellow] run effect give @a[team=blue,distance=..3] slowness 1 1 true
execute if entity @s[tag=toxic_mist,tag=blue] run scoreboard players remove @a[team=yellow,distance=..3,scores={ink=1..}] ink 1
execute if entity @s[tag=toxic_mist,tag=yellow] run scoreboard players remove @a[team=blue,distance=..3,scores={ink=1..}] ink 1
kill @s[tag=point_sensor,scores={lifetime=50..}]
kill @s[tag=toxic_mist,scores={lifetime=100..}]
execute if entity @s[tag=point_sensor,tag=blue] run particle block blue_wool ~ ~ ~ 2 2 2 0.1 50 normal @a
execute if entity @s[tag=point_sensor,tag=yellow] run particle block yellow_wool ~ ~ ~ 2 2 2 0.1 50 normal @a
execute if entity @s[tag=point_sensor] run particle enchant ~ ~ ~ 2 2 2 0.1 100 normal @a
execute if entity @s[tag=toxic_mist,tag=blue] run particle block blue_wool ~ ~ ~ 2 2 2 0.1 50 normal @a
execute if entity @s[tag=toxic_mist,tag=yellow] run particle block yellow_wool ~ ~ ~ 2 2 2 0.1 50 normal @a
execute if entity @s[tag=toxic_mist] run particle dragon_breath ~ ~ ~ 2 2 2 0.05 50 normal @a
execute if entity @s[tag=torpedo] run particle enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=torpedo,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=torpedo,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=torpedo] run tp @s ^ ^ ^0.3
execute if entity @s[tag=torpedo] unless block ^ ^ ^1 air run tag @s add dead
execute if entity @s[tag=torpedo,tag=blue] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[team=yellow,gamemode=adventure,dx=0,dy=0,dz=0] run tag @s add dead
execute if entity @s[tag=torpedo,tag=yellow] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[team=blue,gamemode=adventure,dx=0,dy=0,dz=0] run tag @s add dead
execute if entity @s[tag=torpedo,tag=dead] run function splatoon:subs/torpedo
kill @s[tag=torpedo,tag=dead]
kill @s[tag=torpedo,scores={lifetime=200..}]
execute if entity @s[tag=seeker,tag=blue] run fill ~ ~-1 ~ ~1 ~ ~1 blue_wool replace #wool
execute if entity @s[tag=seeker,tag=yellow] run fill ~ ~-1 ~ ~1 ~ ~1 yellow_wool replace #wool
execute if entity @s[tag=seeker,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.5 0.2 0.1 10 normal @a
execute if entity @s[tag=seeker,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.5 0.2 0.1 10 normal @a
execute if entity @a[team=blue,distance=..1] run scoreboard players set @s[tag=yellow,tag=seeker] lifetime 100
execute if entity @a[team=yellow,distance=..1] run scoreboard players set @s[tag=blue,tag=seeker] lifetime 100
execute if entity @s[tag=seeker] at @s unless block ^ ^ ^0.3 air if block ^ ^1 ^0.3 air run tp @s ~ ~1 ~
execute if entity @s[tag=seeker] at @s unless block ^ ^ ^0.3 air unless block ^ ^1 ^0.3 air run scoreboard players set @s lifetime 100
execute if entity @s[tag=seeker] at @s if block ~ ~-1 ~ water run scoreboard players set @s lifetime 100
execute if entity @s[tag=seeker,tag=charged,scores={lifetime=..70}] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=seeker,tag=charged,scores={lifetime=71..}] at @s run tp @s ^ ^ ^0.1
execute if entity @s[tag=seeker,tag=!charged,scores={lifetime=..40}] at @s run tp @s ^ ^ ^0.2
execute if entity @s[tag=seeker,tag=!charged,scores={lifetime=41..}] at @s run tp @s ^ ^ ^0.1
execute if entity @s[tag=seeker] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute if entity @s[tag=seeker] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute if entity @s[tag=seeker] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute if entity @s[tag=seeker] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
scoreboard players set @s[tag=seeker,tag=!charged,scores={lifetime=60}] lifetime 100
execute as @s[tag=seeker,scores={lifetime=100..}] at @s run function splatoon:subs/seeker
kill @s[tag=seeker,scores={lifetime=100..}]
execute if entity @s[tag=splash_wall] run function splatoon:subs/splash_wall
execute if entity @s[tag=autobomb,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=autobomb,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=sprinkler,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=sprinkler,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=squid_beakon,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=squid_beakon,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.2 0.2 0.1 5
scoreboard players set @s[tag=autobomb,scores={playerid=0,lifetime=..99}] lifetime 100
execute if entity @s[tag=autobomb,scores={lifetime=..99},nbt={OnGround:1b}] run function splatoon:subs/autobomb_chase
execute if entity @s[tag=autobomb,scores={lifetime=101}] run playsound entity.creeper.primed player @a
execute if entity @s[tag=autobomb,scores={lifetime=130..}] run function splatoon:subs/autobomb
kill @s[tag=autobomb,scores={lifetime=130..}]
execute if entity @s[tag=sprinkler] run function splatoon:subs/sprinkler_cycle
scoreboard players set @s[tag=sprinkler,scores={lifetime=40..}] lifetime 0