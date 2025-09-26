tag @s[tag=!random_weapon2] add keep_scope
function splatoon:select/remove_tags
tag @s remove keep_scope
execute unless score @s[tag=!random_weapon2] charger_id = charger_id value run tag @s remove scope
execute unless score @s[tag=!random_weapon2] charger_id = charger_id value run tag @s remove no_scope
execute if entity @s[tag=!random_weapon2] run scoreboard players set scope value -1
execute if entity @s[tag=!random_weapon2,tag=no_scope] run scoreboard players set scope value 0
execute if entity @s[tag=!random_weapon2,tag=scope] run scoreboard players set scope value 1
execute if entity @s[tag=!random_weapon2] if score scope value matches -1 run tag @s add no_scope
execute if score scope value matches 0 run tag @s[tag=!random_weapon2] add scope
execute if score scope value matches 0 run tag @s[tag=!random_weapon2] remove no_scope
execute if score scope value matches 1 run tag @s[tag=!random_weapon2] add no_scope
execute if score scope value matches 1 run tag @s[tag=!random_weapon2] remove scope
function splatoon:random
execute if score random value matches ..50 run tag @s[tag=random_weapon2] add scope