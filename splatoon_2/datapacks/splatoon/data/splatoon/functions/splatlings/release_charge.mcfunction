scoreboard players operation @s main_charge < @s charge_max
scoreboard players operation @s shots = @s main_charge
scoreboard players set temp value 2
scoreboard players operation @s shots *= temp value
execute if score @s main_charge >= @s charge_max run tag @s add splatling_charged
tag @s[tag=ballpoint_splatling] add splatling_charged
tag @s[tag=nautilus] add splatling_charged
scoreboard players operation temp value = @s ink_cost_main
scoreboard players operation temp value *= @s main_charge
scoreboard players operation temp value /= @s charge_max
#tellraw @s ["",{"text":"ink_cost_main: "},{"score":{"name":"@s","objective":"ink_cost_main"}},{"text":"\nmain_charge: "},{"score":{"name":"@s","objective":"main_charge"}},{"text":"\ncharge_max: "},{"score":{"name":"@s","objective":"charge_max"}},{"text":"\ntemp value: "},{"score":{"name":"temp","objective":"value"}}]
scoreboard players operation @s ink -= temp value
scoreboard players set @s main_charge 0
tag @s add splatling_released
execute if entity @s[tag=ballpoint_splatling] run scoreboard players operation @s shots2 = @s shots
scoreboard players set @s[scores={shots2=20..}] shots2 20