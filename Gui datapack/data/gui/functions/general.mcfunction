#Remove if no chest
execute as @e[type=minecraft:marker,tag=gui] at @s unless block ~ ~ ~ chest run kill @s

#Set chest and remove tag
execute as @e[type=minecraft:marker,tag=set] at @s run setblock ~ ~ ~ chest

#Kill and clear items
kill @e[type=item,nbt={Item:{tag:{kill:1b}}}]
clear @e[type=minecraft:player] #gui:kill{kill:1b}

#GUI check
execute as @e[type=minecraft:marker,tag=gui_1] at @s run function gui:gui_1
#template
#execute as @e[type=minecraft:marker,tag=gui_1] at @s run function gui:gui_IdHere

#tag items
execute at @e[type=minecraft:marker,tag=gui] run data modify block ~ ~ ~ Items[].tag.kill set value 1b

#remove and swap tags
execute as @e[type=minecraft:marker,tag=set] run tag @s add gui
execute as @e[type=minecraft:marker,tag=set] run tag @s remove set

#Looper
schedule function gui:general 1t
