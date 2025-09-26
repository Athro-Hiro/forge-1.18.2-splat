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
execute anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:tnt",Count:1},Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[bomb]}
execute if entity @s[team=blue] run scoreboard players set team value 1
execute if entity @s[team=yellow] run scoreboard players set team value 2
execute if entity @s[tag=splat_bomb] run scoreboard players set type value 1
execute if entity @s[tag=suction_bomb] run scoreboard players set type value 2
execute if entity @s[tag=burst_bomb] run scoreboard players set type value 3
execute if entity @s[tag=fizzy_bomb] run scoreboard players set type value 4
execute if entity @s[tag=torpedo] run scoreboard players set type value 5
execute if entity @s[tag=point_sensor] run scoreboard players set type value 6
execute if entity @s[tag=toxic_mist] run scoreboard players set type value 7
execute if entity @s[tag=autobomb] run scoreboard players set type value 8
execute if entity @s[tag=sprinkler] run scoreboard players set type value 9
scoreboard players set charged value 0
execute if entity @s[scores={sub_charge=20..}] run scoreboard players set charged value 1
scoreboard players set impact value 0
execute if entity @s[tag=!splat_bomb,tag=!fizzy_bomb,tag=!autobomb] run scoreboard players set impact value 1
execute if entity @s[y_rotation=-180..-135] run scoreboard players set direction value 1
execute if entity @s[y_rotation=135..180] run scoreboard players set direction value 1
execute if entity @s[y_rotation=-45..45] run scoreboard players set direction value 1
execute if entity @s[y_rotation=-135..-45] run scoreboard players set direction value 2
execute if entity @s[y_rotation=45..135] run scoreboard players set direction value 2
scoreboard players operation playerid value = @s playerid
scoreboard players set x_zero value 0
execute if score @s x2 matches 0 run scoreboard players set x_zero value 1
scoreboard players set z_zero value 0
execute if score @s z2 matches 0 run scoreboard players set z_zero value 1
scoreboard players operation dx value = @s x2
scoreboard players operation dy value = @s y2
scoreboard players operation dz value = @s z2
execute store result score rotation value run data get entity @s Rotation[0] 1000000
execute as @e[type=item,tag=bomb,tag=!timer,limit=1,sort=nearest] run function splatoon:subs/shoot_as_item
kill @e[type=armor_stand,tag=direction,limit=1,sort=nearest]
scoreboard players operation @s ink -= @s ink_cost_sub
scoreboard players operation @s inkregenlag > @s inkregenlag_sub
scoreboard players set @s[tag=!burst_bomb] bomb_cooldown 10
scoreboard players set @s[tag=burst_bomb] bomb_cooldown 5