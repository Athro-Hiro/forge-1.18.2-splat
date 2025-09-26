tag @s[type=item,tag=splat_bomb,tag=yellow] add dead
tag @s[type=item,tag=burst_bomb,tag=yellow] add dead
tag @s[type=item,tag=fizzy_bomb,tag=yellow] add dead
tag @s[type=item,tag=torpedo,tag=yellow] add dead
tag @s[type=item,tag=suction_bomb,tag=yellow] add dead
tag @s[type=item,tag=stamp,tag=yellow] add dead
scoreboard players set @s[type=item,tag=fizzy_bomb,tag=yellow] shots 1
execute as @s[type=item,tag=suction_bomb_landed,tag=yellow] at @s run function splatoon:subs/suction_bomb
execute as @s[type=armor_stand,tag=seeker,tag=yellow] at @s run function splatoon:subs/seeker
execute as @s[type=armor_stand,tag=inkzooka,tag=yellow] at @s run function splatoon:specials/inkzooka
execute if entity @s[type=item,tag=stamp,tag=yellow] run scoreboard players add wall_health value 200
execute if entity @s[type=item,tag=bullet,tag=yellow] run scoreboard players add wall_health value 10
execute if entity @s[type=item,tag=splat_bomb,tag=yellow] run scoreboard players add wall_health value 100
execute if entity @s[type=item,tag=burst_bomb,tag=yellow] run scoreboard players add wall_health value 50
execute if entity @s[type=item,tag=fizzy_bomb,tag=yellow] run scoreboard players add wall_health value 80
execute if entity @s[type=item,tag=torpedo,tag=yellow] run scoreboard players add wall_health value 50
execute if entity @s[type=item,tag=suction_bomb_landed,tag=yellow] run scoreboard players add wall_health value 100
execute if entity @s[type=arrow,tag=yellow] run scoreboard players add wall_health value 100
execute if entity @s[type=armor_stand,tag=torpedo,tag=yellow] run scoreboard players add wall_health value 50
execute if entity @s[type=armor_stand,tag=inkzooka,tag=yellow] run scoreboard players add wall_health value 100
execute if entity @s[type=armor_stand,tag=seeker,tag=yellow] run scoreboard players add wall_health value 100
kill @s[type=item,tag=yellow,tag=!dead,tag=!booyah_bomb,tag=!inkstorm,tag=!point_sensor,tag=!toxic_mist,tag=!sprinkler]
kill @s[type=armor_stand,tag=yellow,tag=!booyah_bomb,tag=!inkstorm,tag=!point_sensor,tag=!toxic_mist,tag=!ink_mine,tag=!sprinkler,tag=!squid_beakon]
kill @s[type=arrow,tag=yellow]
scoreboard players remove @s[team=yellow] health 50