scoreboard players set charger_id value 4
function splatoon:select/scope
scoreboard players set @s charger_id 4
tag @s add e_liter
tag @s add ink_mine
tag @s add inkstorm
tag @s add charger_class
tellraw @s[tag=!scope,tag=!random_weapon2] {"text":"Selected E-Liter 4K (click again for scope)","color":"yellow"}
tellraw @s[tag=scope,tag=!random_weapon2] {"text":"Selected E-Liter 4K Scope (click again for no scope)","color":"yellow"}
tellraw @s[tag=!scope,tag=random_weapon2] {"text":"Selected E-Liter 4K","color":"yellow"}
tellraw @s[tag=scope,tag=random_weapon2] {"text":"Selected E-Liter 4K Scope","color":"yellow"}