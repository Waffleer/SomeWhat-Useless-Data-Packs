#AS Firework_rocket
#At Firework_rocket
summon item_frame ~ ~ ~ {Tags:["setcrafter"], Facing:1b}
execute at @e[type=item_frame, sort=nearest, limit=1, tag=setcrafter] run summon armor_stand ~ ~-0.03 ~ {Tags:["autocrafter", "unset"], Invulnerable:1b, Small:1b, NoGravity:1b, Invisible:1b, DisabledSlots:4144959}

#TODO: LOCK

execute at @e[type=item_frame, sort=nearest, limit=1, tag=setcrafter] run setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Autocrafter","color":"dark_gray"}'}
kill @e[type=item_frame, limit=1, sort=nearest, tag=setcrafter]
kill @s

#Lock:"§autocrafter",