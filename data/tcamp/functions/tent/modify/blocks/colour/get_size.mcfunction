##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#effects
function tcamp:cardinal/effects/tent/sound/success/dyed

#get direction dependant on size
execute if data entity @s data.camp{size:"small"} run function tcamp:tent/modify/blocks/colour/size/small/get_direction
execute if data entity @s data.camp{size:"medium"} run function tcamp:tent/modify/blocks/colour/size/medium/get_direction
execute if data entity @s data.camp{size:"large"} run function tcamp:tent/modify/blocks/colour/size/large/get_direction
execute if data entity @s data.camp{size:"enourmous"} run function tcamp:tent/modify/blocks/colour/size/enourmous/get_direction

