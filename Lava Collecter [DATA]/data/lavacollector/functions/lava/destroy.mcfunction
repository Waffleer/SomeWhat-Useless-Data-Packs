#As Autocrafter
#At Autocrafter
#unless block ~ ~ ~ dropper

kill @e[type=item, nbt={Item:{id:"minecraft:dropper"}, Age:0s}, limit=1, sort=nearest]
execute positioned ~ ~-1 ~ run function lavacollector:lava/remove
execute positioned ~ ~0.2 ~ run function lavacollector:lava_item/give
kill @s
