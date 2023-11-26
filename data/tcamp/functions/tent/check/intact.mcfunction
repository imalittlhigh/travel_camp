##
 # intact.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#check if tent blocks correct
#remove intact tag
tag @s remove tcamp.marker.campinfo.intact
#small
#east
execute as @s[tag=tcamp.marker.campinfo.small,tag=tcamp.marker.campinfo.east] if predicate tcamp:intact/tents/small/east run tag @s add tcamp.marker.campinfo.intact
#west
execute as @s[tag=tcamp.marker.campinfo.small,tag=tcamp.marker.campinfo.west] if predicate tcamp:intact/tents/small/west run tag @s add tcamp.marker.campinfo.intact
#north
execute as @s[tag=tcamp.marker.campinfo.small,tag=tcamp.marker.campinfo.north] if predicate tcamp:intact/tents/small/north run tag @s add tcamp.marker.campinfo.intact
#south
execute as @s[tag=tcamp.marker.campinfo.small,tag=tcamp.marker.campinfo.south] if predicate tcamp:intact/tents/small/south run tag @s add tcamp.marker.campinfo.intact

