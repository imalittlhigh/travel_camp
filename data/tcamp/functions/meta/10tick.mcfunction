##
 # 10tick.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

#remove preview after 60 secs, so it doesnt just clutter up stuff
#execute as @e[type=interaction,tag=tcamp.interaction.tent.setup,scores={tcamp.dummy=600..}] at @s run function tcamp:remove/preview/main
#display particles if only 10 secs left before removal
execute as @e[type=interaction,tag=tcamp.interaction.tent.setup,scores={tcamp.dummy=500..}] at @s run particle cloud ~ ~0.2 ~ 0.1 0.1 0.1 0.001 1 normal

#dismantle interaction and respwn options
execute as @e[tag=tcamp.interaction.tent.options.confirm,scores={tcamp.dummy=50..}] at @s align xyz run function tcamp:interactables/reset/confirmation/main


#add timer to previwe interaction
scoreboard players add @e[tag=tcamp.interaction.tent.setup,type=interaction] tcamp.dummy 5

#add timer to confirm dismantle interaction
scoreboard players add @e[tag=tcamp.interaction.tent.options.confirm] tcamp.dummy 5

schedule function tcamp:meta/10tick 10t replace