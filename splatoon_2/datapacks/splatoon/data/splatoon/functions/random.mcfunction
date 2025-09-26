execute positioned 0 0 0 run scoreboard players operation random value = @e[distance=..10,type=armor_stand,tag=random,limit=1,sort=random] value
scoreboard players set temp value 10
scoreboard players operation random value *= temp value
execute positioned 0 0 0 run scoreboard players operation random value += @e[distance=..10,type=armor_stand,tag=random,limit=1,sort=random] value
scoreboard players add random value 1