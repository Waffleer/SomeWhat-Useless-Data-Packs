#At Hopper underneath autocrafter

execute if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b, id:"minecraft:barrier", tag:{clear:1b}}]} run item replace block ~ ~ ~ container.0 with air
execute if block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b, id:"minecraft:barrier", tag:{clear:1b}}]} run item replace block ~ ~ ~ container.1 with air
execute if block ~ ~ ~ minecraft:hopper{Items:[{Slot:2b, id:"minecraft:barrier", tag:{clear:1b}}]} run item replace block ~ ~ ~ container.2 with air
execute if block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b, id:"minecraft:barrier", tag:{clear:1b}}]} run item replace block ~ ~ ~ container.3 with air
execute if block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b, id:"minecraft:barrier", tag:{clear:1b}}]} run item replace block ~ ~ ~ container.4 with air

