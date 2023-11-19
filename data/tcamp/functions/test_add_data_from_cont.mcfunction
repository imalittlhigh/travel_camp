##
 # test_add_data_from_cont.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute as @e[type=item,limit=1,sort=nearest] at @s run data modify entity @s Item.tag.camp set from block ~ ~-1 ~ Items