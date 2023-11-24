##
 # interacted.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#remove advancement
advancement revoke @s only tcamp:interactions/rmb
#run trigger function at interaction as player
execute at @s as @e[tag=tcamp.interaction,nbt={interaction:{}}] run function tcamp:interactables/klicked/rmb/trigger