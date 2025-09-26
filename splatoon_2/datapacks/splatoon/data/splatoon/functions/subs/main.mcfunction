execute as @a[nbt={SelectedItemSlot:1},tag=fizzy_bomb,tag=!squid] if score @s ink >= @s ink_cost_sub run scoreboard players add @s sub_charge 1
execute as @a[nbt={SelectedItemSlot:1},tag=seeker,tag=!squid] if score @s ink >= @s ink_cost_sub run scoreboard players add @s sub_charge 1
scoreboard players set @a[tag=squid] sub_charge 0
scoreboard players set @a[nbt=!{SelectedItemSlot:1}] sub_charge 0
execute as @a[scores={sub_charge=20}] at @s run playsound minecraft:block.stone_button.click_on player @s
execute as @a[scores={shoot2=1..},tag=!seeker,tag=!splash_wall,tag=!noitems] at @s run function splatoon:subs/shoot
execute as @a[scores={shoot2=1..},tag=noitems,tag=!seeker_launcher] at @s run function splatoon:subs/shoot_bomb_launcher
execute as @a[scores={shoot2=1..},tag=noitems,tag=seeker_launcher] at @s run function splatoon:subs/shoot_seeker_launcher
execute as @a[scores={shoot2=1..},tag=seeker,tag=!noitems] at @s run function splatoon:subs/spawn_seeker
execute as @a[scores={shoot2=1..},tag=splash_wall,tag=!noitems] at @s run function splatoon:subs/spawn_splash_wall
scoreboard players set @a[scores={shoot2=1..}] sub_charge 0
scoreboard players set @a shoot2 0
execute as @a[scores={place=1..}] run scoreboard players operation @s ink -= @s ink_cost_sub
execute as @a[scores={place=1..}] run scoreboard players operation @s inkregenlag > @s inkregenlag_sub
scoreboard players set @a place 0
execute as @e[type=item,tag=bomb] at @s run function splatoon:subs/upkeep_items
execute as @e[type=armor_stand,tag=bomb] at @s run function splatoon:subs/upkeep_armor_stands
execute as @e[type=bat] at @s run function splatoon:subs/place_sub
scoreboard players remove @a[scores={bomb_cooldown=1..}] bomb_cooldown 1
execute as @a[scores={super_jump=1..}] run function splatoon:subs/super_jump
scoreboard players set @a[scores={super_jump=1..}] super_jump 0