playsound minecraft:entity.generic.explode player @a
execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..3] health 120
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..3] health 120
execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..5] health 40
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..5] health 40
execute if entity @s[tag=blue] run scoreboard players add @e[type=armor_stand,tag=bubble,tag=blue,distance=..5] health 10
execute if entity @s[tag=blue] run scoreboard players remove @e[type=armor_stand,tag=bubble,tag=yellow,distance=..5] health 10
execute if entity @s[tag=yellow] run scoreboard players remove @e[type=armor_stand,tag=bubble,tag=blue,distance=..5] health 10
execute if entity @s[tag=yellow] run scoreboard players add @e[type=armor_stand,tag=bubble,tag=yellow,distance=..5] health 10
execute if entity @s[tag=blue] run function splatoon:paint/blue_bubble
execute if entity @s[tag=yellow] run function splatoon:paint/yellow_bubble
execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 2 2 2 0.1 200 normal @a
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 2 2 2 0.1 200 normal @a
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..3]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..3]