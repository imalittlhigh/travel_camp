##
 # test_recipe.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

say small

##Storing number of items in slot
#                     Slot number 0-8 V                                Slot number 0-8 V     NEEDS TO BE THE SAME SLOT
execute store result score %ccraft.count.0 ccraft_dummy run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store result score %ccraft.count.1 ccraft_dummy run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score %ccraft.count.2 ccraft_dummy run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result score %ccraft.count.3 ccraft_dummy run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result score %ccraft.count.4 ccraft_dummy run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result score %ccraft.count.5 ccraft_dummy run data get block ~ ~ ~ Items[{Slot:5b}].Count
execute store result score %ccraft.count.6 ccraft_dummy run data get block ~ ~ ~ Items[{Slot:6b}].Count
execute store result score %ccraft.count.7 ccraft_dummy run data get block ~ ~ ~ Items[{Slot:7b}].Count
execute store result score %ccraft.count.8 ccraft_dummy run data get block ~ ~ ~ Items[{Slot:8b}].Count


##If items are correct number, give recipe and set craftingsuccess to true
#you need to check for every slot that is used in your recipe here, thats why there are 9 if scores
#           Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V
execute if score %ccraft.count.0 ccraft_dummy matches 2.. if score %ccraft.count.1 ccraft_dummy matches 1.. if score %ccraft.count.2 ccraft_dummy matches 2.. if score %ccraft.count.3 ccraft_dummy matches 1.. if score %ccraft.count.4 ccraft_dummy matches 1.. if score %ccraft.count.5 ccraft_dummy matches 1.. if score %ccraft.count.6 ccraft_dummy matches 4.. if score %ccraft.count.7 ccraft_dummy matches 1.. if score %ccraft.count.8 ccraft_dummy matches 4.. run data modify storage ccraft:crafting success set value true
execute if data storage ccraft:crafting {success:true} run loot spawn ~ ~1 ~ loot tcamp:heads/tents/small/blank

##Remove number of items that should be used for crafting per slot
#                    Slot number 0-8 V           V number of items needed for caraft
scoreboard players remove %ccraft.count.0 ccraft_dummy 2
scoreboard players remove %ccraft.count.1 ccraft_dummy 1
scoreboard players remove %ccraft.count.2 ccraft_dummy 2
scoreboard players remove %ccraft.count.3 ccraft_dummy 1
scoreboard players remove %ccraft.count.4 ccraft_dummy 1
scoreboard players remove %ccraft.count.5 ccraft_dummy 1
scoreboard players remove %ccraft.count.6 ccraft_dummy 4
scoreboard players remove %ccraft.count.7 ccraft_dummy 1
scoreboard players remove %ccraft.count.8 ccraft_dummy 4


##Store reduced number of items in storage from score
#                               Slot number 0-8 V                               Slot number 0-8 V     NEEDS TO BE THE SAME SLOT
execute store result storage ccraft:crafting count[0] byte 1 run scoreboard players get %ccraft.count.0 ccraft_dummy
execute store result storage ccraft:crafting count[1] byte 1 run scoreboard players get %ccraft.count.1 ccraft_dummy
execute store result storage ccraft:crafting count[2] byte 1 run scoreboard players get %ccraft.count.2 ccraft_dummy
execute store result storage ccraft:crafting count[3] byte 1 run scoreboard players get %ccraft.count.3 ccraft_dummy
execute store result storage ccraft:crafting count[4] byte 1 run scoreboard players get %ccraft.count.4 ccraft_dummy
execute store result storage ccraft:crafting count[5] byte 1 run scoreboard players get %ccraft.count.5 ccraft_dummy
execute store result storage ccraft:crafting count[6] byte 1 run scoreboard players get %ccraft.count.6 ccraft_dummy
execute store result storage ccraft:crafting count[7] byte 1 run scoreboard players get %ccraft.count.7 ccraft_dummy
execute store result storage ccraft:crafting count[8] byte 1 run scoreboard players get %ccraft.count.8 ccraft_dummy


##if crafted, reduce item count in dropper by using the modified stroage
#                                                                    Slot number 0-8 V                              Slot number 0-8 V     NEEDS TO BE THE SAME SLOT
execute if data storage ccraft:crafting success run data modify block ~ ~ ~ Items[{Slot:0b}].Count set from storage ccraft:crafting count[0]
execute if data storage ccraft:crafting success run data modify block ~ ~ ~ Items[{Slot:1b}].Count set from storage ccraft:crafting count[1]
execute if data storage ccraft:crafting success run data modify block ~ ~ ~ Items[{Slot:2b}].Count set from storage ccraft:crafting count[2]
execute if data storage ccraft:crafting success run data modify block ~ ~ ~ Items[{Slot:3b}].Count set from storage ccraft:crafting count[3]
execute if data storage ccraft:crafting success run data modify block ~ ~ ~ Items[{Slot:4b}].Count set from storage ccraft:crafting count[4]
execute if data storage ccraft:crafting success run data modify block ~ ~ ~ Items[{Slot:5b}].Count set from storage ccraft:crafting count[5]
execute if data storage ccraft:crafting success run data modify block ~ ~ ~ Items[{Slot:6b}].Count set from storage ccraft:crafting count[6]
execute if data storage ccraft:crafting success run data modify block ~ ~ ~ Items[{Slot:7b}].Count set from storage ccraft:crafting count[7]
execute if data storage ccraft:crafting success run data modify block ~ ~ ~ Items[{Slot:8b}].Count set from storage ccraft:crafting count[8]


##display particle if crafting was successful
execute if data storage ccraft:crafting success positioned ~ ~1.2 ~ run particle cloud ~ ~ ~ 0 0 0 0 1