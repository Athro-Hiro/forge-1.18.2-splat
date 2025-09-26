tag @a[scores={ink=0}] remove using_brush
tag @a[scores={ink=0}] remove using_roller
tag @a[nbt=!{SelectedItemSlot:0}] remove using_brush
tag @a[nbt=!{SelectedItemSlot:0}] remove using_roller
tag @a[tag=squid] remove using_brush
tag @a[tag=squid] remove using_roller
tag @a[gamemode=spectator] remove using_brush
tag @a[gamemode=spectator] remove using_roller
execute as @a[tag=using_brush,tag=inkbrush] run attribute @s minecraft:generic.movement_speed modifier add 42-42-42-42-42 brush 0.1 add
execute as @a[tag=using_brush,tag=octobrush] run attribute @s minecraft:generic.movement_speed modifier add 42-42-42-42-42 brush 0.07 add
execute as @a[tag=using_roller,tag=!carbon_roller] run attribute @s minecraft:generic.movement_speed modifier add 42-42-42-42-42 roller 0.04 add
execute as @a[tag=using_roller,tag=carbon_roller] run attribute @s minecraft:generic.movement_speed modifier add 42-42-42-42-42 roller 0.06 add
execute as @a[tag=!using_brush,tag=!using_roller] run attribute @s minecraft:generic.movement_speed modifier remove 42-42-42-42-42
tag @a[tag=using_roller] add moving
tag @a[tag=using_brush] add moving
tag @a[scores={roll_walk=0,roll_sprint=0}] remove moving
execute at @a[tag=using_brush,tag=moving,team=blue,nbt={OnGround:1b}] run fill ~ ~-2 ~ ~ ~-1 ~ blue_wool replace #wool
execute at @a[tag=using_brush,tag=moving,team=yellow,nbt={OnGround:1b}] run fill ~ ~-2 ~ ~ ~-1 ~ yellow_wool replace #wool
execute at @a[tag=using_brush,tag=moving,team=blue,nbt={OnGround:1b}] run particle block blue_wool ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute at @a[tag=using_brush,tag=moving,team=yellow,nbt={OnGround:1b}] run particle block yellow_wool ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute as @a[tag=using_roller,tag=moving,nbt={OnGround:1b}] at @s anchored feet rotated ~ 0 positioned ^ ^ ^1 run function splatoon:rollers/rolling
execute as @a[tag=using_roller,tag=moving,nbt={OnGround:1b}] at @s anchored feet rotated ~ 0 positioned ^1 ^ ^1 run function splatoon:rollers/rolling
execute as @a[tag=using_roller,tag=moving,nbt={OnGround:1b}] at @s anchored feet rotated ~ 0 positioned ^-1 ^ ^1 run function splatoon:rollers/rolling
execute as @a[tag=using_roller,tag=moving,nbt={OnGround:1b},tag=dynamo_roller] at @s anchored feet rotated ~ 0 positioned ^-2 ^ ^1 run function splatoon:rollers/rolling
execute as @a[tag=using_roller,tag=moving,nbt={OnGround:1b},tag=dynamo_roller] at @s anchored feet rotated ~ 0 positioned ^2 ^ ^1 run function splatoon:rollers/rolling
scoreboard players add @a[tag=using_roller,tag=moving,nbt={OnGround:1b}] roller_timer 1
scoreboard players add @a[tag=using_brush,tag=moving,nbt={OnGround:1b}] roller_timer 1
scoreboard players remove @a[scores={roller_timer=2..}] ink 1
scoreboard players set @a[scores={roller_timer=2..}] roller_timer 0
scoreboard players set @a[tag=!using_roller,tag=!using_brush] roller_timer 0
tag @a remove moving
scoreboard players set @a roll_walk 0
scoreboard players set @a roll_sprint 0
execute as @a[tag=!noitems,tag=roller_class,scores={shoot3=1..,cooldown=0}] at @s if score @s ink >= @s ink_cost_main run playsound block.slime_block.place player @a
execute as @a[tag=!noitems,tag=roller,scores={shoot3=1..,cooldown=0},nbt={OnGround:1b}] at @s if score @s ink >= @s ink_cost_main rotated ~ 0 run function splatoon:rollers/roller_horizontal
execute as @a[tag=!noitems,tag=carbon_roller,scores={shoot3=1..,cooldown=0},nbt={OnGround:1b}] at @s if score @s ink >= @s ink_cost_main rotated ~ 0 run function splatoon:rollers/carbon_horizontal
execute as @a[tag=!noitems,tag=dynamo_roller,scores={shoot3=1..,cooldown=0},nbt={OnGround:1b}] at @s if score @s ink >= @s ink_cost_main rotated ~ 0 run function splatoon:rollers/dynamo_horizontal
execute as @a[tag=!noitems,tag=flingza_roller,scores={shoot3=1..,cooldown=0},nbt={OnGround:1b}] at @s if score @s ink >= @s ink_cost_main rotated ~ 0 run function splatoon:rollers/flingza_horizontal
execute as @a[tag=!noitems,tag=roller,scores={shoot3=1..,cooldown=0},nbt={OnGround:0b}] at @s if score @s ink >= @s ink_cost_main run function splatoon:rollers/roller_vertical
execute as @a[tag=!noitems,tag=carbon_roller,scores={shoot3=1..,cooldown=0},nbt={OnGround:0b}] at @s if score @s ink >= @s ink_cost_main run function splatoon:rollers/carbon_vertical
execute as @a[tag=!noitems,tag=dynamo_roller,scores={shoot3=1..,cooldown=0},nbt={OnGround:0b}] at @s if score @s ink >= @s ink_cost_main run function splatoon:rollers/dynamo_vertical
execute as @a[tag=!noitems,tag=flingza_roller,scores={shoot3=1..,cooldown=0},nbt={OnGround:0b}] at @s if score @s ink >= @s ink_cost_main run function splatoon:rollers/flingza_vertical
execute as @a[tag=!noitems,tag=inkbrush,scores={shoot3=1..,cooldown=0}] at @s if score @s ink >= @s ink_cost_main rotated ~ 0 run function splatoon:rollers/inkbrush
execute as @a[tag=!noitems,tag=octobrush,scores={shoot3=1..,cooldown=0}] at @s if score @s ink >= @s ink_cost_main rotated ~ 0 run function splatoon:rollers/octobrush
tag @a[tag=!noitems,scores={shoot3=1..,ink=1..},tag=roller] add using_roller
tag @a[tag=!noitems,scores={shoot3=1..,ink=1..},tag=carbon_roller] add using_roller
tag @a[tag=!noitems,scores={shoot3=1..,ink=1..},tag=dynamo_roller] add using_roller
tag @a[tag=!noitems,scores={shoot3=1..,ink=1..},tag=flingza_roller] add using_roller
tag @a[tag=!noitems,scores={shoot3=1..,ink=1..},tag=inkbrush] add using_brush
tag @a[tag=!noitems,scores={shoot3=1..,ink=1..},tag=octobrush] add using_brush
scoreboard players set @a[tag=!noitems,tag=roller_class] shoot3 0