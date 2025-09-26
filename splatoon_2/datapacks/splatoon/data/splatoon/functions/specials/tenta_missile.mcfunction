playsound minecraft:entity.generic.explode player @a
execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..2] health 80
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..2] health 80
execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..3] health 40
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..3] health 40
execute if entity @s[tag=blue] run function splatoon:paint/small_blue_bomb
execute if entity @s[tag=yellow] run function splatoon:paint/small_yellow_bomb
execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[tag=blue] positioned ~-0.5 ~-40 ~-0.5 run kill @e[type=armor_stand,tag=blue,tag=marker,dx=0,dy=40,dz=0]
execute if entity @s[tag=yellow] positioned ~-0.5 ~-40 ~-0.5 run kill @e[type=armor_stand,tag=yellow,tag=marker,dx=0,dy=40,dz=0]
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..3]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..3]