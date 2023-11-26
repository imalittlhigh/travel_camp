##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#spawn options and remove confirmation
#west
execute as @s[tag=tcamp.interaction.west] positioned ~ ~ ~-1 run function tcamp:interactables/spawn/options/west
execute as @s[tag=tcamp.interaction.west] positioned ~ ~ ~-1 run function tcamp:interactables/remove/confirmation/west
#east
execute as @s[tag=tcamp.interaction.east] positioned ~ ~ ~1 run function tcamp:interactables/spawn/options/east
execute as @s[tag=tcamp.interaction.east] positioned ~ ~ ~1 run function tcamp:interactables/remove/confirmation/east
#north
execute as @s[tag=tcamp.interaction.north] positioned ~1 ~ ~ run function tcamp:interactables/spawn/options/north
execute as @s[tag=tcamp.interaction.north] positioned ~1 ~ ~ run function tcamp:interactables/remove/confirmation/north
#south
execute as @s[tag=tcamp.interaction.south] positioned ~-1 ~ ~ run function tcamp:interactables/spawn/options/south
execute as @s[tag=tcamp.interaction.south] positioned ~-1 ~ ~ run function tcamp:interactables/remove/confirmation/south

function tcamp:cardinal/effects/sound/general_positive_block