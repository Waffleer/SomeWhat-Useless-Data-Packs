execute as @e[type=minecraft:armor_stand, tag=salmon] at @s if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:salmon"}]} run tag @s add loaded
execute if block ~ ~ ~1 redstone_block run execute as @e[type=minecraft:armor_stand, tag=salmon, tag=loaded] at @s run item replace block ~ ~ ~ container.0 with air
execute if block ~ ~ ~1 redstone_block run execute as @e[type=minecraft:armor_stand, tag=salmon, tag=loaded] at @s run summon salmon ~ ~ ~ {Fire:10,Motion:[0.0,10.0,-10.0],Tags:["flying"]}
execute if block ~ ~ ~1 redstone_block run execute as @e[type=minecraft:armor_stand, tag=salmon, tag=loaded] run tag @s remove loaded

execute if block ~ ~ ~1 iron_block run execute as @e[type=minecraft:armor_stand, tag=salmon, tag=loaded] at @s run item replace block ~ ~ ~ container.0 with air
execute if block ~ ~ ~1 iron_block run execute as @e[type=minecraft:armor_stand, tag=salmon, tag=loaded] at @s run summon salmon ~ ~ ~ {Motion:[0.0,3.0,-8.0],Tags:["flying"]}
execute if block ~ ~ ~1 iron_block run execute as @e[type=minecraft:armor_stand, tag=salmon, tag=loaded] run tag @s remove loaded

execute as @e[type=minecraft:armor_stand, tag=salmon, tag=loaded] at @s run summon salmon ~ ~ ~ {Motion:[0.0,1.0,-5.0],Tags:["flying"]}
execute as @e[type=minecraft:armor_stand, tag=salmon, tag=loaded] at @s run item replace block ~ ~ ~ container.0 with air
execute as @e[type=minecraft:armor_stand, tag=salmon, tag=loaded] run tag @s remove loaded


schedule function salmoncannon:lava/detect 50t