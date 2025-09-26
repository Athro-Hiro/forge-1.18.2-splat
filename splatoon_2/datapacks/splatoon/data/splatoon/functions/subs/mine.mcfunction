execute if entity @s[tag=blue,tag=mine] run function splatoon:paint/small_blue_bomb
execute if entity @s[tag=yellow,tag=mine] run function splatoon:paint/small_yellow_bomb
execute if entity @s[tag=blue,tag=mine] run scoreboard players remove @a[team=yellow,distance=..3] health 40
execute if entity @s[tag=yellow,tag=mine] run scoreboard players remove @a[team=blue,distance=..3] health 40
execute if entity @s[tag=blue,tag=mine] run effect give @a[team=yellow,distance=..4] glowing 10 0
execute if entity @s[tag=yellow,tag=mine] run effect give @a[team=blue,distance=..4] glowing 10 0
execute if entity @s[tag=blue,tag=mine] run particle block blue_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[tag=yellow,tag=mine] run particle block yellow_wool ~ ~ ~ 1 1 1 0.1 100 normal @a
execute if entity @s[tag=blue,tag=mine] run tellraw @a[team=blue] {"text":"An Ink Mine has exploded!","color":"yellow"}
execute if entity @s[tag=yellow,tag=mine] run tellraw @a[team=yellow] {"text":"An Ink Mine has exploded!","color":"yellow"}
execute if entity @s[tag=blue,tag=mine] as @a[team=blue] at @s run playsound minecraft:entity.player.levelup player @s
execute if entity @s[tag=yellow,tag=mine] as @a[team=yellow] at @s run playsound minecraft:entity.player.levelup player @s
playsound minecraft:entity.generic.explode player @a