#As Autocrafter
#At autocrafter

#execute if entity @a[nbt={Inventory:[{id:"minecraft:barrier", tag:{clear:1b}}]}, distance = ..7] run clear @a[distance = ..7] barrier{clear:1b}
kill @e[type=item, nbt={Item:{id:"minecraft:barrier", tag:{clear:1b}}}]

#Disable Hopper
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper run function autocrafting:block/remove


#Disable Hopper minecart
execute positioned ~ ~-1 ~ if entity @e[type=minecraft:hopper_minecart, distance=..1.5] as @e[type=minecraft:hopper_minecart, distance=..1.5] run data merge entity @s {Enabled:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} if block ~ ~ ~ dropper{Items:[{Slot:1b, id:"minecraft:barrier"}]} positioned ~ ~-1 ~ run execute as @e[type=minecraft:hopper_minecart, distance=..1] run data merge entity @s {Enabled:0b}

execute unless block ~ ~ ~ dropper{Items:[{Slot:1b}]} run item replace block ~ ~ ~ container.1 with barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:2b}]} run item replace block ~ ~ ~ container.2 with barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:3b}]} run item replace block ~ ~ ~ container.3 with barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:4b}]} run item replace block ~ ~ ~ container.4 with barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:5b}]} run item replace block ~ ~ ~ container.5 with barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:6b}]} run item replace block ~ ~ ~ container.6 with barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:7b}]} run item replace block ~ ~ ~ container.7 with barrier{clear:1b}
execute unless block ~ ~ ~ dropper{Items:[{Slot:8b}]} run item replace block ~ ~ ~ container.8 with barrier{clear:1b}


