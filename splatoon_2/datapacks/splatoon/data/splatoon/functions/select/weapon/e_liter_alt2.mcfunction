scoreboard players set charger_id value 6
function splatoon:select/scope
scoreboard players set @s charger_id 6
tag @s add e_liter
tag @s add burst_bomb
tag @s add echolocator
tag @s add alt2
tag @s add charger_class
tellraw @s[tag=!scope,tag=!random_weapon2] {"text":"Selected Grizzco E-Liter 4K (click again for scope)","color":"yellow"}
tellraw @s[tag=scope,tag=!random_weapon2] {"text":"Selected Grizzco E-Liter 4K Scope (click again for no scope)","color":"yellow"}
tellraw @s[tag=!scope,tag=random_weapon2] {"text":"Selected Custom E-Liter 4K","color":"yellow"}
tellraw @s[tag=scope,tag=random_weapon2] {"text":"Selected Custom E-Liter 4K Scope","color":"yellow"}