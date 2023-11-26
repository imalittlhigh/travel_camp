##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute as @e[tag=tcamp.marker.hold_campinfo,distance=..1,limit=1,sort=nearest,nbt={data:{camp:{size:"small"}}}] at @s run function tcamp:tent/remove/preview/size/small
execute as @e[tag=tcamp.marker.hold_campinfo,distance=..1,limit=1,sort=nearest,nbt={data:{camp:{size:"medium"}}}] at @s run function tcamp:tent/remove/preview/size/medium
