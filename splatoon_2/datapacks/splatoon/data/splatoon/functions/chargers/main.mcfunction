scoreboard players set @a[gamemode=spectator,tag=charger_class] main_charge 0
scoreboard players set @a[gamemode=spectator,tag=charger_class] stored_charge 0
scoreboard players set @a[tag=squid,tag=goo_tuber,scores={stored_charge=0,main_charge=1..}] stored_charge 100
execute as @a[tag=squid,tag=!goo_tuber,tag=!bamboozler,tag=!blast_charger,tag=!scope,tag=charger_class,scores={stored_charge=0}] if score @s main_charge >= @s charge_max run scoreboard players set @s stored_charge 20
scoreboard players remove @a[tag=squid,tag=charger_class,scores={stored_charge=1..}] stored_charge 1
scoreboard players set @a[tag=squid,tag=charger_class,scores={stored_charge=0}] main_charge 0
scoreboard players set @a[tag=!squid,tag=charger_class] stored_charge 0
execute as @a[tag=charger_class] if score @s ink < @s ink_cost_main run scoreboard players set @s main_charge 0
scoreboard players set @a[nbt=!{SelectedItemSlot:0},tag=charger_class] main_charge 0
scoreboard players set @a[nbt=!{SelectedItemSlot:0},tag=charger_class] stored_charge 0
scoreboard players add @a[scores={main_charge=1..},tag=charger_class,tag=!squid,tag=!scope] main_charge 1
execute as @a[tag=!noitems,scores={shoot3=1..,main_charge=1..},tag=charger_class,tag=!scope] at @s run function splatoon:chargers/shoot
scoreboard players add @a[tag=!noitems,scores={shoot3=1..,main_charge=0,cooldown=0},tag=!fired_charger,tag=charger_class] main_charge 1
execute as @a[advancements={splatoon:spyglass=true}] run tag @s add charging_scope
execute as @a[advancements={splatoon:spyglass=false}] run tag @s remove charging_scope
advancement revoke @a only splatoon:spyglass
scoreboard players add @a[tag=charging_scope] main_charge 1
execute as @a[tag=!charging_scope,tag=scope,gamemode=adventure,scores={main_charge=1..}] at @s run function splatoon:chargers/shoot
execute as @a[tag=charger_class] run function splatoon:update_charge_bar
execute as @a[tag=charger_class,tag=!squid] at @s if score @s main_charge = @s charge_max run playsound block.dispenser.dispense player @s
scoreboard players set @a[tag=!noitems,tag=charger_class] shoot3 0
execute as @e[type=arrow,tag=charger_bullet] at @s run function splatoon:chargers/upkeep
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:1b}]}] add hit_blue_spam
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:2b}]}] add hit_yellow_spam
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:3b}]}] add hit_blue_bamboozler
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:4b}]}] add hit_yellow_bamboozler
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:5b}]}] add hit_blue_charger
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:6b}]}] add hit_yellow_charger
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:7b}]}] add hit_blue_bow
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:8b}]}] add hit_yellow_bow
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:9b}]}] add hit_blue_quick_bow
tag @a[nbt={ActiveEffects:[{Id:13b,Amplifier:10b}]}] add hit_yellow_quick_bow
scoreboard players remove @a[tag=hit_blue_spam,team=yellow] health 20
scoreboard players remove @a[tag=hit_yellow_spam,team=blue] health 20
scoreboard players remove @a[tag=hit_blue_bamboozler,team=yellow] health 80
scoreboard players remove @a[tag=hit_yellow_bamboozler,team=blue] health 80
scoreboard players remove @a[tag=hit_blue_charger,team=yellow] health 120
scoreboard players remove @a[tag=hit_yellow_charger,team=blue] health 120
scoreboard players remove @a[tag=hit_blue_bow,team=yellow] health 100
scoreboard players remove @a[tag=hit_yellow_bow,team=blue] health 100
scoreboard players remove @a[tag=hit_blue_quick_bow,team=yellow] health 80
scoreboard players remove @a[tag=hit_yellow_quick_bow,team=blue] health 80
tag @a remove hit_blue_spam
tag @a remove hit_yellow_spam
tag @a remove hit_blue_bamboozler
tag @a remove hit_yellow_bamboozler
tag @a remove hit_blue_charger
tag @a remove hit_yellow_charger
tag @a remove hit_blue_bow
tag @a remove hit_yellow_bow
tag @a remove hit_blue_quick_bow
tag @a remove hit_yellow_quick_bow
effect clear @a water_breathing
tag @a remove fired_charger
scoreboard players add laser_timer value 1
execute if score laser_timer value matches 3.. as @a[tag=charger_class,scores={main_charge=1..}] at @s anchored eyes run function splatoon:chargers/laser_start
execute if score laser_timer value matches 3.. run scoreboard players set laser_timer value 0