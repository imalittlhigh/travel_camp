##
 # get_direction.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say get_direction
execute as @s[tag=tcamp.marker.campinfo.east] run function tcamp:tent/modify/blocks/colour/size/small/east
execute as @s[tag=tcamp.marker.campinfo.west] run function tcamp:tent/modify/blocks/colour/size/small/west
execute as @s[tag=tcamp.marker.campinfo.north] run function tcamp:tent/modify/blocks/colour/size/small/north
execute as @s[tag=tcamp.marker.campinfo.south] run function tcamp:tent/modify/blocks/colour/size/small/south