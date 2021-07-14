forceload add 635421 635421 635421 635421
setblock 635421 0 635421 air
setblock 635421 1 635421 bedrock


#Create Scoreboards
scoreboard objectives add bucket dummy
scoreboard objectives add one dummy
scoreboard players set one one 1


#Debug
#scoreboard objectives setdisplay sidebar count

#Tellraw Message


tellraw @a ["",{"text":"[Lava Collector] ","color":"dark_green"},{"text":"The Flames Have Started","color":"#EA7015"}]
#   tellraw @a ["",{"text":"[Autocrafter] ","color":"dark_green"},{"text":"All credits belong to Hasenzahn1","color":"#EA7015"}]
#   tellraw @a ["",{"text":"[Autocrafter]","color":"dark_green"},{"text":" For help click here","color":"#EA7015","clickEvent":{"action":"run_command","value":"/function autocrafting:help/help"}}]


#Updater

schedule function lavacollector:lava/detect 10t