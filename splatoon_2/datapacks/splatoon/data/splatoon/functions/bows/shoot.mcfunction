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
execute if entity @s[team=blue] if score @s main_charge < @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:1b,Duration:20b,ShowParticles:0b}],CustomPotionColor:355327,Tags:[charger_bullet,blue,bow],Color:-1,NoGravity:0,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=yellow] if score @s main_charge < @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:2b,Duration:20b,ShowParticles:0b}],CustomPotionColor:14286597,Tags:[charger_bullet,yellow,bow],Color:-1,NoGravity:0,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=blue,tag=!quick_bow] if score @s main_charge >= @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:7b,Duration:20b,ShowParticles:0b}],CustomPotionColor:355327,Tags:[charger_bullet,blue,bow],Color:-1,NoGravity:0,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=yellow,tag=!quick_bow] if score @s main_charge >= @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:8b,Duration:20b,ShowParticles:0b}],CustomPotionColor:14286597,Tags:[charger_bullet,yellow,bow],Color:-1,NoGravity:0,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=blue,tag=quick_bow] if score @s main_charge >= @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:7b,Duration:20b,ShowParticles:0b}],CustomPotionColor:355327,Tags:[charger_bullet,blue,bow],Color:-1,NoGravity:0,damage:1.0f,crit:1b,PierceLevel:5}
execute if entity @s[team=yellow,tag=quick_bow] if score @s main_charge >= @s charge_max anchored eyes run summon arrow ^ ^ ^0.1 {SoundEvent:"minecraft:block.slime_block.place",CustomPotionEffects:[{Id:13b,Amplifier:8b,Duration:20b,ShowParticles:0b}],CustomPotionColor:14286597,Tags:[charger_bullet,yellow,bow],Color:-1,NoGravity:0,damage:1.0f,crit:1b,PierceLevel:5}
scoreboard players operation range value = @s range
execute if score @s main_charge < @s charge_max run scoreboard players set range value 5
execute if score @s main_charge >= @s charge_max if entity @s[nbt={OnGround:1b}] run scoreboard players set range value 6
scoreboard players set uncharged value 0
execute if score @s main_charge < @s charge_max run scoreboard players set uncharged value 1
scoreboard players operation dx value = @s x2
scoreboard players operation dy value = @s y2
scoreboard players operation dz value = @s z2
scoreboard players set temp value -1
scoreboard players set direction value 0
execute if score dx value matches ..0 if score dz value matches ..0 run scoreboard players set positive value 1
execute if score dx value matches ..0 if score dz value matches 0.. run scoreboard players set positive value 0
execute if score dx value matches 0.. if score dz value matches ..0 run scoreboard players set positive value 0
execute if score dx value matches 0.. if score dz value matches 0.. run scoreboard players set positive value 1
execute if score dx value matches ..0 run scoreboard players operation dx value *= temp value
execute if score dz value matches ..0 run scoreboard players operation dz value *= temp value
scoreboard players operation temp2 value = dx value
scoreboard players operation temp2 value += dx value
execute if score dz value > temp2 value run scoreboard players set direction value 1
scoreboard players operation temp2 value = dz value
scoreboard players operation temp2 value += dz value
execute if score dx value > temp2 value run scoreboard players set direction value 2
execute if score positive value matches 1 if score direction value matches 0 run scoreboard players set direction value 3
execute if score positive value matches 0 if score direction value matches 0 run scoreboard players set direction value 4
scoreboard players operation dx value = @s x2
scoreboard players operation dy value = @s y2
scoreboard players operation dz value = @s z2
execute as @e[type=arrow,tag=!timer,limit=1,sort=nearest] run function splatoon:bows/shoot_as_arrow
kill @e[type=armor_stand,tag=direction,limit=1,sort=nearest]