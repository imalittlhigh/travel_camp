##
 # crafter.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#removing item from mainhand
item replace entity @s[gamemode=!creative] weapon.mainhand with air
#spawning the structure of the crafter
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Camp Crafter"}'}
setblock ~ ~1 ~ polished_blackstone_button[face=floor]

#spawning interaction for the crafter
summon interaction ~ ~0.5 ~ {width:0.4f,height:0.15f,response:1b,Tags:["ccraft","ccraft.interaction","ccraft.interaction.table_button"]}
#spawning the displays for the crafter
summon block_display ~-0.5 ~0.5 ~-0.5 {Tags:["ccraft","ccraft.display","ccraft.display.table","ccraft.display.table.block"],Passengers:[{Tags:["ccraft","ccraft.display","ccraft.display.table","ccraft.display.table.block"],id:"minecraft:block_display",block_state:{Name:"minecraft:crafting_table",Properties:{}},transformation:[0.8750f,0.0000f,0.0000f,0.0625f,0.0000f,0.8750f,0.0000f,-0.9320f,0.0000f,0.0000f,0.0625f,-0.0140f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["ccraft","ccraft.display","ccraft.display.table","ccraft.display.table.block"],id:"minecraft:block_display",block_state:{Name:"minecraft:crafting_table",Properties:{}},transformation:[-0.8750f,0.0000f,-0.0000f,0.9375f,0.0000f,0.8750f,0.0000f,-0.9320f,0.0000f,0.0000f,-0.0625f,1.0138f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["ccraft","ccraft.display","ccraft.display.table","ccraft.display.table.block"],id:"minecraft:block_display",block_state:{Name:"minecraft:crafting_table",Properties:{}},transformation:[-0.0000f,0.0000f,-0.0625f,1.0111f,0.0000f,0.8750f,0.0000f,-0.9320f,0.8750f,0.0000f,-0.0000f,0.0625f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["ccraft","ccraft.display","ccraft.display.table","ccraft.display.table.block"],id:"minecraft:block_display",block_state:{Name:"minecraft:crafting_table",Properties:{}},transformation:[0.0000f,0.0000f,0.0625f,-0.0158f,0.0000f,0.8750f,0.0000f,-0.9320f,-0.8750f,0.0000f,0.0000f,0.9375f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["ccraft","ccraft.display","ccraft.display.table","ccraft.display.table.block"],id:"minecraft:block_display",block_state:{Name:"minecraft:crafting_table",Properties:{}},transformation:[0.8750f,0.0000f,0.0000f,0.0625f,0.0000f,0.0625f,0.0000f,-0.0487f,0.0000f,0.0000f,0.8750f,0.0625f,0.0000f,0.0000f,0.0000f,1.0000f]},{Tags:["ccraft","ccraft.display","ccraft.display.table","ccraft.display.table.block"],id:"minecraft:block_display",block_state:{Name:"minecraft:crafting_table",Properties:{}},transformation:[0.8750f,0.0000f,0.0000f,0.0625f,0.0000f,0.0625f,0.0000f,-1.0129f,0.0000f,0.0000f,0.8750f,0.0625f,0.0000f,0.0000f,0.0000f,1.0000f]}]}


