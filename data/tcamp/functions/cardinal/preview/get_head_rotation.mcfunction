##
 # get_head_rotation.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

#rotation
#north
execute if block ~ ~ ~ #tcamp:heads[rotation=0] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.south
execute if block ~ ~ ~ #tcamp:heads[rotation=1] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.south
execute if block ~ ~ ~ #tcamp:heads[rotation=2] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.south
execute if block ~ ~ ~ #tcamp:heads[rotation=15] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.south
#east
execute if block ~ ~ ~ #tcamp:heads[rotation=3] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.west
execute if block ~ ~ ~ #tcamp:heads[rotation=4] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.west
execute if block ~ ~ ~ #tcamp:heads[rotation=5] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.west
execute if block ~ ~ ~ #tcamp:heads[rotation=6] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.west
#south
execute if block ~ ~ ~ #tcamp:heads[rotation=7] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.north
execute if block ~ ~ ~ #tcamp:heads[rotation=8] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.north
execute if block ~ ~ ~ #tcamp:heads[rotation=9] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.north
execute if block ~ ~ ~ #tcamp:heads[rotation=10] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.north
#west
execute if block ~ ~ ~ #tcamp:heads[rotation=11] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.east
execute if block ~ ~ ~ #tcamp:heads[rotation=12] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.east
execute if block ~ ~ ~ #tcamp:heads[rotation=13] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.east
execute if block ~ ~ ~ #tcamp:heads[rotation=14] run tag @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1] add tcamp.marker.hold_campinfo.direction.east