#check for slot 0 to be empty and say hi
execute if entity @s[tag=gui] unless data block ~ ~ ~ Items[{Slot:13b}] run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;16711680],FadeColors:[I;16711680]}]}}}}

#copy items MUST BE AT END
data modify block ~ ~ ~ Items set from entity @e[tag=gui_1_s,limit=1] Items
