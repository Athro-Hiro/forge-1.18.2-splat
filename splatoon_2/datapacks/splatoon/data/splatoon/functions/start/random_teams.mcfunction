tellraw @a {"text":"Generating random teams..."}
team leave @a
scoreboard players set @r[scores={playerid=0}] playerid 1
scoreboard players set @r[scores={playerid=0}] playerid 5
scoreboard players set @r[scores={playerid=0}] playerid 2
scoreboard players set @r[scores={playerid=0}] playerid 6
scoreboard players set @r[scores={playerid=0}] playerid 3
scoreboard players set @r[scores={playerid=0}] playerid 7
scoreboard players set @r[scores={playerid=0}] playerid 4
scoreboard players set @r[scores={playerid=0}] playerid 8
team join blue @a[scores={playerid=1..4}]
team join yellow @a[scores={playerid=5..8}]