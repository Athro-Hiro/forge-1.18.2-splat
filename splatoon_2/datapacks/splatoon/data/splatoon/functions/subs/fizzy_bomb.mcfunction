execute if entity @s[tag=blue] run scoreboard players remove @a[team=yellow,distance=..3] health 40
execute if entity @s[tag=yellow] run scoreboard players remove @a[team=blue,distance=..3] health 40
execute if entity @s[tag=blue] run function splatoon:paint/small_blue_bomb
execute if entity @s[tag=yellow] run function splatoon:paint/small_yellow_bomb
execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..3]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..3]
scoreboard players remove @s lifetime 10
scoreboard players remove @s shots 1
execute if score @s shots matches ..0 run kill @s
execute at @s positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~1 ~ air run tag @s add blocked
execute at @s[tag=!blocked] run tp @s ^ ^ ^1
execute at @s[tag=!blocked] unless block ~ ~ ~ air run tp @s ~ ~1 ~
tag @s remove blocked
execute at @s positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~1 ~ air run tag @s add blocked
execute at @s[tag=!blocked] run tp @s ^ ^ ^1
execute at @s[tag=!blocked] unless block ~ ~ ~ air run tp @s ~ ~1 ~
tag @s remove blocked
execute at @s positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~1 ~ air run tag @s add blocked
execute at @s[tag=!blocked] run tp @s ^ ^ ^1
execute at @s[tag=!blocked] unless block ~ ~ ~ air run tp @s ~ ~1 ~
tag @s remove blocked
playsound minecraft:entity.generic.explode player @a
tag @s remove dead