
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:redstone_block"}].Count

execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add redstone_crafting

execute as @s[tag=redstone_crafting] run item replace block ~ ~ ~ container.0 with redstone 9
execute as @s[tag=redstone_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:redstone_block"}].Count double 1 run scoreboard players remove @s count_in1 1

tag @s remove redstone_crafting

scoreboard players reset @s count_in1