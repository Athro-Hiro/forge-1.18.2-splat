tag @a remove enemyink
execute as @a[team=blue,nbt={OnGround:1b},tag=!using_brush] at @s if block ~ ~-1 ~ yellow_wool run tag @s add enemyink
execute as @a[team=yellow,nbt={OnGround:1b},tag=!using_brush] at @s if block ~ ~-1 ~ blue_wool run tag @s add enemyink
tag @a remove squid
execute as @a[team=blue,gamemode=adventure,nbt={OnGround:1b},scores={sneak=1..}] at @s if block ~ ~-1 ~ blue_wool run tag @s add squid
execute as @a[team=blue,gamemode=adventure,scores={sneak=1..}] at @s if block ~1 ~ ~ blue_wool if block ~ ~-1 ~ air run tag @s add squid
execute as @a[team=blue,gamemode=adventure,scores={sneak=1..}] at @s if block ~-1 ~ ~ blue_wool if block ~ ~-1 ~ air run tag @s add squid
execute as @a[team=blue,gamemode=adventure,scores={sneak=1..}] at @s if block ~ ~ ~1 blue_wool if block ~ ~-1 ~ air run tag @s add squid
execute as @a[team=blue,gamemode=adventure,scores={sneak=1..}] at @s if block ~ ~ ~-1 blue_wool if block ~ ~-1 ~ air run tag @s add squid
execute as @a[team=blue,gamemode=adventure,nbt={OnGround:1b},scores={sneak=1..}] at @s if block ~ ~-1 ~ blue_stained_glass run tag @s add squid
execute as @a[team=yellow,gamemode=adventure,nbt={OnGround:1b},scores={sneak=1..}] at @s if block ~ ~-1 ~ yellow_wool run tag @s add squid
execute as @a[team=yellow,gamemode=adventure,scores={sneak=1..}] at @s if block ~1 ~ ~ yellow_wool if block ~ ~-1 ~ air run tag @s add squid
execute as @a[team=yellow,gamemode=adventure,scores={sneak=1..}] at @s if block ~-1 ~ ~ yellow_wool if block ~ ~-1 ~ air run tag @s add squid
execute as @a[team=yellow,gamemode=adventure,scores={sneak=1..}] at @s if block ~ ~ ~1 yellow_wool if block ~ ~-1 ~ air run tag @s add squid
execute as @a[team=yellow,gamemode=adventure,scores={sneak=1..}] at @s if block ~ ~ ~-1 yellow_wool if block ~ ~-1 ~ air run tag @s add squid
execute as @a[team=yellow,gamemode=adventure,nbt={OnGround:1b},scores={sneak=1..}] at @s if block ~ ~-1 ~ yellow_stained_glass run tag @s add squid
tag @a[tag=nozzlenose_class,scores={shots=1..}] remove squid
tag @a[tag=bloblobber,scores={shots=1..}] remove squid
tag @a[tag=kraken,scores={specialactive=1..}] remove squid
tag @a[scores={rolltimer=1..}] remove squid
tag @a[tag=ultra_stamp,tag=noitems] remove squid
tag @a[scores={cooldown=1..},tag=!splatling_class] remove squid
tag @a[tag=killer_wail,tag=noitems] remove squid
tag @a[tag=booyah_bomb,tag=noitems] remove squid
execute as @a[tag=!squid,tag=!noitems,tag=!using_cannon] run function splatoon:items
clear @a[tag=squid]
execute as @a[tag=!squid,tag=!enemyink] run attribute @s generic.movement_speed base set 0.05
execute as @a[tag=kraken,scores={specialactive=1..}] run attribute @s generic.movement_speed base set 0.15
execute as @a[tag=squid] run attribute @s generic.movement_speed base set 0.6
execute as @a[tag=enemyink] run attribute @s generic.movement_speed base set 0.02
effect give @a[tag=squid] invisibility 10 0 true
effect clear @a[tag=!squid,tag=!kraken] invisibility
effect clear @a[tag=!squid,tag=kraken,scores={specialactive=0}] invisibility
tag @a remove on_bounce_pad
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ slime_block run tag @s add on_bounce_pad
effect give @a[tag=on_bounce_pad] jump_boost 10 8 true
effect clear @a[tag=!on_bounce_pad,tag=bow_class,scores={main_charge=1..}] jump_boost
effect give @a[tag=bow_class,scores={main_charge=1..}] jump_boost 10 0 true
effect clear @a[tag=!on_bounce_pad,tag=!bow_class] jump_boost
effect clear @a[tag=!on_bounce_pad,tag=bow_class,scores={main_charge=0}] jump_boost
scoreboard players remove @a[scores={inkregenlag=1..}] inkregenlag 1
execute as @a[scores={inkregenlag=0,main_charge=0},tag=squid] if score @s ink < @s ink_max run scoreboard players add @s ink 1
scoreboard players add ink_regen_timer value 1
execute if score ink_regen_timer value matches 4.. as @a[scores={inkregenlag=0,main_charge=0},tag=squid] if score @s ink < @s ink_max run scoreboard players add @s ink 1
execute if score ink_regen_timer value matches 4.. run scoreboard players set ink_regen_timer value 0
scoreboard players add @a[tag=squid] squidtimer 1
scoreboard players set @a[tag=!squid] squidtimer 0
scoreboard players add @a[tag=squid,scores={squidtimer=20..,health=..99}] health 1
scoreboard players add @a[tag=squid,scores={squidtimer=20..,health=..99}] health 1
scoreboard players add @a[tag=squid,scores={squidtimer=20..,health=..99}] health 1
scoreboard players add @a[tag=squid,scores={squidtimer=20..,health=..99}] health 1
scoreboard players add @a[tag=squid,scores={squidtimer=20..,health=..99}] health 1
scoreboard players remove @a[tag=enemyink,scores={health=61..}] health 1
execute at @a[tag=squid,team=blue,scores={squidmove=1..}] run particle block blue_wool ~ ~0.2 ~ 0.15 0.01 0.15 0.01 5 normal @a
execute at @a[tag=squid,team=yellow,scores={squidmove=1..}] run particle block yellow_wool ~ ~0.2 ~ 0.15 0.01 0.15 0.01 5 normal @a
execute at @a[tag=squid,team=blue,scores={squidmove2=1..}] run particle block blue_wool ~ ~0.2 ~ 0.15 0.01 0.15 0.01 5 normal @a
execute at @a[tag=squid,team=yellow,scores={squidmove2=1..}] run particle block yellow_wool ~ ~0.2 ~ 0.15 0.01 0.15 0.01 5 normal @a
execute at @a[scores={inkarmor=1..},tag=squid] run particle heart ~ ~ ~ 0.5 0.3 0.5 0.1 2 normal @a
execute at @a[scores={inkarmor=1..},tag=!squid] run particle heart ~ ~1 ~ 0.5 1 0.5 0.1 2 normal @a
execute at @a[tag=bomb_rush,scores={specialactive=1..},tag=squid] run particle crit ~ ~ ~ 0.5 0.3 0.5 0.1 10 normal @a
execute at @a[tag=bomb_rush,scores={specialactive=1..},tag=!squid] run particle crit ~ ~1 ~ 0.5 1 0.5 0.1 10 normal @a
execute at @a[scores={stored_charge=1..},tag=squid] run particle firework ~ ~ ~ 0.1 0.1 0.1 0.05 10 normal @a
execute at @a[scores={specialtimer=-1},tag=!squid] run particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 3 normal @a[distance=1..]
tag @a remove climb
tag @a[tag=squid,nbt={OnGround:0b}] add climb
execute as @a[tag=kraken,scores={specialactive=1..},nbt={OnGround:0b}] at @s if block ~-1 ~ ~ #wool run tag @s add climb
execute as @a[tag=kraken,scores={specialactive=1..},nbt={OnGround:0b}] at @s if block ~1 ~ ~ #wool run tag @s add climb
execute as @a[tag=kraken,scores={specialactive=1..},nbt={OnGround:0b}] at @s if block ~ ~ ~-1 #wool run tag @s add climb
execute as @a[tag=kraken,scores={specialactive=1..},nbt={OnGround:0b}] at @s if block ~ ~ ~1 #wool run tag @s add climb
execute as @a[tag=climb] at @s if block ~ ~ ~ iron_trapdoor run tag @s remove climb
effect give @a[tag=climb] levitation 1 5 true
effect clear @a[tag=!climb] levitation
execute at @a[tag=climb,team=blue] run particle block blue_wool ~ ~0.2 ~ 0.15 0.01 0.15 0.01 5 normal @a
execute at @a[tag=climb,team=yellow] run particle block yellow_wool ~ ~0.2 ~ 0.15 0.01 0.15 0.01 5 normal @a
tag @a remove squidgrate
execute as @a[tag=!squid,scores={sneak=1..}] at @s if block ~ ~-0.1 ~ iron_trapdoor run tag @s add squidgrate
execute as @a[tag=kraken,scores={specialactive=1..}] at @s if block ~ ~-0.1 ~ iron_trapdoor run tag @s add squidgrate
execute as @a[tag=squidgrate] at @s run tp @s ~ ~-1 ~
execute as @a[nbt={OnGround:1b},tag=!squidgrate] at @s rotated ~ 0 unless block ~ ~ ~ #slabs unless block ^ ^ ^0.5 air if block ^ ^1 ^0.5 air if block ^0.4 ^1 ^0.5 air if block ^-0.4 ^1 ^0.5 air if block ^ ^1 ^0.9 air unless block ^ ^ ^0.5 #slabs run tp @s ^ ^1 ^0.4
execute as @a[nbt={OnGround:1b},scores={sneak=1..}] at @s rotated ~ 0 if block ^ ^-1 ^1 air if block ^ ^ ^1 air if block ^ ^-1 ^0.5 air if block ^ ^ ^0.5 air if block ^ ^-1 ^0.9 air if block ^0.4 ^-1 ^0.5 air if block ^-0.4 ^-1 ^0.5 air unless block ^ ^-2 ^0.5 air unless block ^ ^-2 ^0.5 water unless block ~ ~ ~ #slabs run tp @s ^ ^-1 ^0.6
scoreboard players set @a sneak 0
scoreboard players set @a squidmove 0
scoreboard players set @a squidmove2 0