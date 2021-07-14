#AS Firework_rocket
#At Firework_rocket
summon item_frame ~ ~ ~ {Tags:["set"], Facing:1b}
execute at @e[type=item_frame, sort=nearest, limit=1, tag=set] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Small:1b,Tags:["collector"],DisabledSlots:4144959}
execute as @e[tag=collector, type=armor_stand] at @s align xyz run tp ~.5 ~ ~.5

execute at @e[type=item_frame, sort=nearest, limit=1, tag=set] run setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Lava Collector","color":"dark_gray"}'}
kill @e[type=item_frame, limit=1, sort=nearest, tag=set]
kill @s

#Lock:"§autocrafter",