##
 # south.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say south

#fill according to colour data saved in marker
#red
execute if data entity @s data.camp{colour:"minecraft:red_dye"} run fill ~1 ~ ~-1 ~1 ~1 ~1 red_wool replace white_wool
execute if data entity @s data.camp{colour:"minecraft:red_dye"} run fill ~1 ~ ~-1 ~1 ~1 ~1 red_concrete replace white_concrete
execute if data entity @s data.camp{colour:"minecraft:red_dye"} run fill ~1 ~ ~-1 ~1 ~1 ~1 red_concrete_powder replace white_concrete_powder

execute if data entity @s data.camp{colour:"minecraft:red_dye"} run fill ~ ~2 ~-1 ~-1 ~2 ~1 red_wool replace white_wool
execute if data entity @s data.camp{colour:"minecraft:red_dye"} run fill ~ ~2 ~-1 ~-1 ~2 ~1 red_concrete replace white_concrete
execute if data entity @s data.camp{colour:"minecraft:red_dye"} run fill ~ ~2 ~-1 ~-1 ~2 ~1 red_concrete_powder replace white_concrete_powder

