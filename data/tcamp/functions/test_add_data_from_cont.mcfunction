##
 # test_add_data_from_cont.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute as @e[type=item,limit=1,sort=nearest] at @s run data modify entity @s Item.tag.camp.containers.chests append from block ~ ~-1 ~ Items
execute as @e[type=item,limit=1,sort=nearest] run data modify entity @s Item.tag.camp.colour set value "minecraft:red_dye"
execute as @e[type=item,limit=1,sort=nearest] run data modify entity @s Item.tag.camp.size set value "small"
