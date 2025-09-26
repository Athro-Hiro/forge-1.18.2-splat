execute as @a[scores={shoot=1..},tag=blaster_class] at @s run function splatoon:blasters/shoot
scoreboard players set @a[tag=blaster_class] shoot 0
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1