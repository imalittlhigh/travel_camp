##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#spawning blockdisplays
summon block_display ~ ~ ~ {Tags:["tcamp.blockdisplay.tent.options","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],Passengers:[{Tags:["tcamp.blockdisplay.tent.options","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:item_display",item:{id:"minecraft:bundle",Count:1},item_display:"none",transformation:[-0.4375f,0.0000f,-0.0000f,0.3438f,0.0000f,0.4375f,0.0000f,0.5000f,0.0000f,0.0000f,-0.4375f,0.9844f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["tcamp.blockdisplay.tent.options","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:item_display",item:{id:"minecraft:brush",Count:1},item_display:"none",transformation:[-0.3125f,0.0000f,-0.0000f,0.7813f,0.0000f,0.3750f,0.0000f,0.5000f,0.0000f,0.0000f,-0.5000f,0.9844f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
#summon interaction for options
#dye change
#has direction tag
summon interaction ~0.8 ~0.3 ~1.15 {NoGravity:1b,width:0.35f,height:0.37f,response:1b,Tags:["tcamp.interaction.tent.options.dye","tcamp.interaction.tent.options","tcamp.interaction.tent","tcamp.interaction","tcamp","tcamp.interaction.west"]}
#dismantling tent
#has direction tag
summon interaction ~0.35 ~0.25 ~1.15 {NoGravity:1b,width:0.45f,height:0.45f,response:1b,Tags:["tcamp.interaction.tent.options.dismantle","tcamp.interaction.tent.options","tcamp.interaction.tent","tcamp.interaction","tcamp","tcamp.interaction.west"]}
