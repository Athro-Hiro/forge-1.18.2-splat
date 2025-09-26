execute if entity @s[tag=!roller_class] if score @s ink < @s ink_cost_main run tag @s add no_main_weapon
tag @s[tag=roller_class,scores={ink=..0}] add no_main_weapon
tag @s[tag=!roller_class,tag=!charger_class,tag=!splatling_class,scores={cooldown=1..}] add no_main_weapon
execute if score @s ink < @s ink_cost_sub run tag @s add no_sub_weapon
tag @s[scores={bomb_cooldown=1..}] add no_sub_weapon
tag @s[scores={specialtimer=1..}] add no_special_weapon
tag @s[tag=dualie_class,nbt={SelectedItemSlot:0}] add offhand
item replace entity @s[tag=!offhand,nbt={Inventory:[{Slot:-106b}]}] weapon.offhand with air
item replace entity @s[tag=offhand,tag=!no_main_weapon,nbt=!{Inventory:[{id:"minecraft:snowball",Slot:-106b}]}] weapon.offhand with snowball{display: {Name: "{\"text\":\"Dodge Roll\"}"}}
item replace entity @s[tag=offhand,tag=no_main_weapon,nbt=!{Inventory:[{id:"minecraft:gray_stained_glass_pane",Slot:-106b}]}] weapon.offhand with gray_stained_glass_pane{display: {Name: "{\"text\":\"Dodge Roll\"}"}}
execute if entity @s[tag=shooter_class] run function splatoon:items/shooters
execute if entity @s[tag=blaster_class] run function splatoon:items/blasters
execute if entity @s[tag=roller_class] run function splatoon:items/rollers
execute if entity @s[tag=charger_class] run function splatoon:items/chargers
execute if entity @s[tag=slosher_class] run function splatoon:items/sloshers
execute if entity @s[tag=dualie_class] run function splatoon:items/dualies
execute if entity @s[tag=splatling_class] run function splatoon:items/splatlings
execute if entity @s[tag=nozzlenose_class] run function splatoon:items/nozzlenoses
execute if entity @s[tag=brella_class] run function splatoon:items/brellas
execute if entity @s[tag=bow_class] run function splatoon:items/bows
item replace entity @s[tag=!no_sub_weapon,tag=splat_bomb] hotbar.1 with egg{display: {Name: "{\"text\":\"Splat Bomb\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=suction_bomb] hotbar.1 with egg{display: {Name: "{\"text\":\"Suction Bomb\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=burst_bomb] hotbar.1 with egg{display: {Name: "{\"text\":\"Burst Bomb\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=seeker] hotbar.1 with egg{display: {Name: "{\"text\":\"Seeker\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=splash_wall] hotbar.1 with egg{display: {Name: "{\"text\":\"Splash Wall\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=point_sensor] hotbar.1 with egg{display: {Name: "{\"text\":\"Point Sensor\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=toxic_mist] hotbar.1 with egg{display: {Name: "{\"text\":\"Toxic Mist\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=torpedo] hotbar.1 with egg{display: {Name: "{\"text\":\"Torpedo\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=fizzy_bomb] hotbar.1 with egg{display: {Name: "{\"text\":\"Fizzy Bomb\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=autobomb] hotbar.1 with egg{display: {Name: "{\"text\":\"Autobomb\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=sprinkler] hotbar.1 with egg{display: {Name: "{\"text\":\"Sprinkler\"}"}}
item replace entity @s[tag=!no_sub_weapon,tag=ink_mine,team=blue] hotbar.1 with bat_spawn_egg{CanPlaceOn:[blue_wool],display:{Name:"{\"text\":\"Ink Mine\"}"}, EntityTag: {Silent:1,Tags: [blue,mine,place]}}
item replace entity @s[tag=!no_sub_weapon,tag=ink_mine,team=yellow] hotbar.1 with bat_spawn_egg{CanPlaceOn:[yellow_wool],display:{Name:"{\"text\":\"Ink Mine\"}"}, EntityTag: {Silent:1,Tags: [yellow,mine,place]}}
item replace entity @s[tag=!no_sub_weapon,tag=squid_beakon,team=blue] hotbar.1 with bat_spawn_egg{CanPlaceOn:[blue_wool],display:{Name:"{\"text\":\"Squid Beakon\"}"}, EntityTag: {Silent:1,Tags: [blue,beakon,place]}}
item replace entity @s[tag=!no_sub_weapon,tag=squid_beakon,team=yellow] hotbar.1 with bat_spawn_egg{CanPlaceOn:[yellow_wool],display:{Name:"{\"text\":\"Squid Beakon\"}"}, EntityTag: {Silent:1,Tags: [yellow,beakon,place]}}
item replace entity @s[tag=no_sub_weapon,tag=splat_bomb] hotbar.1 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Splat Bomb\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=suction_bomb] hotbar.1 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Suction Bomb\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=burst_bomb] hotbar.1 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Burst Bomb\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=seeker] hotbar.1 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Seeker\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=splash_wall] hotbar.1 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Splash Wall\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=point_sensor] hotbar.1 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Point Sensor\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=toxic_mist] hotbar.1 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Toxic Mist\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=torpedo] hotbar.1 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Torpedo\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=fizzy_bomb] hotbar.1 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Fizzy Bomb\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=ink_mine] hotbar.1 with gray_stained_glass_pane{display:{Name:"{\"text\":\"Ink Mine\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=autobomb] hotbar.1 with gray_stained_glass_pane{display:{Name:"{\"text\":\"Autobomb\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=sprinkler] hotbar.1 with gray_stained_glass_pane{display:{Name:"{\"text\":\"Sprinkler\"}"}}
item replace entity @s[tag=no_sub_weapon,tag=squid_beakon] hotbar.1 with gray_stained_glass_pane{display:{Name:"{\"text\":\"Squid Beakon\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=ink_armor] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Ink Armor\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=echolocator] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Echolocator\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=splat_bomb_launcher] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Splat Bomb Launcher\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=suction_bomb_launcher] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Suction Bomb Launcher\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=burst_bomb_launcher] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Burst Bomb Launcher\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=autobomb_launcher] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Autobomb Launcher\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=seeker_launcher] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Seeker Launcher\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=inkzooka] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Inkzooka\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=booyah_bomb] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Booyah Bomb\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=splashdown] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Splashdown\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=tenta_missiles] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Tenta Missiles\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=killer_wail] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Killer Wail\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=kraken] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Kraken\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=inkstorm] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Inkstorm\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=bubble_blower] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Bubble Blower\"}"}}
item replace entity @s[tag=!no_special_weapon,tag=ultra_stamp] hotbar.2 with experience_bottle{display: {Name: "{\"text\":\"Ultra Stamp\"}"}}
item replace entity @s[tag=no_special_weapon,tag=ink_armor] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Ink Armor\"}"}}
item replace entity @s[tag=no_special_weapon,tag=echolocator] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Echolocator\"}"}}
item replace entity @s[tag=no_special_weapon,tag=splat_bomb_launcher] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Splat Bomb Launcher\"}"}}
item replace entity @s[tag=no_special_weapon,tag=suction_bomb_launcher] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Suction Bomb Launcher\"}"}}
item replace entity @s[tag=no_special_weapon,tag=burst_bomb_launcher] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Burst Bomb Launcher\"}"}}
item replace entity @s[tag=no_special_weapon,tag=autobomb_launcher] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Autobomb Launcher\"}"}}
item replace entity @s[tag=no_special_weapon,tag=seeker_launcher] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Seeker Launcher\"}"}}
item replace entity @s[tag=no_special_weapon,tag=inkzooka] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Inkzooka\"}"}}
item replace entity @s[tag=no_special_weapon,tag=booyah_bomb] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Booyah Bomb\"}"}}
item replace entity @s[tag=no_special_weapon,tag=splashdown] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Splashdown\"}"}}
item replace entity @s[tag=no_special_weapon,tag=tenta_missiles] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Tenta Missiles\"}"}}
item replace entity @s[tag=no_special_weapon,tag=killer_wail] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Killer Wail\"}"}}
item replace entity @s[tag=no_special_weapon,tag=kraken] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Kraken\"}"}}
item replace entity @s[tag=no_special_weapon,tag=inkstorm] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Inkstorm\"}"}}
item replace entity @s[tag=no_special_weapon,tag=bubble_blower] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Bubble Blower\"}"}}
item replace entity @s[tag=no_special_weapon,tag=ultra_stamp] hotbar.2 with gray_stained_glass_pane{display: {Name: "{\"text\":\"Ultra Stamp\"}"}}
item replace entity @s hotbar.3 with compass{display: {Name: "{\"text\":\"Team Tracker\"}"}}
clear @s[tag=!has_clam] emerald
execute if entity @s[team=blue] if entity @e[type=armor_stand,tag=blue,tag=squid_beakon] run item replace entity @s hotbar.4 with chorus_fruit{display: {Name: "{\"text\":\"Jump to Squid Beakon\"}"}}
execute if entity @s[team=yellow] if entity @e[type=armor_stand,tag=yellow,tag=squid_beakon] run item replace entity @s hotbar.4 with chorus_fruit{display: {Name: "{\"text\":\"Jump to Squid Beakon\"}"}}
execute if entity @s[team=blue] unless entity @e[type=armor_stand,tag=blue,tag=squid_beakon] run clear @s chorus_fruit
execute if entity @s[team=yellow] unless entity @e[type=armor_stand,tag=yellow,tag=squid_beakon] run clear @s chorus_fruit
item replace entity @s[tag=has_clam] hotbar.5 with emerald{display: {Name: "{\"text\":\"Clam\"}"}}
tag @s remove armor
tag @s[tag=!squid,nbt={Inventory:[{id:"minecraft:leather_chestplate"}]}] add armor
item replace entity @s[team=blue,tag=!squid,tag=!armor] armor.chest with leather_chestplate{AttributeModifiers:[],display:{color:3949738},Unbreakable:1}
item replace entity @s[team=yellow,tag=!squid,tag=!armor] armor.chest with leather_chestplate{AttributeModifiers:[],display:{color:16701501},Unbreakable:1}
item replace entity @s[team=blue,tag=!squid,tag=!armor] armor.legs with leather_leggings{AttributeModifiers:[],display:{color:3949738},Unbreakable:1}
item replace entity @s[team=yellow,tag=!squid,tag=!armor] armor.legs with leather_leggings{AttributeModifiers:[],display:{color:16701501},Unbreakable:1}
item replace entity @s[team=blue,tag=!squid,tag=!armor] armor.head with leather_helmet{AttributeModifiers:[],display:{color:3949738},Unbreakable:1}
item replace entity @s[team=yellow,tag=!squid,tag=!armor] armor.head with leather_helmet{AttributeModifiers:[],display:{color:16701501},Unbreakable:1}
item replace entity @s[team=blue,tag=!squid,tag=!armor] armor.feet with leather_boots{AttributeModifiers:[],display:{color:3949738},Unbreakable:1}
item replace entity @s[team=yellow,tag=!squid,tag=!armor] armor.feet with leather_boots{AttributeModifiers:[],display:{color:16701501},Unbreakable:1}
tag @s remove no_main_weapon
tag @s remove no_sub_weapon
tag @s remove no_special_weapon
tag @s remove offhand