execute as @a[scores={shoot=1..},tag=nozzlenose_class] run scoreboard players operation @s ink -= @s ink_cost_main
execute as @a[scores={shoot=1..},tag=nozzlenose_class] run scoreboard players operation @s cooldown = @s cooldown_max
execute as @a[scores={shoot=1..},tag=nozzlenose_class] run scoreboard players operation @s inkregenlag > @s inkregenlag_main
execute as @a[scores={shoot=1..},tag=nozzlenose_class] at @s run function splatoon:nozzlenoses/shoot
scoreboard players set @a[scores={shoot=1..},tag=nozzlenose_class] shots 2
scoreboard players add @a[scores={shots=1..},tag=nozzlenose_class] autoshoot 1
execute as @a[tag=nozzlenose_class,scores={shots=1..}] at @s if score @s autoshoot >= @s nozzlenose_delay run function splatoon:nozzlenoses/shoot
scoreboard players set @a[tag=nozzlenose_class] shoot 0