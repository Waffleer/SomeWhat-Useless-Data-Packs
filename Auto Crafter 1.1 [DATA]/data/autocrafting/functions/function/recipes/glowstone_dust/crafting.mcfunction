
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:glowstone"}].Count

execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add glowstone_dust_crafting

execute as @s[tag=glowstone_dust_crafting] run item replace block ~ ~ ~ container.0 with glowstone_dust 4
execute as @s[tag=glowstone_dust_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:glowstone"}].Count double 1 run scoreboard players remove @s count_in1 1

tag @s remove glowstone_dust_crafting

scoreboard players reset @s count_in1