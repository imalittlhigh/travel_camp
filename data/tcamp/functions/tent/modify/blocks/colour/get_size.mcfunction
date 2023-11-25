##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#effects
function tcamp:cardinal/effects/tent/sound/success/dyed
execute if data entity @s data.camp{size:"small"} run function tcamp:tent/modify/blocks/colour/size/small/get_direction
