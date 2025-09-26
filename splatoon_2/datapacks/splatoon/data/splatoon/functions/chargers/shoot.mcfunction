summon armor_stand ^ ^ ^1 {Tags:[direction],Marker:1,Invisible:1,NoGravity:1,Invulnerable:1}
execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000
execute store result score @s x2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[0] 1000000
execute store result score @s y2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[1] 1000000
execute store result score @s z2 run data get entity @e[type=armor_stand,tag=direction,limit=1,sort=nearest] Pos[2] 1000000
scoreboard players operation @s x2 -= @s x
scoreboard players operation @s y2 -= @s y
scoreboard players operation @s z2 -= @s z
execute if entity @s[team=blue] if score @s main_charge <= @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:1b,Duration:20b,ShowParticles:0b}],CustomPotionColor:355327,Tags:[charger_bullet,blue],Color:-1,NoGravity:1,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=yellow] if score @s main_charge <= @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:2b,Duration:20b,ShowParticles:0b}],CustomPotionColor:14286597,Tags:[charger_bullet,yellow],Color:-1,NoGravity:1,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=blue,tag=bamboozler] if score @s main_charge > @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:3b,Duration:20b,ShowParticles:0b}],CustomPotionColor:355327,Tags:[charger_bullet,blue],Color:-1,NoGravity:1,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=yellow,tag=bamboozler] if score @s main_charge > @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:4b,Duration:20b,ShowParticles:0b}],CustomPotionColor:14286597,Tags:[charger_bullet,yellow],Color:-1,NoGravity:1,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=blue,tag=!bamboozler] if score @s main_charge > @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:5b,Duration:20b,ShowParticles:0b}],CustomPotionColor:355327,Tags:[charger_bullet,blue],Color:-1,NoGravity:1,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=yellow,tag=!bamboozler] if score @s main_charge > @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:6b,Duration:20b,ShowParticles:0b}],CustomPotionColor:14286597,Tags:[charger_bullet,yellow],Color:-1,NoGravity:1,damage:1.0f,crit:1b,PierceLevel:5}
scoreboard players operation range value = @s range
execute if entity @s[tag=!bamboozler] if score @s main_charge <= @s charge_max run scoreboard players set range value 4
scoreboard players set uncharged value 0
execute if score @s main_charge <= @s charge_max run scoreboard players set uncharged value 1
scoreboard players set goo_tuber value 0
execute if entity @s[tag=goo_tuber] run scoreboard players set goo_tuber value 1
scoreboard players set blast value 0
execute if entity @s[tag=blast_charger] run scoreboard players set blast value 1
scoreboard players set direction value 0
execute if entity @s[y_rotation=-60..-30] run scoreboard players set direction value 3
execute if entity @s[y_rotation=120..150] run scoreboard players set direction value 3
execute if entity @s[y_rotation=30..60] run scoreboard players set direction value 4
execute if entity @s[y_rotation=-150..-120] run scoreboard players set direction value 4
execute if score uncharged value matches 0 run scoreboard players set direction value 0
execute if entity @s[y_rotation=-180..-135] if score direction value matches 0 run scoreboard players set direction value 1
execute if entity @s[y_rotation=135..180] if score direction value matches 0 run scoreboard players set direction value 1
execute if entity @s[y_rotation=-45..45] if score direction value matches 0 run scoreboard players set direction value 1
execute if entity @s[y_rotation=-135..-45] if score direction value matches 0 run scoreboard players set direction value 2
execute if entity @s[y_rotation=45..135] if score direction value matches 0 run scoreboard players set direction value 2
scoreboard players operation dx value = @s x2
scoreboard players operation dy value = @s y2
scoreboard players operation dz value = @s z2
execute as @e[type=arrow,tag=!timer,limit=1,sort=nearest] run function splatoon:chargers/shoot_as_arrow
kill @e[type=armor_stand,tag=direction,limit=1,sort=nearest]
playsound entity.arrow.shoot ambient @a
scoreboard players operation @s inkregenlag = @s inkregenlag_main
execute if score @s main_charge > @s charge_max run scoreboard players operation @s ink -= @s ink_cost_main
scoreboard players operation temp value = @s ink_cost_main
scoreboard players set temp2 value 3
scoreboard players operation temp value /= temp2 value
execute if score @s main_charge <= @s charge_max run scoreboard players operation @s ink -= temp value
scoreboard players operation @s cooldown = @s cooldown_max
scoreboard players set @s main_charge 0
tag @s add fired_charger