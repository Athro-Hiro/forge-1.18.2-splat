execute if entity @s[tag=blue,tag=splat_bomb] run scoreboard players remove @a[team=yellow,distance=..3] health 60
execute if entity @s[tag=yellow,tag=splat_bomb] run scoreboard players remove @a[team=blue,distance=..3] health 60
execute if entity @s[tag=blue,tag=splat_bomb] run scoreboard players remove @a[team=yellow,distance=..4] health 60
execute if entity @s[tag=yellow,tag=splat_bomb] run scoreboard players remove @a[team=blue,distance=..4] health 60
execute if entity @s[tag=blue,tag=splat_bomb] run function splatoon:paint/blue_bomb
execute if entity @s[tag=yellow,tag=splat_bomb] run function splatoon:paint/yellow_bomb
execute if entity @s[tag=blue,tag=splat_bomb] run particle block blue_wool ~ ~ ~ 2 2 2 0.1 200 normal @a
execute if entity @s[tag=yellow,tag=splat_bomb] run particle block yellow_wool ~ ~ ~ 2 2 2 0.1 200 normal @a
execute if entity @s[tag=splat_bomb] run playsound minecraft:entity.generic.explode player @a
execute if entity @s[tag=blue,tag=splat_bomb] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..3]
execute if entity @s[tag=yellow,tag=splat_bomb] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..3]
execute if entity @s[tag=blue,tag=suction_bomb] run summon item ~ ~ ~ {Item:{id:"minecraft:tnt",Count:1},Age:-32767,PickupDelay:32767,NoGravity:1,Invulnerable:1,Tags:[suction_bomb_landed,blue,bomb,timer]}
execute if entity @s[tag=yellow,tag=suction_bomb] run summon item ~ ~ ~ {Item:{id:"minecraft:tnt",Count:1},Age:-32767,PickupDelay:32767,NoGravity:1,Invulnerable:1,Tags:[suction_bomb_landed,yellow,bomb,timer]}
execute if entity @s[tag=blue,tag=burst_bomb] run scoreboard players remove @a[team=yellow,distance=..2] health 30
execute if entity @s[tag=yellow,tag=burst_bomb] run scoreboard players remove @a[team=blue,distance=..2] health 30
execute if entity @s[tag=blue,tag=burst_bomb] run scoreboard players remove @a[team=yellow,distance=..3] health 30
execute if entity @s[tag=yellow,tag=burst_bomb] run scoreboard players remove @a[team=blue,distance=..3] health 30
execute if entity @s[tag=blue,tag=burst_bomb] run function splatoon:paint/small_blue_bomb
execute if entity @s[tag=yellow,tag=burst_bomb] run function splatoon:paint/small_yellow_bomb
execute if entity @s[tag=blue,tag=burst_bomb] run particle block blue_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[tag=yellow,tag=burst_bomb] run particle block yellow_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[tag=blue,tag=burst_bomb] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..3]
execute if entity @s[tag=yellow,tag=burst_bomb] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..3]
execute if entity @s[tag=burst_bomb] run playsound minecraft:entity.generic.explode player @a
execute if entity @s[tag=fizzy_bomb] run function splatoon:subs/fizzy_bomb
execute if entity @s[tag=blue,tag=point_sensor] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,NoGravity:1,Tags:[point_sensor,blue,bomb]}
execute if entity @s[tag=yellow,tag=point_sensor] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,NoGravity:1,Tags:[point_sensor,yellow,bomb]}
execute if entity @s[tag=blue,tag=toxic_mist] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,NoGravity:1,Tags:[toxic_mist,blue,bomb]}
execute if entity @s[tag=yellow,tag=toxic_mist] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,NoGravity:1,Tags:[toxic_mist,yellow,bomb]}
execute if entity @s[tag=torpedo] run function splatoon:subs/torpedo
execute if entity @s[tag=sprinkler] run function splatoon:subs/spawn_sprinkler
execute if entity @s[tag=autobomb] run function splatoon:subs/spawn_autobomb