##
 # klicked.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
advancement revoke @s only tcamp:interaction/rmb_camp_dismantle

execute as @e[tag=tcamp.interaction.tent.options.dismantle,nbt={interaction:{}}] at @s run function tcamp:remove/tent/options/main
