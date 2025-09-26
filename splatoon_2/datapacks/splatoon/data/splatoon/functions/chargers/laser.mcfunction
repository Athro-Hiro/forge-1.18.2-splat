scoreboard players add @s raycast 1
execute if entity @s[scores={raycast=3..}] as @a unless score @s playerid = current_player value run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 2 1 normal @s
execute if entity @s[scores={raycast=..50}] if block ~ ~ ~ air positioned ^ ^ ^1 run function splatoon:chargers/laser