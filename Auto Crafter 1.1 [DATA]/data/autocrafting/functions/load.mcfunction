forceload add 635421 635421 635421 635421
setblock 635421 0 635421 air
setblock 635421 1 635421 bedrock


#Create Scoreboards
scoreboard objectives add count dummy
scoreboard objectives add type dummy
scoreboard objectives add dummy dummy
scoreboard objectives add adder dummy
scoreboard objectives add count_in1 dummy
scoreboard objectives add count_in2 dummy
scoreboard objectives add count_in3 dummy
scoreboard objectives add count_in4 dummy
scoreboard objectives add count_in5 dummy
scoreboard objectives add count_in6 dummy
scoreboard objectives add count_in7 dummy
scoreboard objectives add count_in8 dummy
scoreboard objectives add count_in9 dummy
scoreboard objectives add gamerule dummy
scoreboard objectives add version dummy


#Debug
#scoreboard objectives setdisplay sidebar count

#Tellraw Message


tellraw @a ["",{"text":"[Autocrafter] ","color":"dark_green"},{"text":"Testing","color":"#EA7015"}]
#   tellraw @a ["",{"text":"[Autocrafter] ","color":"dark_green"},{"text":"All credits belong to Hasenzahn1","color":"#EA7015"}]
#   tellraw @a ["",{"text":"[Autocrafter]","color":"dark_green"},{"text":" For help click here","color":"#EA7015","clickEvent":{"action":"run_command","value":"/function autocrafting:help/help"}}]


#Updater

schedule function autocrafting:block/delete 10t