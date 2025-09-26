execute if entity @s[tag=blue] run function splatoon:paint/large_blue_bomb
execute if entity @s[tag=yellow] run function splatoon:paint/large_yellow_bomb
execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..3] health 60
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..3] health 60
execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..5] health 60
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..5] health 60
execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 2 2 2 0.1 200 normal @a
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 2 2 2 0.1 200 normal @a
playsound minecraft:entity.generic.explode player @a
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..3]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..3]