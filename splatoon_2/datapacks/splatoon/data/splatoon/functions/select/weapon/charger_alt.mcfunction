scoreboard players set charger_id value 2
function splatoon:select/scope
scoreboard players set @s charger_id 2
tag @s add charger
tag @s add splash_wall
tag @s add bomb_rush
tag @s add suction_bomb_launcher
tag @s add alt
tag @s add charger_class
tellraw @s[tag=!scope,tag=!random_weapon2] {"text":"Selected Firefin Splat Charger (click again for scope)","color":"yellow"}
tellraw @s[tag=scope,tag=!random_weapon2] {"text":"Selected Firefin Splatterscope (click again for no scope)","color":"yellow"}
tellraw @s[tag=!scope,tag=random_weapon2] {"text":"Selected Firefin Splat Charger","color":"yellow"}
tellraw @s[tag=scope,tag=random_weapon2] {"text":"Selected Firefin Splatterscope","color":"yellow"}