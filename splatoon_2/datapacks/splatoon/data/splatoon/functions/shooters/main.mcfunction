execute as @a[scores={shoot=1..,cooldown=0},tag=shooter_class] at @s run function splatoon:shooters/shoot
scoreboard players set @a[scores={shoot=1..},tag=squeezer] squeezer 6
scoreboard players remove @a[scores={squeezer=1..}] squeezer 1
scoreboard players set @a[tag=shooter_class] shoot 0
execute at @a[team=blue,gamemode=adventure] positioned ~-0.5 ~ ~-0.5 run tag @e[type=item,tag=bullet,tag=yellow,dx=0,dy=1,dz=0] add damage
execute at @a[team=yellow,gamemode=adventure] positioned ~-0.5 ~ ~-0.5 run tag @e[type=item,tag=bullet,tag=blue,dx=0,dy=1,dz=0] add damage
execute as @e[type=item,tag=bullet] at @s run function splatoon:shooters/upkeep