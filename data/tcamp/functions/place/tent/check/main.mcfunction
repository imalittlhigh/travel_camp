##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#as player, at interaction
#removing interaction data from the interaction
data remove entity @e[tag=tcamp.interaction.tent.setup,nbt={interaction:{}},limit=1,sort=nearest] interaction

#checking if axe is equiped, if calling durability check
execute if predicate tcamp:player/holding_axe run function tcamp:place/tent/check/durability

#if player doesnt have enough dura, error
execute as @s[tag=!tcamp.player.has_sufficient_durability] if predicate tcamp:player/holding_axe run say u dont have the dura on ur axe
#if player has enough durability on axe, run collision checks
##sizes
#small
execute as @s[tag=tcamp.player.has_sufficient_durability] if entity @e[tag=tcamp.marker.size.small,distance=..1,sort=nearest,limit=1] run function tcamp:place/tent/small/check/collision


#if player doenst have axe equiped, error
execute unless predicate tcamp:player/holding_axe run say axe in main hand pls
