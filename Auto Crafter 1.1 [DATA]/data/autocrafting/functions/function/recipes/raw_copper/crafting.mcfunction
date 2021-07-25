
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:raw_copper_block"}].Count

execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add raw_copper_crafting

execute as @s[tag=raw_copper_crafting] run item replace block ~ ~ ~ container.0 with raw_copper 9
execute as @s[tag=raw_copper_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:raw_copper_block"}].Count double 1 run scoreboard players remove @s count_in1 1

tag @s remove raw_copper_crafting

scoreboard players reset @s count_in1