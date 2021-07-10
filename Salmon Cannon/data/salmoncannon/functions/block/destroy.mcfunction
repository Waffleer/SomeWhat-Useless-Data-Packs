#As Autocrafter
#At Autocrafter
#unless block ~ ~ ~ dropper

kill @e[type=item, nbt={Item:{id:"minecraft:dropper"}, Age:0s}, limit=1, sort=nearest]
execute positioned ~ ~-1 ~ run function salmoncannon:block/remove
execute positioned ~ ~0.2 ~ run function salmoncannon:item/give
kill @s
