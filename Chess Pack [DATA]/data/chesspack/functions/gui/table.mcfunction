fill ~1 ~ ~-4 ~9 ~1 ~4 air

execute as @e[tag=chessboard, type=armor_stand] at @s run kill @e[type=item,distance=..8,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}]


summon armor_stand ~5 ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["chessboard"],DisabledSlots:4144959}
execute as @e[tag=chessboard, type=armor_stand] at @s align xyz run tp ~.5 ~ ~.5

execute as @e[tag=chessboard, type=armor_stand] at @s run kill @e[type=item,distance=..8,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}]
fill ~1 ~ ~-4 ~9 ~ ~4 stone


summon item_frame ~1 ~1 ~-4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:801,gui:1b}}}
summon item_frame ~1 ~1 ~-3 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:802,gui:1b}}}
summon item_frame ~1 ~1 ~-2 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:803,gui:1b}}}
summon item_frame ~1 ~1 ~-1 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:804,gui:1b}}}
summon item_frame ~1 ~1 ~0 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:805,gui:1b}}}
summon item_frame ~1 ~1 ~1 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:806,gui:1b}}}
summon item_frame ~1 ~1 ~2 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:807,gui:1b}}}
summon item_frame ~1 ~1 ~3 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:808,gui:1b}}}
summon item_frame ~1 ~1 ~4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:800,gui:1b}}}

summon item_frame ~9 ~1 ~4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:809,gui:1b}}}
summon item_frame ~8 ~1 ~4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:810,gui:1b}}}
summon item_frame ~7 ~1 ~4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:811,gui:1b}}}
summon item_frame ~6 ~1 ~4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:812,gui:1b}}}
summon item_frame ~5 ~1 ~4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:813,gui:1b}}}
summon item_frame ~4 ~1 ~4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:814,gui:1b}}}
summon item_frame ~3 ~1 ~4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:815,gui:1b}}}
summon item_frame ~2 ~1 ~4 {Facing:1b,Invulnerable:1b,Invisible:0b,Tags:["board"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:816,gui:1b}}}

summon item_frame ~9 ~1 ~-4 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~9 ~1 ~-3 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~9 ~1 ~-2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~9 ~1 ~-1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~9 ~1 ~0 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~9 ~1 ~1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~9 ~1 ~2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~9 ~1 ~3 {Facing:1b,Invisible:0b,Tags:["board"]}

summon item_frame ~8 ~1 ~-4 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~8 ~1 ~-3 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~8 ~1 ~-2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~8 ~1 ~-1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~8 ~1 ~0 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~8 ~1 ~1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~8 ~1 ~2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~8 ~1 ~3 {Facing:1b,Invisible:0b,Tags:["board"]}

summon item_frame ~7 ~1 ~-4 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~7 ~1 ~-3 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~7 ~1 ~-2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~7 ~1 ~-1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~7 ~1 ~0 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~7 ~1 ~1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~7 ~1 ~2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~7 ~1 ~3 {Facing:1b,Invisible:0b,Tags:["board"]}

summon item_frame ~6 ~1 ~-4 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~6 ~1 ~-3 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~6 ~1 ~-2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~6 ~1 ~-1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~6 ~1 ~0 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~6 ~1 ~1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~6 ~1 ~2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~6 ~1 ~3 {Facing:1b,Invisible:0b,Tags:["board"]}

summon item_frame ~5 ~1 ~-4 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~5 ~1 ~-3 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~5 ~1 ~-2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~5 ~1 ~-1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~5 ~1 ~0 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~5 ~1 ~1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~5 ~1 ~2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~5 ~1 ~3 {Facing:1b,Invisible:0b,Tags:["board"]}

summon item_frame ~4 ~1 ~-4 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~4 ~1 ~-3 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~4 ~1 ~-2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~4 ~1 ~-1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~4 ~1 ~0 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~4 ~1 ~1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~4 ~1 ~2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~4 ~1 ~3 {Facing:1b,Invisible:0b,Tags:["board"]}

summon item_frame ~3 ~1 ~-4 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~3 ~1 ~-3 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~3 ~1 ~-2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~3 ~1 ~-1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~3 ~1 ~0 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~3 ~1 ~1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~3 ~1 ~2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~3 ~1 ~3 {Facing:1b,Invisible:0b,Tags:["board"]}

summon item_frame ~2 ~1 ~-4 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~2 ~1 ~-3 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~2 ~1 ~-2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~2 ~1 ~-1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~2 ~1 ~0 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~2 ~1 ~1 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~2 ~1 ~2 {Facing:1b,Invisible:0b,Tags:["board"]}
summon item_frame ~2 ~1 ~3 {Facing:1b,Invisible:0b,Tags:["board"]}



