execute if entity @s[tag=blue] at @a[team=yellow,distance=..3] unless score @p bullet_id = @s bullet_id run scoreboard players operation @p health -= @s damage
execute if entity @s[tag=yellow] at @a[team=blue,distance=..3] unless score @p bullet_id = @s bullet_id run scoreboard players operation @p health -= @s damage
execute if entity @s[tag=blue] at @a[team=yellow,distance=..3] run scoreboard players operation @p bullet_id = @s bullet_id
execute if entity @s[tag=yellow] at @a[team=blue,distance=..3] run scoreboard players operation @p bullet_id = @s bullet_id
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..1]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..1]