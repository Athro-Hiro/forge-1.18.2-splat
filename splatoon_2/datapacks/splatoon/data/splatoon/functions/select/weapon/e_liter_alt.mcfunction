scoreboard players set charger_id value 5
function splatoon:select/scope
scoreboard players set @s charger_id 5
tag @s add e_liter
tag @s add squid_beakon
tag @s add bubble_blower
tag @s add alt
tag @s add charger_class
tellraw @s[tag=!scope,tag=!random_weapon2] {"text":"Selected Custom E-Liter 4K (click again for scope)","color":"yellow"}
tellraw @s[tag=scope,tag=!random_weapon2] {"text":"Selected Custom E-Liter 4K Scope (click again for no scope)","color":"yellow"}
tellraw @s[tag=!scope,tag=random_weapon2] {"text":"Selected Custom E-Liter 4K","color":"yellow"}
tellraw @s[tag=scope,tag=random_weapon2] {"text":"Selected Custom E-Liter 4K Scope","color":"yellow"}