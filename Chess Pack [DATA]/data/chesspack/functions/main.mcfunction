execute as @e[type=minecraft:armor_stand, tag=chessblock] at @s run function chesspack:gui/loop


execute as @e[type=firework_rocket, nbt={FireworksItem:{tag:{chessblock:1b}}}] at @s if block ~ ~ ~ minecraft:air run function chesspack:chess/block/place

#If not placable
execute as @e[nbt={FireworksItem:{tag:{chessblock:1b}}}, type=firework_rocket, nbt={Life:2}] at @s run function chesspack:chess/item/give
execute as @e[nbt={FireworksItem:{tag:{chessblock:1b}}}, type=firework_rocket, nbt={Life:2}] run kill @s

#Delete collector
execute as @e[type=minecraft:armor_stand, tag=chessblock] at @s unless block ~ ~ ~ minecraft:chest run function chesspack:chess/block/destroy



clear @a white_dye{gui:1b}
clear @a black_dye{gui:1b}
clear @a barrier{gui:1b}
clear @a item_frame{gui:1b}
clear @a structure_void{gui:1b}
execute as @e[tag=chessboard, type=armor_stand] at @s run kill @e[type=item,distance=..8,nbt={Item:{id:"minecraft:item_frame",Count:1b}}]


kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:800}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:801}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:802}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:803}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:804}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:805}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:806}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:807}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:808}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:809}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:810}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:811}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:812}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:813}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:814}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:815}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:816}}}]