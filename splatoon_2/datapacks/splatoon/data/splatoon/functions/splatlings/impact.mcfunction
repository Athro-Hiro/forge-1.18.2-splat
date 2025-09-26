execute if entity @s[tag=blue,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=yellow,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=yellow,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @a[team=blue,dx=0,dy=0,dz=0] health -= @s damage
execute if entity @s[tag=blue,tag=!more_paint] run function splatoon:paint/small_blue
execute if entity @s[tag=yellow,tag=!more_paint] run function splatoon:paint/small_yellow
execute if entity @s[tag=blue,tag=more_paint] run function splatoon:paint/medium_blue
execute if entity @s[tag=yellow,tag=more_paint] run function splatoon:paint/medium_yellow
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..1]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..1]