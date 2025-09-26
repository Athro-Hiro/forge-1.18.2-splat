execute if score random_teams value matches 0 run tellraw @a {"text":"Random teams: enabled"}
execute if score random_teams value matches 1 run tellraw @a {"text":"Random teams: disabled"}
execute if score random_teams value matches 0 run scoreboard players set random_teams value 2
execute if score random_teams value matches 1 run scoreboard players set random_teams value 0
execute if score random_teams value matches 2 run scoreboard players set random_teams value 1