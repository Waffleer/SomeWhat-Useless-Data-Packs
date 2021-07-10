#Main
#Place
execute as @e[type=firework_rocket, nbt={FireworksItem:{tag:{salmon:1b}}}] at @s if block ~ ~ ~ minecraft:air run function salmoncannon:block/place

#If not placable
execute as @e[nbt={FireworksItem:{tag:{salmon:1b}}}, type=firework_rocket, nbt={Life:2}] at @s run function salmoncannon:item/give
execute as @e[nbt={FireworksItem:{tag:{salmon:1b}}}, type=firework_rocket, nbt={Life:2}] run kill @s

#Delete collector
execute as @e[type=minecraft:armor_stand, tag=salmon] at @s unless block ~ ~ ~ minecraft:dropper run function salmoncannon:block/destroy

execute as @e[type=minecraft:armor_stand, tag=salmon] at @s run function salmoncannon:block/detect