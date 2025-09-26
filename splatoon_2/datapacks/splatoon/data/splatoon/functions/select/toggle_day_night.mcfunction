execute if score day_night value matches 0 run tellraw @a {"text":"Time: Night"}
execute if score day_night value matches 1 run tellraw @a {"text":"Time: Day"}
execute if score day_night value matches 0 run time set midnight
execute if score day_night value matches 1 run time set noon
scoreboard players add day_night value 1
execute if score day_night value matches 2 run scoreboard players set day_night value 0