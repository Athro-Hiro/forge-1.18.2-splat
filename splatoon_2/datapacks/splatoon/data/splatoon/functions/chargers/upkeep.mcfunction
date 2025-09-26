tag @s[nbt={inGround:1b}] add landed
execute if entity @s[tag=blue,tag=landed,tag=!blast] positioned ~ ~1 ~ run function splatoon:paint/blue_wall
execute if entity @s[tag=yellow,tag=landed,tag=!blast] positioned ~ ~1 ~ run function splatoon:paint/yellow_wall
execute if entity @s[tag=landed,tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..1]
execute if entity @s[tag=landed,tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..1]
execute if entity @s[tag=landed,tag=blast] run function splatoon:chargers/blast
kill @s[tag=landed]
scoreboard players add @s lifetime 1
execute if score @s lifetime >= @s range run kill @s
execute if entity @s[tag=blue,tag=x,tag=!uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,x_large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=z,tag=!uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,z_large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=x,tag=!uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,x_large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=z,tag=!uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,z_large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=!uncharged,tag=goo_tuber] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,medium],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=!uncharged,tag=goo_tuber] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,medium],Motion:[0.0,-1.0,0.0]}
execute if score @s lifetime >= @s range run kill @s
execute if entity @s[tag=blue,tag=x,tag=uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,x_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=z,tag=uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,z_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=x,tag=uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,x_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=z,tag=uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,z_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=dp,tag=uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,dp_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=dn,tag=uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,dn_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=dp,tag=uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,dp_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=dn,tag=uncharged,tag=!goo_tuber,tag=!bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,dn_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=x,tag=uncharged,tag=goo_tuber] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,x_large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=z,tag=uncharged,tag=goo_tuber] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,z_large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=x,tag=uncharged,tag=goo_tuber] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,x_large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=z,tag=uncharged,tag=goo_tuber] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,z_large],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,dot],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,dot],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=x,tag=!uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,x_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=z,tag=!uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,z_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=dp,tag=!uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,dp_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=blue,tag=dn,tag=!uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:blue_wool",Count:1},Tags:[droplet,blue,dn_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=x,tag=!uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,x_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=z,tag=!uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,z_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=dp,tag=!uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,dp_long],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=dn,tag=!uncharged,tag=bow] run summon item ~ ~ ~ {Invulnerable:1,Age:-32767,PickupDelay:32767,Item:{id:"minecraft:yellow_wool",Count:1},Tags:[droplet,yellow,dn_long],Motion:[0.0,-1.0,0.0]}