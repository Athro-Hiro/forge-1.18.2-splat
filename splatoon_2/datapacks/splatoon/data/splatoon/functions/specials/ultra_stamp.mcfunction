playsound minecraft:entity.generic.explode player @a
execute if entity @s[team=blue] run scoreboard players remove @a[team=yellow,distance=..1] health 120
execute if entity @s[team=yellow] run scoreboard players remove @a[team=blue,distance=..1] health 120
execute if entity @s[team=blue] run function splatoon:paint/medium_blue
execute if entity @s[team=yellow] run function splatoon:paint/medium_yellow
execute if entity @s[team=blue] run particle block blue_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[team=yellow] run particle block yellow_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[team=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..1]
execute if entity @s[team=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..1]
execute positioned ^ ^1 ^-1 if block ~ ~ ~ air if block ~-0.4 ~ ~ air if block ~0.4 ~ ~ air if block ~ ~ ~-0.4 air if block ~ ~ ~0.4 air run tp @s ~ ~-1 ~
execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
scoreboard players set @s stamp_cooldown 5