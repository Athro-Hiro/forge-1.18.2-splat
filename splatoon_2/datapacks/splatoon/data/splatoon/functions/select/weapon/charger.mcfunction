scoreboard players set charger_id value 1
function splatoon:select/scope
scoreboard players set @s charger_id 1
tag @s add charger
tag @s add splat_bomb
tag @s add killer_wail
tag @s add charger_class
tellraw @s[tag=!scope,tag=!random_weapon2] {"text":"Selected Splat Charger (click again for scope)","color":"yellow"}
tellraw @s[tag=scope,tag=!random_weapon2] {"text":"Selected Splatterscope (click again for no scope)","color":"yellow"}
tellraw @s[tag=!scope,tag=random_weapon2] {"text":"Selected Splat Charger","color":"yellow"}
tellraw @s[tag=scope,tag=random_weapon2] {"text":"Selected Splatterscope","color":"yellow"}