##
 # collision.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

#testing if tent hast enougth space to be placed and if not, thorwing error
#east
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.east] align xyz if predicate tcamp:collision/tents/small/east run function tcamp:tent/spawn/tent/size/small/east
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.east] align xyz unless predicate tcamp:collision/tents/small/east positioned ~0.5 ~0.5 ~0.5 run function tcamp:cardinal/effects/tent/effects/failed_collision
#west
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.west] align xyz if predicate tcamp:collision/tents/small/west run function tcamp:tent/spawn/tent/size/small/west
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.west] align xyz unless predicate tcamp:collision/tents/small/west positioned ~0.5 ~0.5 ~0.5 run function tcamp:cardinal/effects/tent/effects/failed_collision
#north
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.north] align xyz if predicate tcamp:collision/tents/small/north run function tcamp:tent/spawn/tent/size/small/north
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.north] align xyz unless predicate tcamp:collision/tents/small/north positioned ~0.5 ~0.5 ~0.5 run function tcamp:cardinal/effects/tent/effects/failed_collision
#south
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.south] align xyz if predicate tcamp:collision/tents/small/south run function tcamp:tent/spawn/tent/size/small/south
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.south] align xyz unless predicate tcamp:collision/tents/small/south positioned ~0.5 ~0.5 ~0.5 run function tcamp:cardinal/effects/tent/effects/failed_collision