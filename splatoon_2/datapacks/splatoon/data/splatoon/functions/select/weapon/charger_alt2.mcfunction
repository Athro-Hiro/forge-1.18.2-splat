scoreboard players set charger_id value 3
function splatoon:select/scope
scoreboard players set @s charger_id 3
tag @s add charger
tag @s add sprinkler
tag @s add kraken
tag @s add alt2
tag @s add charger_class
tellraw @s[tag=!scope,tag=!random_weapon2] {"text":"Selected Kelp Splat Charger (click again for scope)","color":"yellow"}
tellraw @s[tag=scope,tag=!random_weapon2] {"text":"Selected Kelp Splatterscope (click again for no scope)","color":"yellow"}
tellraw @s[tag=!scope,tag=random_weapon2] {"text":"Selected Firefin Splat Charger","color":"yellow"}
tellraw @s[tag=scope,tag=random_weapon2] {"text":"Selected Firefin Splatterscope","color":"yellow"}