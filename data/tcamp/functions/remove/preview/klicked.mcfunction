##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##


advancement revoke @s only tcamp:interaction/lmb_camp_setup

execute as @e[tag=tcamp.interaction.tent.setup,nbt={attack:{}}] at @s run function tcamp:remove/preview/main