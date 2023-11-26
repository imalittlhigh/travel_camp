##
 # 40tick.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#check if tent is complete
execute as @e[tag=tcamp.marker.campinfo] at @s run function tcamp:tent/check/intact

schedule function tcamp:meta/40tick 40t replace