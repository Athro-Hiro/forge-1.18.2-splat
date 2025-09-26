execute as @a[tag=!noitems,gamemode=adventure,tag=!using_cannon,scores={shots=0}] at @s if block ~ ~-1 ~ diamond_block unless entity @a[tag=using_cannon,distance=..3] run clear @s
tag @a[gamemode=!adventure] remove using_cannon
tag @a[tag=noitems] remove using_cannon
tag @a[scores={ink=..19}] remove using_cannon
execute as @a at @s unless block ~ ~-1 ~ diamond_block run tag @s remove using_cannon
execute as @a[tag=!noitems,gamemode=adventure,scores={shots=0}] at @s if block ~ ~-1 ~ diamond_block unless entity @a[tag=using_cannon,distance=..3] run tag @s add using_cannon
execute as @a[tag=using_cannon] run function splatoon:cannon_items
execute as @a[tag=using_cannon,scores={shoot5=1..}] at @s run function splatoon:shoot_cannon
scoreboard players set @a[tag=using_cannon] shoot5 0
tag @a[tag=using_cannon] remove using_roller
tag @a[tag=using_cannon] remove using_brush
scoreboard players set @a[tag=using_cannon] main_charge 0