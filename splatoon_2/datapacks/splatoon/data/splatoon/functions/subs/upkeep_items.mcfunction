execute if entity @s[tag=blue] run particle block blue_wool ~ ~ ~ 0.1 0.1 0.1 0.1 3
execute if entity @s[tag=yellow] run particle block yellow_wool ~ ~ ~ 0.1 0.1 0.1 0.1 3
execute if entity @s[tag=suction_bomb_landed,tag=blue] run particle block blue_wool ~ ~ ~ 0.1 0.1 0.1 0.1 3
execute if entity @s[tag=suction_bomb_landed,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.1 0.1 0.1 0.1 3
execute store result score @s x run data get entity @s Motion[0] 1000000
execute store result score @s y run data get entity @s Motion[1] 1000000
execute store result score @s z run data get entity @s Motion[2] 1000000
tag @s[tag=impact,tag=!x_zero,scores={x=0}] add dead
tag @s[tag=impact,tag=!z_zero,scores={z=0}] add dead
tag @s[nbt={OnGround:1b},tag=impact] add dead
tag @s[nbt={OnGround:1b},tag=autobomb] add dead
execute if entity @s[tag=impact] unless block ~ ~0.3 ~ air unless block ~ ~0.3 ~ iron_trapdoor run tag @s add dead
execute if entity @s[tag=impact,tag=blue] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[team=yellow,gamemode=adventure,dx=0,dy=0,dz=0] run tag @s add dead
execute if entity @s[tag=impact,tag=yellow] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[team=blue,gamemode=adventure,dx=0,dy=0,dz=0] run tag @s add dead
scoreboard players add @s[tag=splat_bomb,nbt={OnGround:1b}] lifetime 1
tag @s[tag=splat_bomb,scores={lifetime=30..}] add dead
scoreboard players add @s[tag=fizzy_bomb,nbt={OnGround:1b}] lifetime 1
tag @s[tag=fizzy_bomb,scores={lifetime=20..}] add dead
execute if entity @s[tag=dead] run function splatoon:subs/impact
kill @s[tag=dead]
scoreboard players add @s[tag=suction_bomb_landed] lifetime 1
execute if entity @s[tag=suction_bomb_landed,scores={lifetime=40..}] at @s run function splatoon:subs/suction_bomb
kill @s[tag=suction_bomb_landed,scores={lifetime=40..}]
execute if entity @s[tag=torpedo,tag=blue] if entity @a[team=yellow,distance=..10,gamemode=adventure] run function splatoon:subs/torpedo_trigger
execute if entity @s[tag=torpedo,tag=yellow] if entity @a[team=blue,distance=..10,gamemode=adventure] run function splatoon:subs/torpedo_trigger
execute if entity @s[tag=fizzy_bomb,tag=blue,tag=charged,tag=x,nbt={OnGround:0b}] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=fizzy_bomb,tag=blue,tag=charged,tag=z,nbt={OnGround:0b}] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,z],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=fizzy_bomb,tag=yellow,tag=charged,tag=x,nbt={OnGround:0b}] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,x],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=fizzy_bomb,tag=yellow,tag=charged,tag=z,nbt={OnGround:0b}] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,z],Motion:[0.0,-1.0,0.0]}