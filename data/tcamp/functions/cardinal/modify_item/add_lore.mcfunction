##
 # add_stored_lore.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

data remove entity @s Item.tag.display.Lore

#adds lore of data is stored in tags of contaieners
execute if data entity @s Item.tag.camp.containers.chests[0].[] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}
execute if data entity @s Item.tag.camp.containers.chests[0].[1] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}
execute if data entity @s Item.tag.camp.containers.chests[0].[2] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}
execute if data entity @s Item.tag.camp.containers.chests[0].[3] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}
execute if data entity @s Item.tag.camp.containers.chests[0].[4] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}
execute if data entity @s Item.tag.camp.containers.chests[0].[5] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}
execute if data entity @s Item.tag.camp.containers.chests[0].[6] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}
execute if data entity @s Item.tag.camp.containers.chests[0].[7] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}
execute if data entity @s Item.tag.camp.containers.chests[0].[8] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}
execute if data entity @s Item.tag.camp.containers.chests[0].[9] run data merge entity @s {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}


#add size of tent to item lore
#small
execute if data entity @s Item.tag.camp{size:"small"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","text":"Size: Small"}'


#add colour to item lore
#red
execute if data entity @s Item.tag.camp{colour:"minecraft:red_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#8B2020","text":"Red"}],"text":"Colour: "}'

