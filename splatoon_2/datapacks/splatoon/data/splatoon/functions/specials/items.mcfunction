tag @s[scores={bomb_cooldown=1..}] add no_special
tag @s[scores={specialactive=1}] add no_special
item replace entity @s[tag=!no_special,tag=splat_bomb_launcher] hotbar.2 with egg{display: {Name: "{\"text\":\"Splat Bomb\"}"}}
item replace entity @s[tag=!no_special,tag=suction_bomb_launcher] hotbar.2 with egg{display: {Name: "{\"text\":\"Suction Bomb\"}"}}
item replace entity @s[tag=!no_special,tag=burst_bomb_launcher] hotbar.2 with egg{display: {Name: "{\"text\":\"Burst Bomb\"}"}}
item replace entity @s[tag=!no_special,tag=seeker_launcher] hotbar.2 with egg{display: {Name: "{\"text\":\"Seeker\"}"}}
item replace entity @s[tag=!no_special,tag=autobomb_launcher] hotbar.2 with egg{display: {Name: "{\"text\":\"Autobomb\"}"}}
item replace entity @s[tag=!no_special,tag=booyah_bomb] hotbar.2 with ender_pearl{display:{Name:"{\"text\":\"Booyah Bomb\"}"}}
item replace entity @s[tag=!no_special,tag=inkzooka] hotbar.2 with ender_pearl{display:{Name:"{\"text\":\"Inkzooka\"}"}}
item replace entity @s[tag=!no_special,tag=inkstorm] hotbar.2 with ender_pearl{display:{Name:"{\"text\":\"Inkstorm\"}"}}
item replace entity @s[tag=!no_special,tag=killer_wail] hotbar.2 with ender_pearl{display:{Name:"{\"text\":\"Killer Wail\"}"}}
item replace entity @s[tag=!no_special,tag=bubble_blower] hotbar.2 with ender_pearl{display:{Name:"{\"text\":\"Bubble Blower\"}"}}
item replace entity @s[tag=!no_special,tag=ultra_stamp,scores={specialactive=11..}] hotbar.2 with carrot_on_a_stick{display:{Name:"{\"text\":\"Ultra Stamp\"}"}}
item replace entity @s[tag=!no_special,tag=ultra_stamp,scores={specialactive=..10}] hotbar.2 with ender_pearl{display:{Name:"{\"text\":\"Throw the Ultra Stamp\"}"}}
clear @s[tag=no_special] egg
clear @s[tag=no_special] ender_pearl
clear @s[tag=no_special] carrot_on_a_stick
item replace entity @s hotbar.3 with compass{display: {Name: "{\"text\":\"Team Tracker\"}"}}
clear @s[tag=!has_clam] emerald
execute if entity @s[team=blue] if entity @e[type=armor_stand,tag=blue,tag=squid_beakon] run item replace entity @s hotbar.4 with chorus_fruit{display: {Name: "{\"text\":\"Jump to Squid Beakon\"}"}}
execute if entity @s[team=yellow] if entity @e[type=armor_stand,tag=yellow,tag=squid_beakon] run item replace entity @s hotbar.4 with chorus_fruit{display: {Name: "{\"text\":\"Jump to Squid Beakon\"}"}}
execute if entity @s[team=blue] unless entity @e[type=armor_stand,tag=blue,tag=squid_beakon] run clear @s chorus_fruit
execute if entity @s[team=yellow] unless entity @e[type=armor_stand,tag=yellow,tag=squid_beakon] run clear @s chorus_fruit
item replace entity @s[tag=has_clam] hotbar.5 with emerald{display: {Name: "{\"text\":\"Clam\"}"}}
tag @s remove armor
tag @s[tag=!squid,nbt={Inventory:[{id:"minecraft:leather_chestplate"}]}] add armor
tag @s[tag=kraken] add armor
item replace entity @s[team=blue,tag=!squid,tag=!armor] armor.chest with leather_chestplate{AttributeModifiers:[],display:{color:3949738},Unbreakable:1}
item replace entity @s[team=yellow,tag=!squid,tag=!armor] armor.chest with leather_chestplate{AttributeModifiers:[],display:{color:16701501},Unbreakable:1}
item replace entity @s[team=blue,tag=!squid,tag=!armor] armor.legs with leather_leggings{AttributeModifiers:[],display:{color:3949738},Unbreakable:1}
item replace entity @s[team=yellow,tag=!squid,tag=!armor] armor.legs with leather_leggings{AttributeModifiers:[],display:{color:16701501},Unbreakable:1}
item replace entity @s[team=blue,tag=!squid,tag=!armor] armor.head with leather_helmet{AttributeModifiers:[],display:{color:3949738},Unbreakable:1}
item replace entity @s[team=yellow,tag=!squid,tag=!armor] armor.head with leather_helmet{AttributeModifiers:[],display:{color:16701501},Unbreakable:1}
item replace entity @s[team=blue,tag=!squid,tag=!armor] armor.feet with leather_boots{AttributeModifiers:[],display:{color:3949738},Unbreakable:1}
item replace entity @s[team=yellow,tag=!squid,tag=!armor] armor.feet with leather_boots{AttributeModifiers:[],display:{color:16701501},Unbreakable:1}
tag @s remove no_special