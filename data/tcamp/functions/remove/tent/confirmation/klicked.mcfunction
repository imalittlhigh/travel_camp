##
 # klicked.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
advancement revoke @s only tcamp:interaction/rmb_camp_confirm

execute if predicate tcamp:player/holding_axe as @e[tag=tcamp.interaction.tent.options.confirm,nbt={interaction:{}}] at @s run function tcamp:remove/tent/confirmation/main

execute unless predicate tcamp:player/holding_axe run say holding axe required
