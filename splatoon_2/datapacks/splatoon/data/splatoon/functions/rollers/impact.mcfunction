execute if entity @s[tag=blue,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 at @a[team=yellow,dx=0,dy=0,dz=0] unless score @p bullet_id = @s bullet_id run scoreboard players operation @p health -= @s damage
execute if entity @s[tag=yellow,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 at @a[team=blue,dx=0,dy=0,dz=0] unless score @p bullet_id = @s bullet_id run scoreboard players operation @p health -= @s damage
execute if entity @s[tag=blue,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 at @a[team=yellow,dx=0,dy=0,dz=0] run scoreboard players operation @p bullet_id = @s bullet_id
execute if entity @s[tag=yellow,tag=damage] positioned ~-0.5 ~-0.5 ~-0.5 at @a[team=yellow,dx=0,dy=0,dz=0] run scoreboard players operation @p bullet_id = @s bullet_id
execute if entity @s[tag=blue,tag=horizontal] run function splatoon:paint/small_blue
execute if entity @s[tag=yellow,tag=horizontal] run function splatoon:paint/small_yellow
execute if entity @s[tag=blue,tag=vertical] positioned ~ ~1 ~ run function splatoon:paint/blue_wall
execute if entity @s[tag=yellow,tag=vertical] positioned ~ ~1 ~ run function splatoon:paint/yellow_wall
execute if entity @s[tag=blue] run kill @e[type=armor_stand,tag=destructible,tag=yellow,distance=..1]
execute if entity @s[tag=yellow] run kill @e[type=armor_stand,tag=destructible,tag=blue,distance=..1]