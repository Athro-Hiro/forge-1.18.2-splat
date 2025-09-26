execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000
execute store result score @s x2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[0] 1000000
execute store result score @s y2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[1] 1000000
execute store result score @s z2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[2] 1000000
scoreboard players operation @s x2 -= @s x
scoreboard players operation @s y2 -= @s y
scoreboard players operation @s z2 -= @s z
execute if entity @s[team=blue] anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:blue_wool",Count:1},NoGravity:1,Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[slosher_bullet,bullet,blue,tri_slosher]}
execute if entity @s[team=yellow] anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:yellow_wool",Count:1},NoGravity:1,Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[slosher_bullet,bullet,yellow,tri_slosher]}
scoreboard players set type value 2
scoreboard players set falloff value 0
scoreboard players operation range value = @s range
scoreboard players operation damage value = @s damage
scoreboard players set damage_far value 0
scoreboard players set x_zero value 0
execute if score @s x2 matches 0 run scoreboard players set x_zero value 1
scoreboard players set z_zero value 0
execute if score @s z2 matches 0 run scoreboard players set z_zero value 1
scoreboard players set temp value -1
scoreboard players set temp2 value -1
execute if score @s x2 matches ..0 run scoreboard players operation temp value *= @s x2
execute if score @s x2 matches 1.. run scoreboard players operation temp value = @s x2
execute if score @s z2 matches ..0 run scoreboard players operation temp2 value *= @s z2
execute if score @s z2 matches 1.. run scoreboard players operation temp2 value = @s z2
execute if score temp value > temp2 value run scoreboard players set direction value 2
execute if score temp value <= temp2 value run scoreboard players set direction value 1
scoreboard players operation dx value = @s x2
scoreboard players operation dy value = @s y2
scoreboard players operation dz value = @s z2
execute as @e[type=item,tag=slosher_bullet,tag=!timer,limit=1,sort=nearest] run function splatoon:sloshers/shoot_as_item
kill @e[type=armor_stand,tag=direction,limit=1,sort=nearest]