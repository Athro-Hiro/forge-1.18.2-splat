tag @s[type=item,tag=splat_bomb,tag=blue] add dead
tag @s[type=item,tag=burst_bomb,tag=blue] add dead
tag @s[type=item,tag=fizzy_bomb,tag=blue] add dead
tag @s[type=item,tag=torpedo,tag=blue] add dead
tag @s[type=item,tag=suction_bomb,tag=blue] add dead
tag @s[type=item,tag=stamp,tag=blue] add dead
scoreboard players set @s[type=item,tag=fizzy_bomb,tag=blue] shots 1
execute as @s[type=item,tag=suction_bomb_landed,tag=blue] at @s run function splatoon:subs/suction_bomb
execute as @s[type=armor_stand,tag=seeker,tag=blue] at @s run function splatoon:subs/seeker
execute as @s[type=armor_stand,tag=inkzooka,tag=blue] at @s run function splatoon:specials/inkzooka
execute if entity @s[type=item,tag=stamp,tag=blue] run scoreboard players add wall_health value 200
execute if entity @s[type=item,tag=bullet,tag=blue] run scoreboard players add wall_health value 10
execute if entity @s[type=item,tag=splat_bomb,tag=blue] run scoreboard players add wall_health value 100
execute if entity @s[type=item,tag=burst_bomb,tag=blue] run scoreboard players add wall_health value 50
execute if entity @s[type=item,tag=fizzy_bomb,tag=blue] run scoreboard players add wall_health value 80
execute if entity @s[type=item,tag=torpedo,tag=blue] run scoreboard players add wall_health value 50
execute if entity @s[type=item,tag=suction_bomb_landed,tag=blue] run scoreboard players add wall_health value 100
execute if entity @s[type=arrow,tag=blue] run scoreboard players add wall_health value 100
execute if entity @s[type=armor_stand,tag=torpedo,tag=blue] run scoreboard players add wall_health value 50
execute if entity @s[type=armor_stand,tag=inkzooka,tag=blue] run scoreboard players add wall_health value 100
execute if entity @s[type=armor_stand,tag=seeker,tag=blue] run scoreboard players add wall_health value 100
kill @s[type=item,tag=blue,tag=!dead,tag=!booyah_bomb,tag=!inkstorm,tag=!point_sensor,tag=!toxic_mist,tag=!sprinkler]
kill @s[type=armor_stand,tag=blue,tag=!booyah_bomb,tag=!inkstorm,tag=!point_sensor,tag=!toxic_mist,tag=!ink_mine,tag=!sprinkler,tag=!squid_beakon]
kill @s[type=arrow,tag=blue]
scoreboard players remove @s[team=blue] health 50