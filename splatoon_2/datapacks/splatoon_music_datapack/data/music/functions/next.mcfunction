execute as @a[scores={music_index=1}] run function music:play_1
execute as @a[scores={music_index=2}] run function music:play_2
execute as @a[scores={music_index=3}] run function music:play_3
execute as @a[scores={music_index=4}] run function music:play_4
execute as @a[scores={music_index=5}] run function music:play_5
execute as @a[scores={music_index=6}] run function music:play_6
execute as @a[scores={music_index=7}] run function music:play_7


scoreboard players add @a music_index 1
execute as @a[scores={music_index=8..}] run scoreboard players set @s music_index 1
