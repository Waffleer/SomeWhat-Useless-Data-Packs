execute as @e[type=minecraft:armor_stand, tag=collector] at @s if block ~ ~1 ~ lava_cauldron run tag @s add lava

#execute as @e[type=minecraft:armor_stand, tag=collector, tag=lava] at @s run item replace block ~ ~ ~ container.0 with minecraft:lava_bucket{display:{Name:'{"text":"Synthetic Lava Bucket"}',Lore:['{"text":"TBD"}']},CustomModelData:814398,crafted:1b} 1

execute as @e[type=minecraft:armor_stand, tag=collector, tag=lava] at @s run setblock ~ ~1 ~ hopper
execute as @e[type=minecraft:armor_stand, tag=collector, tag=lava] at @s run item replace block ~ ~1 ~ container.0 with minecraft:lava_bucket{display:{Name:'{"text":"Synthetic Lava Bucket"}',Lore:['{"text":"TBD"}']},CustomModelData:814398,crafted:1b} 1
schedule function lavacollector:lava/item 1t

schedule function lavacollector:lava/detect 50t