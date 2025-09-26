data merge entity @s {FallDistance:0}
execute unless block ~ ~ ~ air run kill @s
execute unless block ~0.1 ~ ~ air run tp @s ~-0.1 ~ ~
execute unless block ~-0.1 ~ ~ air run tp @s ~0.1 ~ ~
execute unless block ~ ~ ~0.1 air run tp @s ~ ~ ~-0.1
execute unless block ~ ~ ~-0.1 air run tp @s ~ ~ ~0.1
execute if entity @s[tag=blue,tag=fall] run fill ~-1 ~ ~-1 ~1 ~-1 ~1 blue_wool replace #wool
execute if entity @s[tag=yellow,tag=fall] run fill ~-1 ~ ~-1 ~1 ~-1 ~1 yellow_wool replace #wool
tag @s[nbt={OnGround:1b}] add paint
execute if entity @a[team=yellow,distance=..0.3] run tag @s add paint
execute if entity @a[team=blue,distance=..0.3] run tag @s add paint
execute if entity @s[tag=paint,tag=blue,tag=dot] run fill ~ ~-1 ~ ~ ~ ~ blue_wool replace #wool
execute if entity @s[tag=paint,tag=yellow,tag=dot] run fill ~ ~-1 ~ ~ ~ ~ yellow_wool replace #wool
execute if entity @s[tag=paint,tag=blue,tag=small] run function splatoon:paint/small_blue
execute if entity @s[tag=paint,tag=blue,tag=medium] run function splatoon:paint/medium_blue
execute if entity @s[tag=paint,tag=blue,tag=large] run function splatoon:paint/large_blue
execute if entity @s[tag=paint,tag=blue,tag=small_bomb] run function splatoon:paint/small_blue_bomb
execute if entity @s[tag=paint,tag=blue,tag=bomb] run function splatoon:paint/blue_bomb
execute if entity @s[tag=paint,tag=blue,tag=x] run function splatoon:paint/blue_x
execute if entity @s[tag=paint,tag=blue,tag=z] run function splatoon:paint/blue_z
execute if entity @s[tag=paint,tag=blue,tag=x_long] run function splatoon:paint/long_blue_x
execute if entity @s[tag=paint,tag=blue,tag=z_long] run function splatoon:paint/long_blue_z
execute if entity @s[tag=paint,tag=blue,tag=dp_long] run function splatoon:paint/long_blue_dp
execute if entity @s[tag=paint,tag=blue,tag=dn_long] run function splatoon:paint/long_blue_dn
execute if entity @s[tag=paint,tag=blue,tag=x_large] run function splatoon:paint/large_blue_x
execute if entity @s[tag=paint,tag=blue,tag=z_large] run function splatoon:paint/large_blue_z
execute if entity @s[tag=paint,tag=yellow,tag=small] run function splatoon:paint/small_yellow
execute if entity @s[tag=paint,tag=yellow,tag=medium] run function splatoon:paint/medium_yellow
execute if entity @s[tag=paint,tag=yellow,tag=large] run function splatoon:paint/large_yellow
execute if entity @s[tag=paint,tag=yellow,tag=small_bomb] run function splatoon:paint/small_yellow_bomb
execute if entity @s[tag=paint,tag=yellow,tag=bomb] run function splatoon:paint/yellow_bomb
execute if entity @s[tag=paint,tag=yellow,tag=x] run function splatoon:paint/yellow_x
execute if entity @s[tag=paint,tag=yellow,tag=z] run function splatoon:paint/yellow_z
execute if entity @s[tag=paint,tag=yellow,tag=x_long] run function splatoon:paint/long_yellow_x
execute if entity @s[tag=paint,tag=yellow,tag=z_long] run function splatoon:paint/long_yellow_z
execute if entity @s[tag=paint,tag=yellow,tag=dp_long] run function splatoon:paint/long_yellow_dp
execute if entity @s[tag=paint,tag=yellow,tag=dn_long] run function splatoon:paint/long_yellow_dn
execute if entity @s[tag=paint,tag=yellow,tag=x_large] run function splatoon:paint/large_yellow_x
execute if entity @s[tag=paint,tag=yellow,tag=z_large] run function splatoon:paint/large_yellow_z
execute if entity @s[tag=paint,tag=damage] run function splatoon:damage_droplet
kill @s[tag=paint]