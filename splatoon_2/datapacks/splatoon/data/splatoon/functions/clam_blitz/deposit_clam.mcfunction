execute as @a at @s run playsound block.note_block.pling player @s
tellraw @a ["",{"selector":"@s"},{"text":" has deposited a clam!"}]
execute if entity @s[team=blue] run scoreboard players add Blue score 1
execute if entity @s[team=yellow] run scoreboard players add Yellow score 1
tag @s remove has_clam