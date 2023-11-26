##
 # collision_medium.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#if predicate tcamp:collision/tents/medium/east
#testing if tent hast enougth space to be placed and if not, thorwing error
#east
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.east] align xyz run function tcamp:tent/spawn/tent/size/medium/east
#execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.east] align xyz unless predicate tcamp:collision/tents/medium/east positioned ~0.5 ~0.5 ~0.5 run function tcamp:cardinal/effects/tent/effects/failed_collision
#west
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.west] align xyz run function tcamp:tent/spawn/tent/size/medium/west
#execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.west] align xyz unless predicate tcamp:collision/tents/medium/west positioned ~0.5 ~0.5 ~0.5 run function tcamp:cardinal/effects/tent/effects/failed_collision
#north
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.north] align xyz run function tcamp:tent/spawn/tent/size/medium/north
#execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.north] align xyz unless predicate tcamp:collision/tents/medium/north positioned ~0.5 ~0.5 ~0.5 run function tcamp:cardinal/effects/tent/effects/failed_collision
#south
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.south] align xyz run function tcamp:tent/spawn/tent/size/medium/south
#execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.south] align xyz unless predicate tcamp:collision/tents/medium/south positioned ~0.5 ~0.5 ~0.5 run function tcamp:cardinal/effects/tent/effects/failed_collision