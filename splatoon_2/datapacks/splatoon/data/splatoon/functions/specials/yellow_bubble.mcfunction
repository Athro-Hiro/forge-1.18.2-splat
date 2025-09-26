tag @s[type=item,tag=splat_bomb] add dead
tag @s[type=item,tag=burst_bomb] add dead
tag @s[type=item,tag=fizzy_bomb] add dead
tag @s[type=item,tag=torpedo] add dead
tag @s[type=item,tag=suction_bomb] add dead
tag @s[type=item,tag=stamp] add dead
tag @s[type=item,tag=bullet] add dead
scoreboard players set @s[type=item,tag=fizzy_bomb] shots 1
execute as @s[type=item,tag=suction_bomb_landed] at @s run function splatoon:subs/suction_bomb
execute as @s[type=armor_stand,tag=seeker] at @s run function splatoon:subs/seeker
execute as @s[type=armor_stand,tag=inkzooka] at @s run function splatoon:specials/inkzooka
execute if entity @s[type=item,tag=stamp,tag=yellow] run scoreboard players add bubble_health value 10
execute if entity @s[type=item,tag=bullet,tag=yellow] run scoreboard players add bubble_health value 1
execute if entity @s[type=item,tag=blaster_bullet,tag=yellow] run scoreboard players add bubble_health value 2
execute if entity @s[type=item,tag=slosher_bullet,tag=yellow] run scoreboard players add bubble_health value 2
execute if entity @s[type=item,tag=splat_bomb,tag=yellow] run scoreboard players add bubble_health value 7
execute if entity @s[type=item,tag=burst_bomb,tag=yellow] run scoreboard players add bubble_health value 3
execute if entity @s[type=item,tag=fizzy_bomb,tag=yellow] run scoreboard players add bubble_health value 7
execute if entity @s[type=item,tag=torpedo,tag=yellow] run scoreboard players add bubble_health value 5
execute if entity @s[type=item,tag=suction_bomb_landed,tag=yellow] run scoreboard players add bubble_health value 7
execute if entity @s[type=arrow,tag=yellow] run scoreboard players add bubble_health value 7
execute if entity @s[type=armor_stand,tag=torpedo,tag=yellow] run scoreboard players add bubble_health value 5
execute if entity @s[type=armor_stand,tag=inkzooka,tag=yellow] run scoreboard players add bubble_health value 7
execute if entity @s[type=armor_stand,tag=seeker,tag=yellow] run scoreboard players add bubble_health value 7
execute if entity @s[type=item,tag=stamp,tag=blue] run scoreboard players remove bubble_health value 10
execute if entity @s[type=item,tag=bullet,tag=blue] run scoreboard players remove bubble_health value 1
execute if entity @s[type=item,tag=blaster_bullet,tag=blue] run scoreboard players remove bubble_health value 2
execute if entity @s[type=item,tag=slosher_bullet,tag=blue] run scoreboard players remove bubble_health value 2
execute if entity @s[type=item,tag=splat_bomb,tag=blue] run scoreboard players remove bubble_health value 7
execute if entity @s[type=item,tag=burst_bomb,tag=blue] run scoreboard players remove bubble_health value 3
execute if entity @s[type=item,tag=fizzy_bomb,tag=blue] run scoreboard players remove bubble_health value 7
execute if entity @s[type=item,tag=torpedo,tag=blue] run scoreboard players remove bubble_health value 5
execute if entity @s[type=item,tag=suction_bomb_landed,tag=blue] run scoreboard players remove bubble_health value 7
execute if entity @s[type=arrow,tag=blue] run scoreboard players remove bubble_health value 7
execute if entity @s[type=armor_stand,tag=torpedo,tag=blue] run scoreboard players remove bubble_health value 5
execute if entity @s[type=armor_stand,tag=inkzooka,tag=blue] run scoreboard players remove bubble_health value 7
execute if entity @s[type=armor_stand,tag=seeker,tag=blue] run scoreboard players remove bubble_health value 7
kill @s[type=item,tag=!dead,tag=!booyah_bomb,tag=!inkstorm,tag=!point_sensor,tag=!toxic_mist,tag=!sprinkler]
kill @s[type=armor_stand,tag=!booyah_bomb,tag=!inkstorm,tag=!point_sensor,tag=!toxic_mist,tag=!ink_mine,tag=!sprinkler,tag=!squid_beakon,tag=!bubble,tag=!splash_wall]
kill @s[type=arrow]
scoreboard players remove @s[team=blue] health 1