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
#medium
execute if data entity @s Item.tag.camp{size:"medium"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","text":"Size: Medium"}'
#large
execute if data entity @s Item.tag.camp{size:"large"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","text":"Size: Large"}'
#enormous
execute if data entity @s Item.tag.camp{size:"enormous"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","text":"Size: Enormous"}'


#add colour to item lore
#red
execute if data entity @s Item.tag.camp{colour:"minecraft:red_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#8B2020","text":"Red"}],"text":"Colour: "}'

#black
execute if data entity @s Item.tag.camp{colour:"minecraft:black_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#323232","text":"Black"}],"text":"Colour: "}'

#blue
execute if data entity @s Item.tag.camp{colour:"minecraft:blue_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#2B2D8C","text":"Blue"}],"text":"Colour: "}'

#brown
execute if data entity @s Item.tag.camp{colour:"minecraft:brown_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#5F3A1F","text":"Brown"}],"text":"Colour: "}'

#cyan
execute if data entity @s Item.tag.camp{colour:"minecraft:cyan_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#167787","text":"Cyan"}],"text":"Colour: "}'

#gray
execute if data entity @s Item.tag.camp{colour:"minecraft:gray_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#36393D","text":"Gray"}],"text":"Colour: "}'

#green
execute if data entity @s Item.tag.camp{colour:"minecraft:green_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#485A24","text":"Green"}],"text":"Colour: "}'

#light_blue
execute if data entity @s Item.tag.camp{colour:"minecraft:light_blue_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#2385C3","text":"Light Blue"}],"text":"Colour: "}'

#lime
execute if data entity @s Item.tag.camp{colour:"minecraft:lime_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#5DA618","text":"Lime"}],"text":"Colour: "}'

#magenta
execute if data entity @s Item.tag.camp{colour:"minecraft:magenta_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#A8309E","text":"Magenta"}],"text":"Colour: "}'

#orange
execute if data entity @s Item.tag.camp{colour:"minecraft:orange_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#DE6101","text":"Orange"}],"text":"Colour: "}'

#pink
execute if data entity @s Item.tag.camp{colour:"minecraft:pink_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#D3648D","text":"Pink"}],"text":"Colour: "}'

#purple
execute if data entity @s Item.tag.camp{colour:"minecraft:purple_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#64209B","text":"Purple"}],"text":"Colour: "}'

#white
execute if data entity @s Item.tag.camp{colour:"minecraft:white_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#CDD3D4","text":"White"}],"text":"Colour: "}'

#yellow
execute if data entity @s Item.tag.camp{colour:"minecraft:yellow_dye"} run data modify entity @s Item.tag.display.Lore append value '{"color":"gray","extra":[{"color":"#EFAE15","text":"Yellow"}],"text":"Colour: "}'

