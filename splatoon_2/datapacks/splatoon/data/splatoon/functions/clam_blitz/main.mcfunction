execute as @a[team=blue,gamemode=adventure] at @s if block ~ ~-1 ~ yellow_concrete run tag @s add has_clam
execute as @a[team=yellow,gamemode=adventure] at @s if block ~ ~-1 ~ blue_concrete run tag @s add has_clam
execute as @a[team=blue,tag=has_clam] at @s if block ~ ~-1 ~ blue_concrete run function splatoon:clam_blitz/deposit_clam
execute as @a[team=yellow,tag=has_clam] at @s if block ~ ~-1 ~ yellow_concrete run function splatoon:clam_blitz/deposit_clam
execute at @a[tag=has_clam,tag=!squid] run particle end_rod ~ ~1 ~ 0.1 0.5 0.1 0.05 5
execute at @a[tag=has_clam,tag=squid] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 5