##
 # interacted.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#remove advancement
advancement revoke @s only tcamp:interactions/lmb
#run trigger function at interaction as player
execute at @s as @e[tag=tcamp.interaction,nbt={attack:{}}] run function tcamp:interactables/klicked/lmb/trigger