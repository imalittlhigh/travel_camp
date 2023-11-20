##
 # 10tick.mcfunction
 # 
 #
 # Created by imalittlhigh.
##


execute as @e[type=interaction,tag=tcamp.interaction.tent.setup,scores={tcamp.dummy=600..}] at @s run function tcamp:remove/preview/main

execute as @e[type=interaction,tag=tcamp.interaction.tent.setup,scores={tcamp.dummy=500..}] at @s run particle cloud ~ ~0.2 ~ 0.1 0.1 0.1 0.001 1 normal


scoreboard players add @e[tag=tcamp.interaction.tent.setup,type=interaction] tcamp.dummy 5


schedule function tcamp:meta/10tick 10t replace