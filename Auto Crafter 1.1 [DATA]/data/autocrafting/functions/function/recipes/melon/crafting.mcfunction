
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:melon_slice"}].Count

execute if score @s count_in1 matches 9.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add melon_crafting

execute as @s[tag=melon_crafting] run item replace block ~ ~ ~ container.0 with melon 1
execute as @s[tag=melon_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:melon_slice"}].Count double 1 run scoreboard players remove @s count_in1 9

tag @s remove melon_crafting

scoreboard players reset @s count_in1