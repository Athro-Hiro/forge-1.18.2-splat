bossbar set zone_control name {"text":"Zone neutral","color":"gray"}
bossbar set zone_control color white
title @a[team=blue] title {"text":"We lost control!","color":"yellow"}
title @a[team=yellow] title {"text":"They lost control!","color":"yellow"}
scoreboard players set zone_status value 0
execute as @a at @s run playsound entity.player.levelup ambient @s