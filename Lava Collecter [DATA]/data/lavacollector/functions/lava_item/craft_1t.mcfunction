
#Reset
execute as @a[tag=crafting] run advancement revoke @s only lavacollector:collector
execute as @a[tag=crafting] run recipe take @s lavacollector:collector


execute as @a[tag=crafting] at @s run function lavacollector:lava_item/give
execute as @a[tag=crafting] run clear @s knowledge_book
execute as @a[tag=crafting] run tag @s remove crafting


