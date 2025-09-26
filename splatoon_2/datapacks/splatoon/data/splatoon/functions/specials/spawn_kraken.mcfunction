summon squid ~ ~ ~ {Silent:1,Invulnerable:1,Tags:[kraken],NoGravity:1}
scoreboard players operation @e[type=squid,tag=kraken,tag=!timer,limit=1,sort=nearest] playerid = @s playerid
tag @e[type=squid,tag=kraken] add timer