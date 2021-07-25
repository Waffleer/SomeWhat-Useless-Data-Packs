
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:raw_gold_block"}].Count

execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add raw_gold_crafting

execute as @s[tag=raw_gold_crafting] run item replace block ~ ~ ~ container.0 with raw_gold 9
execute as @s[tag=raw_gold_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:raw_gold_block"}].Count double 1 run scoreboard players remove @s count_in1 1

tag @s remove raw_gold_crafting

scoreboard players reset @s count_in1