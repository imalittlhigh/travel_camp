##
 # loop.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#this adds one to the distance
scoreboard players add %ccraft.i tcamp.dummy 1

#tests if the block the function is on rn is a head, if it is runns the next functon aligned to the block xyz (so if im looking at a corner it wont execute there, but always in the same spot on the block)
execute positioned ^ ^ ^ if block ~ ~ ~ crafting_table align xyz positioned ~0.5 ~0.5 ~0.5 run function ccraft:structure/build/raycast/hit


#executes if the distance isnt over 100 (10 blocks)                                   moves the cast 0.2 in the direction the player is looking and reexecutes this function
execute unless score %ccraft.i tcamp.dummy matches 60.. positioned ^ ^ ^0.2 run function ccraft:structure/build/raycast/loop
