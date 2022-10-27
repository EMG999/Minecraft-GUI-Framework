#summon minecart to base the gui items off of
execute at @s run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["gui_1_s"],CustomName:'{"text":"Example gui"}',Items:[{Slot:13b,id:"minecraft:firework_rocket",Count:1b,tag:{display:{Name:'{"text":"Click me!","italic":false}'}}}]}

#Exmaple template:
#execute at @s run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["gui_1_s"],CustomName:'{"text":"GuiNameHere"}'}
