summon armor_stand ^ ^ ^1 {Tags:[direction],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1}
execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000
execute store result score @s x2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[0] 1000000
execute store result score @s y2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[1] 1000000
execute store result score @s z2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[2] 1000000
scoreboard players operation @s x2 -= @s x
scoreboard players operation @s y2 -= @s y
scoreboard players operation @s z2 -= @s z
execute anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:tnt",Count:1},Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[cannon,bullet]}
execute if entity @s[team=blue] run tag @e[type=item,tag=cannon,tag=!timer,limit=1,sort=nearest] add blue
execute if entity @s[team=yellow] run tag @e[type=item,tag=cannon,tag=!timer,limit=1,sort=nearest] add yellow
execute if score @s x2 matches 0 run tag @e[type=item,tag=cannon,tag=!timer,limit=1,sort=nearest] add x_zero
execute if score @s z2 matches 0 run tag @e[type=item,tag=cannon,tag=!timer,limit=1,sort=nearest] add z_zero
execute store result entity @e[type=item,tag=cannon,tag=!timer,limit=1,sort=nearest] Motion[0] double 0.0000012 run scoreboard players get @s x2
execute store result entity @e[type=item,tag=cannon,tag=!timer,limit=1,sort=nearest] Motion[1] double 0.0000012 run scoreboard players get @s y2
execute store result entity @e[type=item,tag=cannon,tag=!timer,limit=1,sort=nearest] Motion[2] double 0.0000012 run scoreboard players get @s z2
tag @e[type=item,tag=cannon] add timer
kill @e[type=armor_stand,tag=direction,limit=1,sort=nearest]
playsound entity.generic.explode player @a
scoreboard players remove @s ink 20
scoreboard players set @s[scores={inkregenlag=..39}] inkregenlag 40