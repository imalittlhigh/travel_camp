##
 # remove_display.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
tag @s remove tcamp.marker.campinfo.intact.displayed

#remove repair display
kill @e[tag=tcamp.blockdisplay.tent.repair,distance=..1,limit=3,sort=nearest]

#effects
execute positioned ~ ~0.5 ~ run function tcamp:cardinal/effects/tent/sound/success/repaired
execute positioned ~ ~0.5 ~ run function tcamp:cardinal/effects/tent/visual/success/repaired
