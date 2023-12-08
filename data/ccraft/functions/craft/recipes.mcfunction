##
 # recipes.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

##Checks all recipes if they fit
#very important:
#   if you have recipes, that use the same slot with the same ingredient (here test and test2, both have cobble in slot 4) you need to set a priprity
#   it makes the most sense to set the proirity of more complex recipes over simpler, since you cant craft the complex ones if you do it the other way around
#   recipes that are further up in this file, have higher priority. You can notice that test2_recipe is higher than test_recipe
#   that means if both could be crafted, only the test2_recipe will be crafted, since that is the more copmlex one
#   you also notice that full_recipe is between the two test_recipes. this is because it also uses slot 4 filled with cobblestone, so it needs to have prio higher than test_recipe
#   or you could not craft it (THIS IS VERY IMPORTANT TO KEEP IN MIND)

#                    Predicate of crafting recipe                                                                function of crafting recipe
execute if predicate ccraft:recipes/base_tent unless data storage ccraft:crafting success run function ccraft:craft/recipes/base_tent

execute if predicate ccraft:recipes/small_tent unless data storage ccraft:crafting success run function ccraft:craft/recipes/small_tent

execute if predicate ccraft:recipes/medium_tent unless data storage ccraft:crafting success run function ccraft:craft/recipes/medium_tent

execute if predicate ccraft:recipes/large_tent unless data storage ccraft:crafting success run function ccraft:craft/recipes/large_tent



##Resets the storages and scores used in crafting
data remove storage ccraft:crafting success
data merge storage ccraft:crafting {count:[0b,0b,0b,0b,0b,0b,0b,0b,0b]}
scoreboard players reset %ccraft.count.0 ccraft_dummy
scoreboard players reset %ccraft.count.1 ccraft_dummy
scoreboard players reset %ccraft.count.2 ccraft_dummy
scoreboard players reset %ccraft.count.3 ccraft_dummy
scoreboard players reset %ccraft.count.4 ccraft_dummy
scoreboard players reset %ccraft.count.5 ccraft_dummy
scoreboard players reset %ccraft.count.6 ccraft_dummy
scoreboard players reset %ccraft.count.7 ccraft_dummy
scoreboard players reset %ccraft.count.8 ccraft_dummy

##Important note to predicates
#you can not inclue a count in the predicates!
#the pack will reduce the count and check if there are enough items in the recipes functions!