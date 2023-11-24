##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#remove blockdisplay
kill @e[tag=tcamp.blockdisplay.tent.confirm,limit=3,sort=nearest,distance=..1]
#remove interaction
execute positioned ~0.51 ~0.25 ~1.2 run kill @e[tag=tcamp.interaction.tent.options.confirm,limit=1,sort=nearest,distance=..1]