execute as @a[scores={shoot=1..},tag=slosher_class,tag=!tri_slosher,tag=!bloblobber] at @s run function splatoon:sloshers/shoot
execute as @a[scores={shoot=1..},tag=slosher_class,tag=tri_slosher] at @s run function splatoon:sloshers/tri_slosher
execute as @a[scores={shoot=1..},tag=bloblobber] run function splatoon:sloshers/bloblobber
scoreboard players add @a[scores={shots=1..},tag=bloblobber] autoshoot 1
execute as @a[tag=bloblobber,scores={shots=1..,autoshoot=2..}] at @s run function splatoon:sloshers/shoot_bloblobber
scoreboard players set @a[tag=slosher_class] shoot 0