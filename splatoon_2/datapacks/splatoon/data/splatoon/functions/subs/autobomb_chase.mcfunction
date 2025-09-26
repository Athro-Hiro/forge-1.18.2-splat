execute as @a if score @s playerid = @e[type=armor_stand,tag=autobomb,limit=1,sort=nearest] playerid run tp @e[type=armor_stand,tag=autobomb,limit=1,sort=nearest] ~ ~ ~ facing entity @s feet
execute rotated ~ 0 if block ^ ^ ^0.3 air run tp @s ^ ^ ^0.2
execute rotated ~ 0 unless block ^ ^ ^0.3 air if block ^ ^1 ^0.3 air run tp @s ^ ^1 ^0.2
execute at @a[distance=..1.5] if score @p playerid = @s playerid run scoreboard players set @s lifetime 100