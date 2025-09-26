execute if entity @s[tag=!ballpoint_splatling] run function splatoon:shooters/accuracy/medium_accuracy
execute if entity @s[tag=ballpoint_splatling,scores={shots2=1..}] run function splatoon:shooters/accuracy/low_accuracy
execute if entity @s[tag=ballpoint_splatling,scores={shots2=0}] run function splatoon:shooters/accuracy/high_accuracy
execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000
execute store result score @s x2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[0] 1000000
execute store result score @s y2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[1] 1000000
execute store result score @s z2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[2] 1000000
scoreboard players operation @s x2 -= @s x
scoreboard players operation @s y2 -= @s y
scoreboard players operation @s z2 -= @s z
execute if entity @s[team=blue] anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:blue_wool",Count:1},Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[splatling_bullet,bullet,can_falloff,blue]}
execute if entity @s[team=yellow] anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:yellow_wool",Count:1},Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[splatling_bullet,bullet,can_falloff,yellow]}
scoreboard players operation range value = @s range
execute if entity @s[tag=!splatling_charged] run scoreboard players set range value 5
execute if entity @s[tag=ballpoint_splatling,scores={shots2=1..}] run scoreboard players set range value 5
scoreboard players operation damage value = @s damage
execute if entity @s[tag=ballpoint_splatling,scores={shots2=1..}] run scoreboard players remove damage value 5
scoreboard players set more_paint value 0
execute if entity @s[tag=ballpoint_splatling,scores={shots2=1..}] run scoreboard players set more_paint value 1
execute if entity @s[tag=mini_splatling] run scoreboard players set more_paint value 1
scoreboard players set x_zero value 0
execute if score @s x2 matches 0 run scoreboard players set x_zero value 1
scoreboard players set z_zero value 0
execute if score @s z2 matches 0 run scoreboard players set z_zero value 1
scoreboard players operation dx value = @s x2
scoreboard players operation dy value = @s y2
scoreboard players operation dz value = @s z2
execute as @e[type=item,tag=splatling_bullet,tag=!timer,limit=1,sort=nearest] run function splatoon:splatlings/shoot_as_item
kill @e[type=armor_stand,tag=direction,limit=1,sort=nearest]
scoreboard players set @s autoshoot 0
scoreboard players remove @s shots 1
playsound minecraft:block.dispenser.dispense player @s[scores={shots2=1,shots=2..}]
scoreboard players remove @s[scores={shots2=1..}] shots2 1
playsound entity.snowball.throw player @a ~ ~ ~ 1 0
scoreboard players operation @s cooldown = @s cooldown_max