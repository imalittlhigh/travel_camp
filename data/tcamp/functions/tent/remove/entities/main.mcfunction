##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say main
#tent sizes and directions
#small
execute as @s[tag=tcamp.marker.campinfo.small,tag=tcamp.marker.campinfo.west] run function tcamp:tent/remove/entities/size/medium/west
execute as @s[tag=tcamp.marker.campinfo.small,tag=tcamp.marker.campinfo.east] run function tcamp:tent/remove/entities/size/medium/east
execute as @s[tag=tcamp.marker.campinfo.small,tag=tcamp.marker.campinfo.north] run function tcamp:tent/remove/entities/size/medium/north
execute as @s[tag=tcamp.marker.campinfo.small,tag=tcamp.marker.campinfo.south] run function tcamp:tent/remove/entities/size/medium/south

#medium
execute as @s[tag=tcamp.marker.campinfo.medium,tag=tcamp.marker.campinfo.west] run function tcamp:tent/remove/entities/size/medium/west
execute as @s[tag=tcamp.marker.campinfo.medium,tag=tcamp.marker.campinfo.east] run function tcamp:tent/remove/entities/size/medium/east
execute as @s[tag=tcamp.marker.campinfo.medium,tag=tcamp.marker.campinfo.north] run function tcamp:tent/remove/entities/size/medium/north
execute as @s[tag=tcamp.marker.campinfo.medium,tag=tcamp.marker.campinfo.south] run function tcamp:tent/remove/entities/size/medium/south
