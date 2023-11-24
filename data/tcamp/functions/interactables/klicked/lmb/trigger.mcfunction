##
 # trigger.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
##at player, as interaction

#remove lmb klick data from interaction
data remove entity @s attack

#trigger correspoding functions depending on tag of the interacition
#remove tent preview
#small
execute as @s[tag=tcamp.interaction,tag=tcamp.interaction.tent.setup.small] at @s run function tcamp:tent/remove/preview/size/small