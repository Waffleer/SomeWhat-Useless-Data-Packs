
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_log"}].Count

execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add dark_oak_planks_crafting

execute as @s[tag=dark_oak_planks_crafting] run item replace block ~ ~ ~ container.0 with dark_oak_planks 4
execute as @s[tag=dark_oak_planks_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_log"}].Count double 1 run scoreboard players remove @s count_in1 1

tag @s remove dark_oak_planks_crafting

scoreboard players reset @s count_in1