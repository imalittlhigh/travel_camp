##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#as interaction, at player

#checking if axe is equiped, if calling durability check
tag @p add tcamp.interaction.marked
execute if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s positioned ~ ~-1 ~ as @p[limit=1,sort=nearest,tag=tcamp.interaction.marked] run function tcamp:cardinal/damage_tool/durability
tag @a remove tcamp.interaction.marked

#if player doesnt have enough dura, error
execute as @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe,tag=!tcamp.player.has_sufficient_durability] run say u dont have the dura on ur axe

#if player has enough durability on axe, run collision checks
##sizes
#small
execute if entity @p[limit=1,sort=nearest,distance=..1,tag=tcamp.player.has_sufficient_durability] at @s as @e[tag=tcamp.marker.size.small,distance=..1,limit=1,sort=nearest] at @s run function tcamp:tent/check/collision_small


#if player doenst have axe equiped, error
execute as @p[limit=1,sort=nearest,distance=..1,predicate=!tcamp:player/holding_axe] run say axe in main hand pls