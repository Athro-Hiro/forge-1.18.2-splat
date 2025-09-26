gamemode spectator @s
scoreboard players operation @s ink = @s ink_max
scoreboard players set @s respawndelay 7
scoreboard players set @s inkarmor 0
scoreboard players set @s specialactive 0
scoreboard players add @s specialtimer 15
scoreboard players set @s health 100
scoreboard players set @s tenta_missiles 0
scoreboard players set @s bubbles 0
scoreboard players set @s stamp_cooldown 0
tag @s remove noitems
tag @s remove has_clam
effect clear @s
clear @s
execute if score @s specialtimer > @s special_max run scoreboard players operation @s specialtimer = @s special_max
execute if entity @s[team=blue] run function splatoon:paint/yellow_bomb
execute if entity @s[team=yellow] run function splatoon:paint/blue_bomb
execute if entity @s[team=blue] if score gamemode_id value matches 2 run scoreboard players add Yellow score 1
execute if entity @s[team=yellow] if score gamemode_id value matches 2 run scoreboard players add Blue score 1
tp @s ~ ~5 ~
tellraw @a ["",{"selector":"@s"},{"text":" got splatted"}]
attribute @s minecraft:generic.movement_speed modifier remove 69-69-69-69-68
execute as @e[type=armor_stand,tag=autobomb] if score @s playerid = @p playerid run scoreboard players set @s playerid 0