execute if entity @s[nbt={OnGround:1b}] run summon armor_stand ^ ^ ^1 {Tags:[direction],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1}
execute if entity @s[nbt={OnGround:0b}] run function splatoon:shooters/accuracy/medium_accuracy
execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000
execute store result score @s x2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[0] 1000000
execute store result score @s y2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[1] 1000000
execute store result score @s z2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[2] 1000000
scoreboard players operation @s x2 -= @s x
scoreboard players operation @s y2 -= @s y
scoreboard players operation @s z2 -= @s z
execute if entity @s[team=blue] anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:blue_wool",Count:1},NoGravity:1,Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[blaster_bullet,bullet,blue]}
execute if entity @s[team=yellow] anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:yellow_wool",Count:1},NoGravity:1,Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[blaster_bullet,bullet,yellow]}
execute if entity @s[tag=small_explosion] run scoreboard players set size value 1
execute if entity @s[tag=medium_explosion] run scoreboard players set size value 2
execute if entity @s[tag=large_explosion] run scoreboard players set size value 3
scoreboard players operation range value = @s range
execute if entity @s[nbt={OnGround:0b}] run scoreboard players add range value 1
scoreboard players operation damage value = @s damage
scoreboard players operation damage_far value = @s damage_far
scoreboard players set x_zero value 0
execute if score @s x2 matches 0 run scoreboard players set x_zero value 1
scoreboard players set z_zero value 0
execute if score @s z2 matches 0 run scoreboard players set z_zero value 1
execute if entity @s[y_rotation=-180..-135] run scoreboard players set direction value 1
execute if entity @s[y_rotation=135..180] run scoreboard players set direction value 1
execute if entity @s[y_rotation=-45..45] run scoreboard players set direction value 1
execute if entity @s[y_rotation=-135..-45] run scoreboard players set direction value 2
execute if entity @s[y_rotation=45..135] run scoreboard players set direction value 2
scoreboard players operation dx value = @s x2
scoreboard players operation dy value = @s y2
scoreboard players operation dz value = @s z2
execute as @e[type=item,tag=blaster_bullet,tag=!timer,limit=1,sort=nearest] run function splatoon:blasters/shoot_as_item
kill @e[type=armor_stand,tag=direction,limit=1,sort=nearest]
scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players operation @s inkregenlag > @s inkregenlag_main