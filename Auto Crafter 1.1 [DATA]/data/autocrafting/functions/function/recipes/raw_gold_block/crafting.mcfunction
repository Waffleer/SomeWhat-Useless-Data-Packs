
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:raw_gold"}].Count

execute if score @s count_in1 matches 9.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add raw_gold_block_crafting

execute as @s[tag=raw_gold_block_crafting] run item replace block ~ ~ ~ container.0 with raw_gold_block 1
execute as @s[tag=raw_gold_block_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:raw_gold"}].Count double 1 run scoreboard players remove @s count_in1 9

tag @s remove raw_gold_block_crafting

scoreboard players reset @s count_in1