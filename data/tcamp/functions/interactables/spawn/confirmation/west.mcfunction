##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#spwan blockdisplay
summon block_display ~ ~ ~ {Tags:["tcamp.blockdisplay.tent.confirm","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],Passengers:[{Tags:["tcamp.blockdisplay.tent.confirm","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:item_display",item:{id:"minecraft:iron_axe",Count:1},item_display:"none",transformation:[0.3622f,0.0971f,0.0000f,0.6250f,-0.0971f,0.3622f,0.0000f,0.5000f,-0.0000f,-0.0000f,0.3750f,0.9844f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["tcamp.blockdisplay.tent.confirm","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:text_display",text:"{\"text\":\"✔\",\"color\":\"#14ab1c\",\"bold\":\"true\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[-1.2678f,0.3559f,-0.0000f,0.3750f,0.3397f,1.3281f,0.0000f,0.2500f,0.0000f,-0.0000f,-1.0000f,0.9844f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
#spawn interaction
summon interaction ~0.51 ~0.25 ~1.2 {NoGravity:1b,width:0.5f,height:0.5f,response:1b,Tags:["tcamp.interaction.tent.options.confirm","tcamp.interaction.tent.options","tcamp.interaction.tent","tcamp.interaction","tcamp","tcamp.interaction.west"]}
