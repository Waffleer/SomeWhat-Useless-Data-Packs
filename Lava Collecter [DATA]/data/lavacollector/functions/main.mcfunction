#Main
#Place
execute as @e[type=firework_rocket, nbt={FireworksItem:{tag:{collector:1b}}}] at @s if block ~ ~ ~ minecraft:air run function lavacollector:lava/place

#If not placable
execute as @e[nbt={FireworksItem:{tag:{collector:1b}}}, type=firework_rocket, nbt={Life:2}] at @s run function lavacollector:lava_item/give
execute as @e[nbt={FireworksItem:{tag:{collector:1b}}}, type=firework_rocket, nbt={Life:2}] run kill @s

#Delete collector
execute as @e[type=minecraft:armor_stand, tag=collector] at @s unless block ~ ~ ~ minecraft:dropper run function lavacollector:lava/destroy
