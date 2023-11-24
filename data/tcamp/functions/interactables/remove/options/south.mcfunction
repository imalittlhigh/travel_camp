##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#removes blockdisplays
execute positioned ~ ~ ~ run kill @e[tag=tcamp.blockdisplay.tent.options,limit=3,sort=nearest,distance=..1]
#removes dye interactio
execute positioned ~1.15 ~0.3 ~0.275 run kill @e[tag=tcamp.interaction.tent.options.dye,limit=1,sort=nearest,distance=..1]
#removes itself
execute positioned ~1.2 ~0.25 ~0.725 run kill @e[tag=tcamp.interaction.tent.options.dismantle,limit=1,sort=nearest,distance=..1]