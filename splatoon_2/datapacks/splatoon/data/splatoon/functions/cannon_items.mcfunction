tag @s[scores={ink=..19}] add no_cannon
item replace entity @s[tag=!no_cannon] hotbar.0 with ender_pearl{display: {Name: "{\"text\":\"Cannon\"}"}}
clear @s[tag=no_cannon] ender_pearl
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
tag @s remove no_cannon