##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#spawning blockdisplays
summon block_display ~ ~ ~ {Tags:["tcamp.blockdisplay.tent.options","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],Passengers:[{Tags:["tcamp.blockdisplay.tent.options","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:item_display",item:{id:"minecraft:bundle",Count:1},transformation:[0.4375f,0.0000f,0.0000f,0.6563f,0.0000f,0.4375f,0.0000f,0.5000f,0.0000f,0.0000f,0.4375f,0.0156f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["tcamp.blockdisplay.tent.options","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:item_display",item:{id:"minecraft:brush",Count:1},transformation:[0.3125f,0.0000f,0.0000f,0.2188f,0.0000f,0.3750f,0.0000f,0.5000f,0.0000f,0.0000f,0.5000f,0.0156f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
#summon interaction for options
#dye change
#has direction tag
summon interaction ~0.2 ~0.3 ~-0.15 {NoGravity:1b,width:0.35f,height:0.37f,response:1b,Tags:["tcamp.interaction.tent.options.dye","tcamp.interaction.tent.options","tcamp.interaction.tent","tcamp.interaction","tcamp","tcamp.interaction.east"]}
#dismantling tent
#has direction tag
summon interaction ~0.65 ~0.25 ~-0.2 {NoGravity:1b,width:0.45f,height:0.45f,response:1b,Tags:["tcamp.interaction.tent.options.dismantle","tcamp.interaction.tent.options","tcamp.interaction.tent","tcamp.interaction","tcamp","tcamp.interaction.east"]}

#effects
execute positioned ~0.5 ~0.4 ~ run function tcamp:cardinal/effects/tent/visual/spawn_options