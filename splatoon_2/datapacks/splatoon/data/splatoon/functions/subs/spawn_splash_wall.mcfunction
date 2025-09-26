execute if entity @s[y_rotation=-180..-135] run summon armor_stand ~ ~2 ~ {Tags:[x,splash_wall,bomb],Small:1,DisabledSlots:7967,Invulnerable:1,Invisible:1,Silent:1,Motion:[0.0,0.0,-0.5]}
execute if entity @s[y_rotation=135..180] run summon armor_stand ~ ~2 ~ {Tags:[x,splash_wall,bomb],Small:1,DisabledSlots:7967,Invulnerable:1,Invisible:1,Silent:1,Motion:[0.0,0.0,-0.5]}
execute if entity @s[y_rotation=-45..45] run summon armor_stand ~ ~2 ~ {Tags:[x,splash_wall,bomb],Small:1,DisabledSlots:7967,Invulnerable:1,Invisible:1,Silent:1,Motion:[0.0,0.0,0.5]}
execute if entity @s[y_rotation=-135..-45] run summon armor_stand ~ ~2 ~ {Tags:[z,splash_wall,bomb],Small:1,DisabledSlots:7967,Invulnerable:1,Invisible:1,Silent:1,Motion:[0.5,0.0,0.0]}
execute if entity @s[y_rotation=45..135] run summon armor_stand ~ ~2 ~ {Tags:[z,splash_wall,bomb],Small:1,DisabledSlots:7967,Invulnerable:1,Invisible:1,Silent:1,Motion:[-0.5,0.0,0.0]}
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=splash_wall,tag=!timer,limit=1,sort=nearest] add blue
execute if entity @s[team=yellow] run tag @e[type=armor_stand,tag=splash_wall,tag=!timer,limit=1,sort=nearest] add yellow
scoreboard players operation @e[type=armor_stand,tag=splash_wall,tag=!timer,limit=1,sort=nearest] playerid = @s playerid
execute as @e[type=armor_stand,tag=splash_wall,tag=timer] if score @s playerid = @p playerid run kill @s
tag @e[type=armor_stand,tag=splash_wall] add timer
scoreboard players operation @s ink -= @s ink_cost_sub
scoreboard players operation @s inkregenlag > @s inkregenlag_sub