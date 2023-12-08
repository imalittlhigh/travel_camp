##
 # init.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
advancement revoke @s only ccraft:upgrader_used


#this score is to not run the cast forever (so limit how far it can travel)
scoreboard players set %ccraft.i tcamp.dummy 0

#this starts the cast at the players eyes and executes the cast loop
execute at @s anchored eyes positioned ^ ^ ^0.2 run function ccraft:structure/build/raycast/loop
