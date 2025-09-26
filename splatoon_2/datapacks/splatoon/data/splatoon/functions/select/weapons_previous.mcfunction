scoreboard players remove weapon_selection_page value 1
execute if score weapon_selection_page value matches 0 run scoreboard players set weapon_selection_page value 11
execute if score weapon_selection_page value matches 1 run clone -2 1 4 2 3 5 -2 31 15
execute if score weapon_selection_page value matches 2 run clone -2 1 7 2 3 8 -2 31 15
execute if score weapon_selection_page value matches 3 run clone -2 1 10 2 3 11 -2 31 15
execute if score weapon_selection_page value matches 4 run clone -2 1 13 2 3 14 -2 31 15
execute if score weapon_selection_page value matches 5 run clone -2 1 16 2 3 17 -2 31 15
execute if score weapon_selection_page value matches 6 run clone -2 1 19 2 3 20 -2 31 15
execute if score weapon_selection_page value matches 7 run clone -2 1 22 2 3 23 -2 31 15
execute if score weapon_selection_page value matches 8 run clone -2 1 25 2 3 26 -2 31 15
execute if score weapon_selection_page value matches 9 run clone -2 1 28 2 3 29 -2 31 15
execute if score weapon_selection_page value matches 10 run clone -2 1 31 2 3 32 -2 31 15
execute if score weapon_selection_page value matches 11 run clone -2 1 34 2 3 35 -2 31 15
playsound minecraft:item.book.page_turn player @a