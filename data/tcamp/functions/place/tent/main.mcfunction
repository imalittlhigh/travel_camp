##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
advancement revoke @s only tcamp:interaction/rmb_camp_setup

say rmb

execute at @e[tag=tcamp.interaction.tent.setup,nbt={interaction:{}}] run function tcamp:place/tent/check/main