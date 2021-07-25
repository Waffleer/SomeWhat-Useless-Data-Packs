
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:sand"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:gunpowder"}].Count

execute if score @s count_in1 matches 4.. if score @s count_in2 matches 5.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add tnt_crafting

execute as @s[tag=tnt_crafting] run item replace block ~ ~ ~ container.0 with tnt 1
execute as @s[tag=tnt_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:sand"}].Count double 1 run scoreboard players remove @s count_in1 4
execute as @s[tag=tnt_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:gunpowder"}].Count double 1 run scoreboard players remove @s count_in2 5

tag @s remove tnt_crafting

scoreboard players reset @s count_in1
scoreboard players reset @s count_in2