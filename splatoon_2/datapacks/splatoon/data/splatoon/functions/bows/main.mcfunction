scoreboard players set @a[gamemode=spectator,tag=bow_class] main_charge 0
scoreboard players set @a[tag=squid,tag=bow_class] main_charge 0
execute as @a[tag=bow_class] if score @s ink < @s ink_cost_main run scoreboard players set @s main_charge 0
scoreboard players set @a[nbt=!{SelectedItemSlot:0},tag=bow_class] main_charge 0
execute as @a[advancements={splatoon:bow=true}] run tag @s add charging_bow
execute as @a[advancements={splatoon:bow=false}] run tag @s remove charging_bow
advancement revoke @a only splatoon:bow
scoreboard players add @a[tag=charging_bow] main_charge 1
execute as @a[tag=!charging_bow,tag=bow_class,scores={main_charge=1..},nbt={OnGround:1b},gamemode=adventure,tag=bow_medium] at @s run function splatoon:bows/shoot_horizontal_medium
execute as @a[tag=!charging_bow,tag=bow_class,scores={main_charge=1..},nbt={OnGround:0b},gamemode=adventure,tag=bow_medium] at @s run function splatoon:bows/shoot_vertical_medium
execute as @a[tag=!charging_bow,tag=bow_class,scores={main_charge=1..},nbt={OnGround:1b},gamemode=adventure,tag=bow_wide] at @s run function splatoon:bows/shoot_horizontal_wide
execute as @a[tag=!charging_bow,tag=bow_class,scores={main_charge=1..},nbt={OnGround:0b},gamemode=adventure,tag=bow_wide] at @s run function splatoon:bows/shoot_vertical_wide
execute as @a[tag=!charging_bow,tag=bow_class,scores={main_charge=1..},nbt={OnGround:1b},gamemode=adventure,tag=bow_narrow] at @s run function splatoon:bows/shoot_horizontal_narrow
execute as @a[tag=!charging_bow,tag=bow_class,scores={main_charge=1..},nbt={OnGround:0b},gamemode=adventure,tag=bow_narrow] at @s run function splatoon:bows/shoot_vertical_narrow
execute as @a[tag=bow_class] run function splatoon:update_charge_bar
execute as @a[tag=bow_class] at @s if score @s main_charge = @s charge_max run playsound block.dispenser.dispense player @s
execute as @a[tag=cross_bow,scores={main_charge=1..}] run attribute @s generic.movement_speed modifier add 42-42-42-42-1 speed 0.3 add
execute as @a[tag=cross_bow,scores={main_charge=0}] run attribute @s generic.movement_speed modifier remove 42-42-42-42-1