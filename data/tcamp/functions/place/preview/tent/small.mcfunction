##
 # small.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#spawn interaction with pitch text
summon interaction ~ ~0.21 ~ {NoGravity:1b,width:0.45f,height:0.45f,response:1b,Tags:["tcamp.interaction.tent.setup.small","tcamp.interaction.tent.setup","tcamp.interaction.tent","tcamp.interaction","tcamp"]}
summon block_display ~-0.5 ~-0.15 ~-0.5 {Tags:["tcamp.blockdisplay.tent.setup.pitch","tcamp.blockdisplay.tent.setup","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],Passengers:[{Tags:["tcamp.blockdisplay.tent.setup.pitch","tcamp.blockdisplay.tent.setup","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:text_display",text:'{"text":"Pitch","color":"#FFFFFF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"font":"minecraft:uniform"}',text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[1.0000f,0.0000f,0.0000f,0.5000f,0.0000f,1.0000f,0.0000f,0.4375f,0.0000f,0.0000f,1.0000f,0.7500f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["tcamp.blockdisplay.tent.setup.pitch","tcamp.blockdisplay.tent.setup","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:text_display",text:'{"text":"Pitch","color":"#FFFFFF","bold":"false","italic":"false","underlined":"false","strikethrough":"false","font":"minecraft:uniform"}',text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[-1.0000f,0.0000f,0.0000f,0.5000f,0.0000f,1.0000f,0.0000f,0.4375f,-0.0000f,0.0000f,-1.0000f,0.2500f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["tcamp.blockdisplay.tent.setup.pitch","tcamp.blockdisplay.tent.setup","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:text_display",text:'{"text":"Pitch","color":"#FFFFFF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"font":"minecraft:uniform"}',text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[-0.0000f,0.0000f,-1.0000f,0.2500f,0.0000f,1.0000f,0.0000f,0.4375f,1.0000f,0.0000f,-0.0000f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["tcamp.blockdisplay.tent.setup.pitch","tcamp.blockdisplay.tent.setup","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"],id:"minecraft:text_display",text:'{"text":"Pitch","color":"#FFFFFF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"font":"minecraft:uniform"}',text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[0.0000f,0.0000f,1.0000f,0.7500f,0.0000f,1.0000f,0.0000f,0.4375f,-1.0000f,0.0000f,0.0000f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}

#save size from head to marker
tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.size.small
#test what type of camp item it is id[0] = type, id[1] = size, id[2] = colour
execute if block ~ ~ ~ #tcamp:heads{SkullOwner:{Id:[I;1,1,1,6],Name:"%tcamp.camp"}} run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.clour.red

#rotation
#north
execute if block ~ ~ ~ #tcamp:heads[rotation=0] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.north
execute if block ~ ~ ~ #tcamp:heads[rotation=1] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.north
execute if block ~ ~ ~ #tcamp:heads[rotation=2] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.north
execute if block ~ ~ ~ #tcamp:heads[rotation=15] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.north
#east
execute if block ~ ~ ~ #tcamp:heads[rotation=3] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.east
execute if block ~ ~ ~ #tcamp:heads[rotation=4] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.east
execute if block ~ ~ ~ #tcamp:heads[rotation=5] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.east
execute if block ~ ~ ~ #tcamp:heads[rotation=6] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.east
#south
execute if block ~ ~ ~ #tcamp:heads[rotation=7] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.south
execute if block ~ ~ ~ #tcamp:heads[rotation=8] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.south
execute if block ~ ~ ~ #tcamp:heads[rotation=9] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.south
execute if block ~ ~ ~ #tcamp:heads[rotation=10] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.south
#west
execute if block ~ ~ ~ #tcamp:heads[rotation=11] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.west
execute if block ~ ~ ~ #tcamp:heads[rotation=12] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.west
execute if block ~ ~ ~ #tcamp:heads[rotation=13] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.west
execute if block ~ ~ ~ #tcamp:heads[rotation=14] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.west


#remove head
setblock ~ ~ ~ air




#Tags:["tcamp.blockdisplay.tent.setup.pitch","tcamp.blockdisplay.tent.setup","tcamp.blockdisplay.tent","tcamp.blockdisplay","tcamp"]