execute if score performance_mode value matches 0 run tellraw @a {"text":"Performance mode: enabled"}
execute if score performance_mode value matches 1 run tellraw @a {"text":"Performance mode: disabled"}
scoreboard players add performance_mode value 1
execute if score performance_mode value matches 2 run scoreboard players set performance_mode value 0