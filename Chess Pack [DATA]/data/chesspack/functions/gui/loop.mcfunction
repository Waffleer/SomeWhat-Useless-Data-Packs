

execute as @e[type=minecraft:armor_stand, tag=chessblock, tag=ready] if block ~ ~ ~ minecraft:chest run execute unless block ~ ~ ~ chest{Items:[{Slot:0b, id:"minecraft:black_dye", tag:{gui:1b}}]} run function chesspack:gui/black
execute as @e[type=minecraft:armor_stand, tag=chessblock, tag=ready] if block ~ ~ ~ minecraft:chest run execute unless block ~ ~ ~ chest{Items:[{Slot:9b, id:"minecraft:white_dye", tag:{gui:1b}}]} run function chesspack:gui/white

execute as @e[type=minecraft:armor_stand, tag=chessblock, tag=ready] if block ~ ~ ~ minecraft:chest run execute unless block ~ ~ ~ chest{Items:[{Slot:8b, id:"minecraft:structure_void", tag:{gui:1b}}]} run function chesspack:gui/clear
execute as @e[type=minecraft:armor_stand, tag=chessblock, tag=ready] if block ~ ~ ~ minecraft:chest run execute unless block ~ ~ ~ chest{Items:[{Slot:18b, id:"minecraft:item_frame", tag:{gui:1b}}]} run function chesspack:gui/table


execute unless block ~ ~ ~ chest{Items:[{Slot:0b, id:"minecraft:black_dye", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.0 with minecraft:black_dye{display:{Name:'{"text":"Black"}'},gui:1b} 1

execute unless block ~ ~ ~ chest{Items:[{Slot:1b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.1 with iron_nugget{display:{Name:'{"text":"Black Pawn"}'},CustomModelData:907,black:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:2b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.2 with iron_nugget{display:{Name:'{"text":"Black Bishop"}'},CustomModelData:908,black:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:3b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.3 with iron_nugget{display:{Name:'{"text":"Black Knight"}'},CustomModelData:909,black:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:4b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.4 with iron_nugget{display:{Name:'{"text":"Black Rook"}'},CustomModelData:910,black:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:5b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.5 with iron_nugget{display:{Name:'{"text":"Black Queen"}'},CustomModelData:911,black:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:6b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.6 with iron_nugget{display:{Name:'{"text":"Black King"}'},CustomModelData:912,black:1b,gui:1b} 1


execute unless block ~ ~ ~ chest{Items:[{Slot:9b, id:"minecraft:white_dye", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.9 with minecraft:white_dye{display:{Name:'{"text":"White"}'},gui:1b} 1

execute unless block ~ ~ ~ chest{Items:[{Slot:10b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.10 with iron_nugget{display:{Name:'{"text":"White Pawn"}'},CustomModelData:901,white:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:11b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.11 with iron_nugget{display:{Name:'{"text":"White Bishop"}'},CustomModelData:902,white:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:12b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.12 with iron_nugget{display:{Name:'{"text":"White Knight"}'},CustomModelData:903,white:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:13b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.13 with iron_nugget{display:{Name:'{"text":"White Rook"}'},CustomModelData:904,white:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:14b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.14 with iron_nugget{display:{Name:'{"text":"White Queen"}'},CustomModelData:905,white:1b,gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:15b, id:"minecraft:iron_nugget", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.15 with iron_nugget{display:{Name:'{"text":"White King"}'},CustomModelData:906,white:1b,gui:1b} 1



execute unless block ~ ~ ~ chest{Items:[{Slot:7b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.7 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1

execute unless block ~ ~ ~ chest{Items:[{Slot:8b, id:"minecraft:structure_void", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.8 with minecraft:structure_void{display:{Name:'{"text":"Clear"}'},gui:1b} 1



execute unless block ~ ~ ~ chest{Items:[{Slot:16b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.16 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:17b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.17 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1



execute unless block ~ ~ ~ chest{Items:[{Slot:18b, id:"minecraft:item_frame", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.18 with minecraft:item_frame{display:{Name:'{"text":"Summon Empty Table"}'},gui:1b} 1

execute unless block ~ ~ ~ chest{Items:[{Slot:19b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.19 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:20b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.20 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:21b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.21 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:22b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.22 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:23b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.23 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:24b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.24 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:25b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.25 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1
execute unless block ~ ~ ~ chest{Items:[{Slot:26b, id:"minecraft:barrier", tag:{gui:1b}}]} run item replace block ~ ~ ~ container.26 with minecraft:barrier{display:{Name:'{"text":""}'},gui:1b} 1

scoreboard players add @s timer 1
execute if score @s timer matches 10.. run tag @s add ready


