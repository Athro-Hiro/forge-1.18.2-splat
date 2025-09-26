execute as @a run scoreboard players operation @s health_old = @s health
function splatoon:shooters/main
function splatoon:blasters/main
function splatoon:rollers/main
function splatoon:sloshers/main
function splatoon:splatlings/main
function splatoon:nozzlenoses/main
function splatoon:dualies/main
function splatoon:brellas/main
function splatoon:bows/main
function splatoon:subs/main
execute if score map_id value matches 18 run function splatoon:cannons
execute if score map_id value matches 23 run function splatoon:cannons
function splatoon:specials/main
function splatoon:movement
function splatoon:chargers/main
execute if score gamemode_id value matches 3 run function splatoon:clam_blitz/main
execute if score gamemode_id value matches 4 run function splatoon:splat_zones/boundaries
scoreboard players set lead value 0
execute if score gamemode_id value matches 2 if score Blue score > Yellow score run scoreboard players set lead value 1
execute if score gamemode_id value matches 2 if score Blue score < Yellow score run scoreboard players set lead value 2
execute as @a[gamemode=adventure,tag=ultra_stamp,tag=noitems] at @s if block ~ ~ ~ water run scoreboard players set @s specialactive 0
execute as @a[gamemode=adventure,tag=ultra_stamp,tag=noitems] at @s if block ~-0.3 ~ ~-0.3 water run scoreboard players set @s specialactive 0
execute as @a[gamemode=adventure,tag=ultra_stamp,tag=noitems] at @s if block ~0.3 ~ ~-0.3 water run scoreboard players set @s specialactive 0
execute as @a[gamemode=adventure,tag=ultra_stamp,tag=noitems] at @s if block ~-0.3 ~ ~0.3 water run scoreboard players set @s specialactive 0
execute as @a[gamemode=adventure,tag=ultra_stamp,tag=noitems] at @s if block ~0.3 ~ ~0.3 water run scoreboard players set @s specialactive 0
execute as @a[gamemode=adventure,nbt={OnGround:1b},tag=ultra_stamp,tag=noitems] at @s if block ~ ~-1 ~ barrier run scoreboard players set @s specialactive 0
execute unless score lead value matches 1 as @a[team=blue,scores={health=..99}] at @s if block ~ ~-1 ~ blue_stained_glass run scoreboard players set @s health 100
execute unless score lead value matches 2 as @a[team=yellow,scores={health=..99}] at @s if block ~ ~-1 ~ yellow_stained_glass run scoreboard players set @s health 100
execute as @a[team=blue] at @s if block ~ ~-1 ~ blue_stained_glass run tag @s remove has_clam
execute as @a[team=yellow] at @s if block ~ ~-1 ~ yellow_stained_glass run tag @s remove has_clam
scoreboard players set @a[scores={respawndelay=1..}] health 100
scoreboard players set @a[scores={specialactive=1..,health=..99},tag=kraken] health 100
scoreboard players set @a[tag=ultra_stamp,tag=noitems,scores={health=..99}] health 100
scoreboard players set @a[scores={ink=..0}] ink 0
execute as @a[scores={cooldown=0,main_charge=0}] run attribute @s minecraft:generic.movement_speed modifier remove 1-1-1-1-1
execute as @a[scores={cooldown=1..}] run attribute @s minecraft:generic.movement_speed modifier add 1-1-1-1-1 shoot -0.02 add
execute as @a[scores={main_charge=1..}] run attribute @s minecraft:generic.movement_speed modifier add 1-1-1-1-1 shoot -0.02 add
tag @a remove compass
tag @a[nbt={SelectedItem:{id:"minecraft:compass"}},gamemode=adventure] add compass
execute if score minutes value matches 0.. if score seconds value matches 10.. run title @a[tag=!compass,scores={specialtimer=1..,respawndelay=..0,specialactive=0}] actionbar ["",{"text":"Health: ","color":"black"},{"score":{"name":"*","objective":"health"},"color":"red"},{"text":" || Ink: ","color":"black"},{"score":{"name":"*","objective":"ink"},"color":"red"},{"text":" || Special ready in: ","color":"black"},{"score":{"name":"*","objective":"specialtimer"},"color":"red"},{"text":" || ","color":"black"},{"score":{"name":"minutes","objective":"value"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"seconds","objective":"value"},"color":"red"}]
execute if score minutes value matches 0.. if score seconds value matches 10.. run title @a[tag=!compass,scores={specialactive=1..,respawndelay=..0}] actionbar ["",{"text":"Health: ","color":"black"},{"score":{"name":"*","objective":"health"},"color":"red"},{"text":" || Ink: ","color":"black"},{"score":{"name":"*","objective":"ink"},"color":"red"},{"text":" || Special active || ","color":"black"},{"score":{"name":"minutes","objective":"value"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"seconds","objective":"value"},"color":"red"}]
execute if score minutes value matches 0.. if score seconds value matches 10.. run title @a[tag=!compass,scores={specialtimer=..0,respawndelay=..0}] actionbar ["",{"text":"Health: ","color":"black"},{"score":{"name":"*","objective":"health"},"color":"red"},{"text":" || Ink: ","color":"black"},{"score":{"name":"*","objective":"ink"},"color":"red"},{"text":" || Special ready! || ","color":"black"},{"score":{"name":"minutes","objective":"value"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"seconds","objective":"value"},"color":"red"}]
execute if score minutes value matches 0.. if score seconds value matches 10.. run title @a[tag=!compass,scores={respawndelay=1..}] actionbar ["",{"text":"Respawning in: ","color":"black"},{"score":{"name":"*","objective":"respawndelay"},"color":"red"},{"text":" || ","color":"black"},{"score":{"name":"minutes","objective":"value"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"seconds","objective":"value"},"color":"red"}]
execute if score minutes value matches 0.. if score seconds value matches ..9 run title @a[tag=!compass,scores={specialtimer=1..,respawndelay=..0,specialactive=0}] actionbar ["",{"text":"Health: ","color":"black"},{"score":{"name":"*","objective":"health"},"color":"red"},{"text":" || Ink: ","color":"black"},{"score":{"name":"*","objective":"ink"},"color":"red"},{"text":" || Special ready in: ","color":"black"},{"score":{"name":"*","objective":"specialtimer"},"color":"red"},{"text":" || ","color":"black"},{"score":{"name":"minutes","objective":"value"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"seconds","objective":"value"},"color":"red"}]
execute if score minutes value matches 0.. if score seconds value matches ..9 run title @a[tag=!compass,scores={specialactive=1..,respawndelay=..0}] actionbar ["",{"text":"Health: ","color":"black"},{"score":{"name":"*","objective":"health"},"color":"red"},{"text":" || Ink: ","color":"black"},{"score":{"name":"*","objective":"ink"},"color":"red"},{"text":" || Special active || ","color":"black"},{"score":{"name":"minutes","objective":"value"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"seconds","objective":"value"},"color":"red"}]
execute if score minutes value matches 0.. if score seconds value matches ..9 run title @a[tag=!compass,scores={specialtimer=..0,respawndelay=..0}] actionbar ["",{"text":"Health: ","color":"black"},{"score":{"name":"*","objective":"health"},"color":"red"},{"text":" || Ink: ","color":"black"},{"score":{"name":"*","objective":"ink"},"color":"red"},{"text":" || Special ready! || ","color":"black"},{"score":{"name":"minutes","objective":"value"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"seconds","objective":"value"},"color":"red"}]
execute if score minutes value matches 0.. if score seconds value matches ..9 run title @a[tag=!compass,scores={respawndelay=1..}] actionbar ["",{"text":"Respawning in: ","color":"black"},{"score":{"name":"*","objective":"respawndelay"},"color":"red"},{"text":" || ","color":"black"},{"score":{"name":"minutes","objective":"value"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"seconds","objective":"value"},"color":"red"}]
execute unless score minutes value matches 0.. run title @a[tag=!compass,scores={specialtimer=1..,respawndelay=..0,specialactive=0}] actionbar ["",{"text":"Health: ","color":"black"},{"score":{"name":"*","objective":"health"},"color":"red"},{"text":" || Ink: ","color":"black"},{"score":{"name":"*","objective":"ink"},"color":"red"},{"text":" || Special ready in: ","color":"black"},{"score":{"name":"*","objective":"specialtimer"},"color":"red"},{"text":" || ","color":"black"},{"text":"Overtime!","color":"red"}]
execute unless score minutes value matches 0.. run title @a[tag=!compass,scores={specialactive=1..,respawndelay=..0}] actionbar ["",{"text":"Health: ","color":"black"},{"score":{"name":"*","objective":"health"},"color":"red"},{"text":" || Ink: ","color":"black"},{"score":{"name":"*","objective":"ink"},"color":"red"},{"text":" || Special active || ","color":"black"},{"text":"Overtime!","color":"red"}]
execute unless score minutes value matches 0.. run title @a[tag=!compass,scores={specialtimer=..0,respawndelay=..0}] actionbar ["",{"text":"Health: ","color":"black"},{"score":{"name":"*","objective":"health"},"color":"red"},{"text":" || Ink: ","color":"black"},{"score":{"name":"*","objective":"ink"},"color":"red"},{"text":" || Special ready! || ","color":"black"},{"text":"Overtime!","color":"red"}]
execute unless score minutes value matches 0.. run title @a[tag=!compass,scores={respawndelay=1..}] actionbar ["",{"text":"Respawning in: ","color":"black"},{"score":{"name":"*","objective":"respawndelay"},"color":"red"},{"text":" || ","color":"black"},{"text":"Overtime!","color":"red"}]
scoreboard players set blue_team_alive value 0
scoreboard players set yellow_team_alive value 0
execute as @a[team=blue,gamemode=adventure] run scoreboard players add blue_team_alive value 1
execute as @a[team=yellow,gamemode=adventure] run scoreboard players add yellow_team_alive value 1
title @a[tag=compass] actionbar ["",{"text":"Blue: ","color":"black"},{"score":{"name":"blue_team_alive","objective":"value"},"color":"red"},{"text":" || Yellow: ","color":"black"},{"score":{"name":"yellow_team_alive","objective":"value"},"color":"red"}]
title @a[team=] actionbar ["",{"text":"Blue: ","color":"black"},{"score":{"name":"blue_team_alive","objective":"value"},"color":"red"},{"text":" || Yellow: ","color":"black"},{"score":{"name":"yellow_team_alive","objective":"value"},"color":"red"}]
execute as @a[scores={health=..0,respawndelay=-1}] at @s run function splatoon:death
execute as @a[scores={respawndelay=0},team=!] at @s run function splatoon:respawn
execute as @e[type=!player,tag=!random] at @s run function splatoon:upkeep_main
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ water run scoreboard players set @s health 0
execute as @a[gamemode=adventure] at @s if block ~-0.3 ~ ~-0.3 water run scoreboard players set @s health 0
execute as @a[gamemode=adventure] at @s if block ~0.3 ~ ~-0.3 water run scoreboard players set @s health 0
execute as @a[gamemode=adventure] at @s if block ~-0.3 ~ ~0.3 water run scoreboard players set @s health 0
execute as @a[gamemode=adventure] at @s if block ~0.3 ~ ~0.3 water run scoreboard players set @s health 0
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ barrier run scoreboard players set @s health 0
execute as @a[scores={health=..99}] run scoreboard players operation @s health_old -= @s health
execute as @a[scores={health=..99,health_old=10..}] at @s run playsound minecraft:entity.player.hurt player @a
effect give @a[scores={health=..99,health_old=10..}] instant_damage
scoreboard players set @a[scores={health_old=10..}] squidtimer 0
gamemode spectator @a[team=]
scoreboard players add timer value 1
execute if score timer value matches 20 run function splatoon:second
execute if score timer value matches 20 run scoreboard players set timer value 0