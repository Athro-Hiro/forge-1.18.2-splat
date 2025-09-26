scoreboard players add map_selection_page value 1
execute if score map_selection_page value matches 5 run scoreboard players set map_selection_page value 1
execute if score map_selection_page value matches 1 run clone -7 1 -1 -6 3 1 -16 31 -1
execute if score map_selection_page value matches 2 run clone -10 1 -1 -9 3 1 -16 31 -1
execute if score map_selection_page value matches 3 run clone -13 1 -1 -12 3 1 -16 31 -1
execute if score map_selection_page value matches 4 run clone -16 1 -1 -15 3 1 -16 31 -1
playsound minecraft:item.book.page_turn player @a