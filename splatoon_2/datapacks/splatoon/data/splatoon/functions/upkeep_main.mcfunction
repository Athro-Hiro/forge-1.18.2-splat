kill @s[type=snowball]
kill @s[type=egg]
kill @s[type=experience_bottle]
kill @s[type=ender_pearl]
execute if entity @s[type=item] if block ~ ~ ~ water run kill @s
execute if entity @s[type=arrow] if block ~ ~ ~ water run kill @s
execute if entity @s[type=armor_stand,tag=!inkstorm] if block ~ ~ ~ water run kill @s
execute if entity @s[type=item] if block ~ ~-1 ~ barrier run kill @s
execute if entity @s[type=armor_stand] if block ~ ~-1 ~ barrier run kill @s
kill @s[type=item,tag=]
execute if entity @s[type=item,tag=droplet] run function splatoon:droplet
kill @s[type=arrow,tag=!blue,tag=!yellow]