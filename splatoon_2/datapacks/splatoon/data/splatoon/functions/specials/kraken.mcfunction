execute as @e[type=squid,tag=kraken] if score @s playerid = @p playerid run tag @s add this_kraken
execute if entity @s[tag=!climb] run tp @e[type=squid,tag=this_kraken] ~ ~ ~ ~ 0
execute if entity @s[tag=climb] run tp @e[type=squid,tag=this_kraken] ~ ~ ~ ~ -90
execute if entity @s[team=blue] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 blue_wool replace #wool
execute if entity @s[team=blue] run particle block blue_wool ~ ~1 ~ 0.3 0.3 0.3 0.1 10
execute if entity @s[team=blue,nbt={OnGround:0b}] positioned ~-1 ~-1 ~-1 run scoreboard players remove @a[team=yellow,dx=1,dy=1,dz=1] health 100
execute if entity @s[team=yellow] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 yellow_wool replace #wool
execute if entity @s[team=yellow] run particle block yellow_wool ~ ~1 ~ 0.3 0.3 0.3 0.1 10
execute if entity @s[team=yellow,nbt={OnGround:0b}] positioned ~-1 ~-1 ~-1 run scoreboard players remove @a[team=blue,dx=1,dy=1,dz=1] health 100
execute if entity @s[team=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..1]
execute if entity @s[team=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..1]
effect give @s invisibility 10 0 true
execute if block ~ ~ ~ water run scoreboard players set @s specialactive 1
execute if block ~-0.3 ~ ~-0.3 water run scoreboard players set @s specialactive 1
execute if block ~0.3 ~ ~-0.3 water run scoreboard players set @s specialactive 1
execute if block ~-0.3 ~ ~0.3 water run scoreboard players set @s specialactive 1
execute if block ~0.3 ~ ~0.3 water run scoreboard players set @s specialactive 1
execute if entity @s[nbt={OnGround:1b}] if block ~ ~-1 ~ barrier run scoreboard players set @s specialactive 1
execute if score @s specialactive matches 1 run tp @e[type=squid,tag=this_kraken] 0 0 0
execute if score @s specialactive matches 1 run kill @e[type=squid,tag=this_kraken]
tag @e[type=squid,tag=kraken] remove this_kraken