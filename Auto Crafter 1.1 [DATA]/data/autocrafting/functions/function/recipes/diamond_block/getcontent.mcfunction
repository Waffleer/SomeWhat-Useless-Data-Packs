
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:diamond"}]} run tag @s add content
execute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:diamond"}].Count
execute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{id:"minecraft:diamond"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air
tag @s remove content
scoreboard players reset @s adder