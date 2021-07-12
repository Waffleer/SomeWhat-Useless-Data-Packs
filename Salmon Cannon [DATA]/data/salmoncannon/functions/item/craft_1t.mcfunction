
#Reset
execute as @a[tag=crafting] run advancement revoke @s only salmoncannon:salmoncannon
execute as @a[tag=crafting] run recipe take @s salmoncannon:salmon_cannon


execute as @a[tag=crafting] at @s run function salmoncannon:item/give
execute as @a[tag=crafting] run clear @s knowledge_book
execute as @a[tag=crafting] run tag @s remove crafting


