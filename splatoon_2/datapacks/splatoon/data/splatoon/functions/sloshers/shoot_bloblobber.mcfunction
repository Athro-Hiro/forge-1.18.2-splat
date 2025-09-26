execute if entity @s[team=blue] run summon item ~ ~ ~ {Tags:[bloblobber,slosher_bullet,bullet,blue],Invulnerable:1,NoGravity:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1}}
execute if entity @s[team=yellow] run summon item ~ ~ ~ {Tags:[bloblobber,slosher_bullet,bullet,yellow],Invulnerable:1,NoGravity:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1}}
execute store result score rotation value run data get entity @s Rotation[0] 1000000
scoreboard players operation range value = @s range
scoreboard players operation damage value = @s damage
execute as @e[type=item,tag=bloblobber,tag=!timer,limit=1,sort=nearest] run function splatoon:sloshers/shoot_bloblobber_as_item
scoreboard players remove @s shots 1
scoreboard players set @s autoshoot 0