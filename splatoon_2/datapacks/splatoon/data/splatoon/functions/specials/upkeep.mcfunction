execute if entity @s[tag=inkzooka,tag=blue] run particle block blue_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=inkzooka,tag=yellow] run particle block yellow_wool ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute if entity @s[tag=inkzooka] run particle dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.05 10
execute if entity @s[tag=inkzooka] run tp @s ^ ^ ^1
execute if entity @s[tag=inkzooka] unless block ^ ^ ^1 air run tag @s add dead
execute if entity @s[tag=inkzooka] positioned ^ ^ ^1 unless block ~ ~1 ~ air run tag @s add dead
execute if entity @s[tag=inkzooka,tag=blue] positioned ^ ^ ^1 positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[team=yellow,gamemode=adventure,dx=0,dy=0,dz=0] run tag @s add dead
execute if entity @s[tag=inkzooka,tag=yellow] positioned ^ ^ ^1 positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[team=blue,gamemode=adventure,dx=0,dy=0,dz=0] run tag @s add dead
execute if entity @s[tag=inkzooka,tag=dead] run function splatoon:specials/inkzooka
scoreboard players add @s[tag=inkzooka] lifetime 1
kill @s[tag=inkzooka,scores={lifetime=40..}]
kill @s[tag=inkzooka,tag=dead]
scoreboard players add @s[tag=inkstorm] lifetime 1
execute if entity @s[tag=inkstorm] run function splatoon:specials/inkstorm
kill @s[tag=inkstorm,scores={lifetime=200..}]
scoreboard players add @s[tag=booyah_bomb] lifetime 1
execute if entity @s[tag=booyah_bomb,scores={lifetime=0..19}] run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute if entity @s[tag=booyah_bomb,scores={lifetime=20}] run function splatoon:specials/booyah_bomb1
execute if entity @s[tag=booyah_bomb,scores={lifetime=30}] run function splatoon:specials/booyah_bomb2
execute if entity @s[tag=booyah_bomb,scores={lifetime=40}] run function splatoon:specials/booyah_bomb3
execute if entity @s[tag=booyah_bomb,scores={lifetime=50}] run function splatoon:specials/booyah_bomb4
execute if entity @s[tag=booyah_bomb,scores={lifetime=60}] run function splatoon:specials/booyah_bomb5
kill @s[tag=booyah_bomb,scores={lifetime=60..}]
scoreboard players add @s[tag=killer_wail] lifetime 1
scoreboard players add @s[tag=killer_wail] value 1
scoreboard players set @s[tag=killer_wail] raycast 0
execute if entity @s[tag=killer_wail,scores={value=3..,lifetime=0..40}] run function splatoon:specials/killer_wail_ray_start
execute if entity @s[tag=killer_wail,scores={value=3..,lifetime=41..}] run function splatoon:specials/killer_wail_ray
scoreboard players set @s[tag=killer_wail,scores={value=3..}] value 0
kill @s[tag=killer_wail,scores={lifetime=120..}]
execute if entity @s[tag=blue,tag=marker] run particle block blue_wool ~ ~ ~ 0.2 0.1 0.2 0.1 5 normal @a
execute if entity @s[tag=yellow,tag=marker] run particle block yellow_wool ~ ~ ~ 0.2 0.1 0.2 0.1 5 normal @a
execute if entity @s[tag=marker] run particle firework ~ ~ ~ 0.2 0.1 0.2 0.05 5
execute if entity @s[tag=blue,tag=marker,scores={lifetime=20}] run summon armor_stand ~ ~40 ~ {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[blue,missile,special],Motion:[0.0,-1.0,0.0]}
execute if entity @s[tag=yellow,tag=marker,scores={lifetime=20}] run summon armor_stand ~ ~40 ~ {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[yellow,missile,special],Motion:[0.0,-1.0,0.0]}
scoreboard players add @s[tag=marker] lifetime 1
tag @s[tag=missile,nbt={OnGround:1b}] add landed
execute if entity @s[tag=blue,tag=missile] run particle block blue_wool ~ ~ ~ 0.1 0.1 0.1 0.1 3 normal @a
execute if entity @s[tag=yellow,tag=missile] run particle block yellow_wool ~ ~ ~ 0.1 0.1 0.1 0.1 3 normal @a
execute if entity @s[tag=landed,tag=missile] run function splatoon:specials/tenta_missile
kill @s[tag=landed,tag=missile]
scoreboard players add @s[tag=bubble] lifetime 1
execute if entity @s[tag=bubble] run function splatoon:specials/bubble
kill @s[tag=bubble,scores={lifetime=600..}]