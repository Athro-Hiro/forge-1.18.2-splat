scoreboard players set @a[gamemode=spectator,tag=splatling_class] main_charge 0
scoreboard players set @a[gamemode=spectator,tag=splatling_class] stored_charge 0
scoreboard players set @a[tag=squid,tag=splatling_class,tag=!nautilus] main_charge 0
scoreboard players set @a[tag=squid,tag=nautilus,scores={stored_charge=0,main_charge=1..}] stored_charge 100
scoreboard players remove @a[tag=squid,tag=splatling_class,scores={stored_charge=1..}] stored_charge 1
scoreboard players set @a[tag=squid,tag=splatling_class,scores={stored_charge=0}] main_charge 0
scoreboard players set @a[tag=!squid,tag=splatling_class] stored_charge 0
execute as @a[tag=splatling_class] if score @s ink < @s ink_cost_main run scoreboard players set @s main_charge 0
scoreboard players set @a[nbt=!{SelectedItemSlot:0},tag=splatling_class] main_charge 0
scoreboard players set @a[nbt=!{SelectedItemSlot:0},tag=splatling_class] stored_charge 0
scoreboard players set @a[tag=splatling_class,tag=squid,scores={stored_charge=0}] shots 0
scoreboard players set @a[tag=splatling_class,nbt=!{SelectedItemSlot:0}] shots 0
scoreboard players set @a[tag=splatling_class,gamemode=spectator] shots 0
scoreboard players set @a[tag=splatling_class,scores={shots=0}] autoshoot 0
tag @a[tag=splatling_class,scores={shots=0}] remove splatling_charged
scoreboard players set @a[scores={shots=0}] shots2 0
scoreboard players add @a[scores={main_charge=1..},tag=splatling_class,tag=!squid] main_charge 1
execute as @a[tag=!noitems,scores={shoot3=1..,main_charge=6..},tag=splatling_class] run function splatoon:splatlings/release_charge
scoreboard players add @a[tag=!noitems,scores={shoot3=1..,main_charge=0,shots=0,cooldown=0},tag=!splatling_released,tag=splatling_class] main_charge 1
execute as @a[tag=splatling_class] run function splatoon:update_charge_bar
execute as @a[tag=splatling_class] at @s if score @s main_charge = @s charge_max run playsound block.dispenser.dispense player @s
scoreboard players set @a[tag=!noitems,tag=splatling_class] shoot3 0
tag @a remove splatling_released
scoreboard players add @a[tag=splatling_class,scores={shots=1..}] autoshoot 1
execute as @a[tag=splatling_class,scores={shots=1..,autoshoot=1..}] at @s run function splatoon:splatlings/shoot