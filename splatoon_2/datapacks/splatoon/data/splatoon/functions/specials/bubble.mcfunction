execute if entity @s[tag=blue,scores={health=-5..5}] run particle block blue_wool ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute if entity @s[tag=blue,scores={health=..-6}] run particle block blue_wool ~ ~ ~ 0.3 0.3 0.3 0.1 20
execute if entity @s[tag=blue,scores={health=6..}] run particle block blue_wool ~ ~ ~ 0.7 0.7 0.7 0.1 20
execute if entity @s[tag=yellow,scores={health=-5..5}] run particle block yellow_wool ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute if entity @s[tag=yellow,scores={health=..-6}] run particle block yellow_wool ~ ~ ~ 0.3 0.3 0.3 0.1 20
execute if entity @s[tag=yellow,scores={health=6..}] run particle block yellow_wool ~ ~ ~ 0.7 0.7 0.7 0.1 20
scoreboard players operation bubble_health value = @s health
execute if entity @s[tag=blue] as @e[distance=..1.5] run function splatoon:specials/blue_bubble
execute if entity @s[tag=yellow] as @e[distance=..1.5] run function splatoon:specials/yellow_bubble
scoreboard players operation @s health = bubble_health value
kill @s[scores={health=..-10}]
execute if entity @s[scores={health=10..}] run function splatoon:specials/bubble_pop
kill @s[scores={health=10..}]
execute if entity @s[tag=blue] positioned ~ ~-1 ~ run function splatoon:paint/medium_blue
execute if entity @s[tag=yellow] positioned ~ ~-1 ~ run function splatoon:paint/medium_yellow
execute rotated ~ 0 if block ^ ^1 ^1 air run tp @s ^ ^ ^0.05
execute rotated ~ 0 if block ^ ^1 ^1 iron_trapdoor run tp @s ^ ^ ^0.05
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-0.02 ~
execute at @s if block ~ ~-1 ~ iron_trapdoor run tp @s ~ ~-0.02 ~
execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ iron_trapdoor run tp @s ~ ~1 ~
particle bubble ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute at @s if block ~ ~-1 ~ water run kill @s
execute at @s if block ~ ~-1 ~ barrier run kill @s