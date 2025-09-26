scoreboard players operation @s ink -= @s ink_cost_roll
scoreboard players add @s dodge_rolls 1
scoreboard players operation @s rolltimer = @s rolltimer_max
scoreboard players operation @s roll_cooldown = @s roll_cd_max
execute if entity @s[team=blue] run function splatoon:paint/medium_blue
execute if entity @s[team=yellow] run function splatoon:paint/medium_yellow
execute at @s rotated ~ 0 positioned ^ ^ ^1 if block ~ ~1 ~ air if block ~0.4 ~1 ~ air if block ~-0.4 ~1 ~ air if block ~ ~1 ~0.4 air if block ~ ~1 ~-0.4 air run tp @s ~ ~ ~
execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute at @s run particle crit ~ ~ ~ 0.1 0.1 0.1 0.1 3
execute at @s rotated ~ 0 positioned ^ ^ ^1 if block ~ ~1 ~ air if block ~0.4 ~1 ~ air if block ~-0.4 ~1 ~ air if block ~ ~1 ~0.4 air if block ~ ~1 ~-0.4 air run tp @s ~ ~ ~
execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute at @s run particle crit ~ ~ ~ 0.1 0.1 0.1 0.1 3
execute at @s rotated ~ 0 positioned ^ ^ ^1 if block ~ ~1 ~ air if block ~0.4 ~1 ~ air if block ~-0.4 ~1 ~ air if block ~ ~1 ~0.4 air if block ~ ~1 ~-0.4 air run tp @s ~ ~ ~
execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute at @s run particle crit ~ ~ ~ 0.1 0.1 0.1 0.1 3
playsound entity.silverfish.hurt player @a
attribute @s[tag=!dualie_squelchers] minecraft:generic.movement_speed modifier add 420-420-420-420-420 roll -0.1 add
attribute @s[tag=dualie_squelchers] minecraft:generic.movement_speed modifier add 420-420-420-420-420 roll -0.04 add
item replace entity @s weapon.offhand with air