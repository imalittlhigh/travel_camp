##
 # collision.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

tag @s remove tcamp.player.has_sufficient_durability

#testing if tent hast enouth space to be placed and if not, thorwing error
#east
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.east] align xyz if predicate tcamp:collision/tents/small/east run function tcamp:place/tent/small/place/east
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.east] align xyz unless predicate tcamp:collision/tents/small/east run function tcamp:place/tent/small/check/error
#west
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.west] align xyz if predicate tcamp:collision/tents/small/west run function tcamp:place/tent/small/place/west
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.west] align xyz unless predicate tcamp:collision/tents/small/west run function tcamp:place/tent/small/check/error
#north
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.north] align xyz if predicate tcamp:collision/tents/small/north run function tcamp:place/tent/small/place/north
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.north] align xyz unless predicate tcamp:collision/tents/small/north run function tcamp:place/tent/small/check/error
#south
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.south] align xyz if predicate tcamp:collision/tents/small/south run function tcamp:place/tent/small/place/south
execute if entity @e[tag=tcamp.marker.hold_campinfo,distance=..1,sort=nearest,limit=1,tag=tcamp.marker.hold_campinfo.direction.south] align xyz unless predicate tcamp:collision/tents/small/south run function tcamp:place/tent/small/check/error