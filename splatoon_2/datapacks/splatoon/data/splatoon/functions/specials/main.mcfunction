execute as @a[scores={shoot4=1..}] run scoreboard players operation @s specialtimer = @s special_max
execute as @a[scores={shoot4=1..}] run scoreboard players operation @s ink = @s ink_max
execute as @a[scores={shoot4=1..}] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10 0
execute as @a[scores={shoot4=1..},tag=ink_armor] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Ink Armor"}]
execute as @a[scores={shoot4=1..},tag=echolocator] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Echolocator"}]
execute as @a[scores={shoot4=1..},tag=splat_bomb_launcher] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Splat Bomb Launcher"}]
execute as @a[scores={shoot4=1..},tag=suction_bomb_launcher] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Suction Bomb Launcher"}]
execute as @a[scores={shoot4=1..},tag=seeker_launcher] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Seeker Launcher"}]
execute as @a[scores={shoot4=1..},tag=burst_bomb_launcher] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Burst Bomb Launcher"}]
execute as @a[scores={shoot4=1..},tag=autobomb_launcher] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Autobomb Launcher"}]
execute as @a[scores={shoot4=1..},tag=inkzooka] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Inkzooka"}]
execute as @a[scores={shoot4=1..},tag=booyah_bomb] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Booyah Bomb"}]
execute as @a[scores={shoot4=1..},tag=tenta_missiles] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Tenta Missiles"}]
execute as @a[scores={shoot4=1..},tag=splashdown] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Splashdown"}]
execute as @a[scores={shoot4=1..},tag=killer_wail] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Killer Wail"}]
execute as @a[scores={shoot4=1..},tag=kraken] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Kraken"}]
execute as @a[scores={shoot4=1..},tag=inkstorm] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Inkstorm"}]
execute as @a[scores={shoot4=1..},tag=bubble_blower] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Bubble Blower"}]
execute as @a[scores={shoot4=1..},tag=ultra_stamp] run tellraw @a ["",{"selector":"@s"},{"text":" used","color":"red"},{"text":" Ultra Stamp"}]
execute as @a[tag=noitems,tag=!squid] run function splatoon:specials/items
tag @a[scores={shoot4=1..},tag=bubble_blower] add noitems
scoreboard players set @a[scores={shoot4=1..},tag=bubble_blower] bubbles 3
clear @a[scores={shoot4=1..},tag=bubble_blower]
scoreboard players set @a[tag=bubble_blower,tag=noitems] specialactive 10
execute as @a[scores={shoot5=1..},tag=bubble_blower] at @s run function splatoon:specials/spawn_bubble
scoreboard players set @a[scores={shoot5=1..,bubbles=0},tag=bubble_blower] specialactive 0
tag @a[scores={shoot4=1..},tag=ultra_stamp] add noitems
scoreboard players set @a[scores={shoot4=1..},tag=ultra_stamp] specialactive 110
execute as @a[scores={shoot4=1..},tag=ultra_stamp] run attribute @s minecraft:generic.movement_speed modifier add 69-69-69-69-69 stamp -0.1 add
execute as @a[scores={shoot4=1..},tag=booyah_bomb] run attribute @s minecraft:generic.movement_speed modifier add 69-69-69-69-68 booyah -0.1 add
execute as @a[scores={shoot4=1..},tag=killer_wail] run attribute @s minecraft:generic.movement_speed modifier add 69-69-69-69-68 wail -0.1 add
execute as @a[scores={specialactive=0}] run attribute @s minecraft:generic.movement_speed modifier remove 69-69-69-69-69
clear @a[scores={shoot4=1..},tag=ultra_stamp]
scoreboard players set @a[tag=ultra_stamp,tag=noitems,scores={specialactive=..9}] specialactive 10
execute as @a[scores={shoot3=1..,stamp_cooldown=0},tag=ultra_stamp,tag=noitems] at @s rotated ~ 0 positioned ^ ^ ^2 run function splatoon:specials/ultra_stamp
execute as @a[scores={shoot5=1..},tag=ultra_stamp] at @s run function splatoon:specials/throw_ultra_stamp
scoreboard players set @a[scores={shoot5=1..},tag=ultra_stamp] specialactive 0
scoreboard players set @a[tag=ultra_stamp,tag=noitems] shoot3 0
scoreboard players remove @a[scores={stamp_cooldown=1..}] stamp_cooldown 1
tag @a[scores={shoot4=1..},tag=inkstorm] add noitems
clear @a[scores={shoot4=1..},tag=inkstorm]
scoreboard players set @a[tag=inkstorm,tag=noitems] specialactive 10
execute as @a[scores={shoot5=1..},tag=inkstorm] at @s run function splatoon:specials/spawn_inkstorm
scoreboard players set @a[scores={shoot5=1..},tag=inkstorm] specialactive 200
scoreboard players set @a[scores={shoot4=1..},tag=kraken] specialactive 100
tag @a[scores={shoot4=1..},tag=kraken] add noitems
clear @a[scores={shoot4=1..},tag=kraken]
execute as @a[scores={shoot4=1..},tag=kraken] at @s run function splatoon:specials/spawn_kraken
execute as @a[tag=kraken,scores={specialactive=1..}] at @s run function splatoon:specials/kraken
execute as @a[scores={shoot4=1..},team=blue,tag=ink_armor] run scoreboard players set @a[team=blue,scores={respawndelay=..0}] inkarmor 140
execute as @a[scores={shoot4=1..},team=yellow,tag=ink_armor] run scoreboard players set @a[team=yellow,scores={respawndelay=..0}] inkarmor 140
execute as @a[scores={shoot4=1..},team=blue,tag=ink_armor] run scoreboard players set @a[team=blue,scores={respawndelay=..0}] health 160
execute as @a[scores={shoot4=1..},team=yellow,tag=ink_armor] run scoreboard players set @a[team=yellow,scores={respawndelay=..0}] health 160
scoreboard players remove @a[scores={inkarmor=1..}] inkarmor 1
scoreboard players set @a[scores={inkarmor=0,health=101..}] health 100
scoreboard players set @a[scores={shoot4=1..},tag=ink_armor] specialactive 140
execute as @a[scores={shoot4=1..},team=blue,tag=echolocator] run effect give @a[team=yellow,gamemode=adventure] glowing 10 0
execute as @a[scores={shoot4=1..},team=yellow,tag=echolocator] run effect give @a[team=blue,gamemode=adventure] glowing 10 0
scoreboard players set @a[scores={shoot4=1..},tag=echolocator] specialactive 200
scoreboard players set @a[scores={shoot4=1..},tag=bomb_rush] specialactive 120
clear @a[scores={shoot4=1..},tag=bomb_rush]
tag @a[scores={shoot4=1..},tag=bomb_rush] add noitems
scoreboard players set @a[scores={shoot4=1..},tag=inkzooka] specialactive 160
tag @a[scores={shoot4=1..},tag=inkzooka] add noitems
clear @a[scores={shoot4=1..},tag=inkzooka]
execute as @a[scores={shoot5=1..},tag=inkzooka] at @s run function splatoon:specials/spawn_inkzooka
tag @a[scores={shoot4=1..},tag=booyah_bomb] add noitems
clear @a[scores={shoot4=1..},tag=booyah_bomb]
execute as @a[scores={shoot4=1..},tag=booyah_bomb,team=blue] at @s run scoreboard players set @a[team=blue,distance=0.1..,gamemode=adventure,scores={specialtimer=0..4}] specialtimer 0
execute as @a[scores={shoot4=1..},tag=booyah_bomb,team=blue] at @s run scoreboard players remove @a[team=blue,distance=0.1..,gamemode=adventure,scores={specialtimer=5..}] specialtimer 5
execute as @a[scores={shoot4=1..},tag=booyah_bomb,team=yellow] at @s run scoreboard players set @a[team=yellow,distance=0.1..,gamemode=adventure,scores={specialtimer=0..4}] specialtimer 0
execute as @a[scores={shoot4=1..},tag=booyah_bomb,team=yellow] at @s run scoreboard players remove @a[team=yellow,distance=0.1..,gamemode=adventure,scores={specialtimer=5..}] specialtimer 5
scoreboard players set @a[tag=booyah_bomb,tag=noitems] specialactive 10
execute as @a[scores={shoot5=1..},tag=booyah_bomb] at @s run function splatoon:specials/spawn_booyah_bomb
scoreboard players set @a[scores={shoot5=1..},tag=booyah_bomb] specialactive 100
execute as @a[scores={shoot4=1..},tag=splashdown] at @s run function splatoon:specials/splashdown
scoreboard players set @a[scores={shoot4=1..},tag=tenta_missiles] specialactive 80
execute as @a[scores={shoot4=1..},tag=tenta_missiles,team=blue] run scoreboard players set @a[team=yellow,gamemode=adventure] missile_timer 40
execute as @a[scores={shoot4=1..},tag=tenta_missiles,team=yellow] run scoreboard players set @a[team=blue,gamemode=adventure] missile_timer 40
tag @a[scores={shoot4=1..},tag=killer_wail] add noitems
clear @a[scores={shoot4=1..},tag=killer_wail]
scoreboard players set @a[tag=killer_wail,tag=noitems] specialactive 10
execute as @a[scores={shoot5=1..},tag=killer_wail] at @s run function splatoon:specials/spawn_killer_wail
scoreboard players set @a[scores={shoot5=1..},tag=killer_wail] specialactive 120
tag @a[scores={specialactive=0}] remove noitems
scoreboard players remove @a[scores={specialactive=1..}] specialactive 1
scoreboard players set @a shoot4 0
scoreboard players set @a shoot5 0
tellraw @a[scores={missile_timer=40}] {"text":"You have been targeted by Tenta Missiles!","color":"dark_green"}
execute as @a[scores={missile_timer=40}] at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 0
scoreboard players remove @a[scores={missile_timer=1..}] missile_timer 1
execute at @a[team=blue,scores={missile_timer=30}] run summon armor_stand ~1 ~ ~ {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[yellow,marker,special],Motion:[0.0,-1.0,0.0]}
execute at @a[team=yellow,scores={missile_timer=30}] run summon armor_stand ~1 ~ ~ {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[blue,marker,special],Motion:[0.0,-1.0,0.0]}
execute at @a[team=blue,scores={missile_timer=20}] run summon armor_stand ~ ~ ~1 {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[yellow,marker,special],Motion:[0.0,-1.0,0.0]}
execute at @a[team=yellow,scores={missile_timer=20}] run summon armor_stand ~ ~ ~1 {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[blue,marker,special],Motion:[0.0,-1.0,0.0]}
execute at @a[team=blue,scores={missile_timer=10}] run summon armor_stand ~-1 ~ ~ {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[yellow,marker,special],Motion:[0.0,-1.0,0.0]}
execute at @a[team=yellow,scores={missile_timer=10}] run summon armor_stand ~-1 ~ ~ {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[blue,marker,special],Motion:[0.0,-1.0,0.0]}
execute at @a[team=blue,scores={missile_timer=1}] run summon armor_stand ~ ~ ~-1 {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[yellow,marker,special],Motion:[0.0,-1.0,0.0]}
execute at @a[team=yellow,scores={missile_timer=1}] run summon armor_stand ~ ~ ~-1 {Invisible:1,Invulnerable:1,Small:1,DisabledSlots:7967,Silent:1,Tags:[blue,marker,special],Motion:[0.0,-1.0,0.0]}
clear @a[scores={specialactive=0},tag=!using_cannon] ender_pearl
execute as @e[type=armor_stand,tag=special] at @s run function splatoon:specials/upkeep