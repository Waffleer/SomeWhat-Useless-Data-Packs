
execute as @e[type=minecraft:armor_stand, tag=collector, tag=lava] at @s run setblock ~ ~1 ~ cauldron
execute as @e[type=minecraft:armor_stand, tag=collector, tag=lava] at @s run tag @s remove lava