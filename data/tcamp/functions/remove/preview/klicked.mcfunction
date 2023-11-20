##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

#remove advancement from player
advancement revoke @s only tcamp:interaction/lmb_camp_setup

#exectue removal from interacted interaction
execute as @e[tag=tcamp.interaction.tent.setup,nbt={attack:{}}] at @s run function tcamp:remove/preview/main