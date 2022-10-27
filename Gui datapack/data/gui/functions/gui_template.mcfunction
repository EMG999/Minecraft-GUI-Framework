#This datapack ueses a lot of changeable ids when sompthing is refered to as "IdHere" put the id for the gui there
#
#Duplicate this mcfunction and replace template with the id
#
#You also have to add a refrence in get_items, gui_setup_runme, and general there are templates you can copy and edit
#just rember to remove the hashtags so the commands run

#Replace the slot with the slot you want leave the b
execute if entity @s[tag=gui] unless data block ~ ~ ~ Items[{Slot:0b}] run COMMAND_HERE

#navigate to another gui template (replace the slot for all with the id number of the gui)
execute if entity @s[tag=gui] unless data block ~ ~ ~ Items[{Slot:0b}] run tag @s remove gui
execute if entity @s[tag=gui] unless data block ~ ~ ~ Items[{Slot:0b}] run tag @s remove gui_IdHere
execute if entity @s[tag=gui] unless data block ~ ~ ~ Items[{Slot:0b}] run tag @s add gui_IdToGoToHere
execute if entity @s[tag=gui] unless data block ~ ~ ~ Items[{Slot:0b}] run tag @s add set

#copy items MUST BE AT END replace IdHere with the gui id
data modify block ~ ~ ~ Items set from entity @e[tag=gui_IdHere_s,limit=1] Items
