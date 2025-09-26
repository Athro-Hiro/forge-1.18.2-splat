execute if entity @s[tag=perfect_accuracy] run summon armor_stand ^ ^ ^1 {Tags:[direction],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1}
execute if entity @s[tag=high_accuracy,nbt={OnGround:1b}] run function splatoon:shooters/accuracy/high_accuracy
execute if entity @s[tag=high_accuracy,nbt={OnGround:0b}] run function splatoon:shooters/accuracy/medium_accuracy
execute if entity @s[tag=medium_accuracy,nbt={OnGround:1b}] run function splatoon:shooters/accuracy/medium_accuracy
execute if entity @s[tag=medium_accuracy,nbt={OnGround:0b}] run function splatoon:shooters/accuracy/low_accuracy
execute if entity @s[tag=low_accuracy] run function splatoon:shooters/accuracy/low_accuracy
execute if entity @s[tag=squeezer,scores={squeezer=0}] run summon armor_stand ^ ^ ^1 {Tags:[direction],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1}
execute if entity @s[tag=squeezer,scores={squeezer=1..}] run function splatoon:shooters/accuracy/low_accuracy
execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000
execute store result score @s x2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[0] 1000000
execute store result score @s y2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[1] 1000000
execute store result score @s z2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[2] 1000000
scoreboard players operation @s x2 -= @s x
scoreboard players operation @s y2 -= @s y
scoreboard players operation @s z2 -= @s z
execute if entity @s[team=blue] anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:blue_wool",Count:1},Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[bullet,can_falloff,shooter_bullet,blue]}
execute if entity @s[team=yellow] anchored eyes run summon item ^ ^ ^0.1 {Item:{id:"minecraft:yellow_wool",Count:1},Age:-32767,PickupDelay:32767,Invulnerable:1,Tags:[bullet,can_falloff,shooter_bullet,yellow]}
execute if entity @s[tag=small_paint] run scoreboard players set size value 1
execute if entity @s[tag=medium_paint] run scoreboard players set size value 2
execute if entity @s[tag=large_paint] run scoreboard players set size value 3
execute if entity @s[tag=squeezer,scores={squeezer=0}] run scoreboard players set size value 3
execute if entity @s[tag=squeezer,scores={squeezer=1..}] run scoreboard players set size value 1
scoreboard players operation range value = @s range
execute if entity @s[nbt={OnGround:0b}] run scoreboard players add range value 1
scoreboard players operation damage value = @s damage
execute if entity @s[tag=squeezer,scores={squeezer=1..}] run scoreboard players set range value 5
execute if entity @s[tag=squeezer,scores={squeezer=1..}] run scoreboard players set damage value 30
scoreboard players set x_zero value 0
execute if score @s x2 matches 0 run scoreboard players set x_zero value 1
scoreboard players set z_zero value 0
execute if score @s z2 matches 0 run scoreboard players set z_zero value 1
scoreboard players operation dx value = @s x2
scoreboard players operation dy value = @s y2
scoreboard players operation dz value = @s z2
execute as @e[type=item,tag=bullet,tag=!timer,limit=1,sort=nearest] run function splatoon:shooters/shoot_as_item
kill @e[type=armor_stand,tag=direction,limit=1,sort=nearest]
scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players add @s[tag=squeezer,scores={squeezer=1..}] ink 1
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players operation @s inkregenlag > @s inkregenlag_main