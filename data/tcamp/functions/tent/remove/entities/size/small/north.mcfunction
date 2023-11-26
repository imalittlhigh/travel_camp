##
 # north.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#remove bedroll
execute positioned ~0.5 ~ ~0.5 run function pbroll_camp:remove/roll/south


#remove repair display if there
execute at @s positioned ~ ~0.5 ~ run kill @e[tag=tcamp.blockdisplay.tent.repair,distance=..1,limit=3,sort=nearest]

#remove interaction confirmation
execute align xyz positioned ~ ~1 ~ run function tcamp:interactables/remove/confirmation/north
execute align xyz positioned ~ ~1 ~ run function tcamp:interactables/remove/options/north

execute run kill @s