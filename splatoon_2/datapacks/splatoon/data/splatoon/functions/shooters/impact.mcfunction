execute if entity @s[tag=blue,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=yellow,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=yellow,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=blue,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=blue,tag=small] run function splatoon:paint/small_blue
execute if entity @s[tag=yellow,tag=small] run function splatoon:paint/small_yellow
execute if entity @s[tag=blue,tag=medium] run function splatoon:paint/medium_blue
execute if entity @s[tag=yellow,tag=medium] run function splatoon:paint/medium_yellow
execute if entity @s[tag=blue,tag=large] run function splatoon:paint/large_blue
execute if entity @s[tag=yellow,tag=large] run function splatoon:paint/large_yellow
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..1]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..1]