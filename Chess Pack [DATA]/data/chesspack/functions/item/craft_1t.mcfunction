
#Reset
execute as @a[tag=crafting] run advancement revoke @s only chesspack:chess
execute as @a[tag=crafting] run recipe take @s chesspack:chessb


execute as @a[tag=crafting] at @s run function chesspack:item/give
execute as @a[tag=crafting] run clear @s knowledge_book
execute as @a[tag=crafting] run tag @s remove crafting


